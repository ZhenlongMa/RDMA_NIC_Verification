//CREATE INFORMATION
//--------------------------------------------------------------------------------------
//
//  (C) COPYRIGHT 2021 BY ICT-HPC CORPORATION ALL RIGHTS RESERVED
//  DATE     : 2021-04-08
//  AUTHOR   : mazhenlong@ncic.ac.cn
//  FILENAME : hca_scoreboard.sv
//  FUNCTION : This file supplies the scoreboard of verification.
//
//--------------------------------------------------------------------------------------

//CHANGE HISTORY
//--------------------------------------------------------------------------------------
//
//  AUTHOR          DATE          VERSION          REASON
//  mazhenlong      2021-04-08    v1.0             create
//
//--------------------------------------------------------------------------------------

`ifndef __HCA_SCOREBOARD__
`define __HCA_SCOREBOARD__

//------------------------------------------------------------------------------
//
// CLASS: hca_scoreboard
//
//------------------------------------------------------------------------------
class hca_scoreboard extends uvm_scoreboard;
    hca_pcie_item duv_fifo_item[];
    hca_pcie_item rm_fifo_item[];
    uvm_tlm_analysis_fifo #(hca_pcie_item, hca_scoreboard) rm_fifo[];
    uvm_tlm_analysis_fifo #(hca_pcie_item, hca_scoreboard) duv_fifo[];
    uvm_comparer item_comparer;
    hca_memory mem[];
    hca_queue_list q_list;
    hca_check_mem_list check_mem_list;
    int host_num = 1;
    int db_num;
    hca_fifo #(.width(256)) src_data_fifo;
    hca_fifo #(.width(256)) dst_data_fifo;
    mailbox glb_stop_mbx;
    string start_time;
    string end_time;
    `uvm_component_utils_begin(hca_scoreboard)
    `uvm_component_utils_end

    //------------------------------------------------------------------------------
    // function name : new 
    // function      : constructor 
    // invoked       : invoked when instantiates the class
    //------------------------------------------------------------------------------
    function new(string name, uvm_component parent);
        super.new(name, parent);
        start_time = get_sys_time();
        if (!$value$plusargs("HOST_NUM=%d", host_num)) begin
            `uvm_fatal("PARAM_ERROR", "host num not get!");
        end
        if (host_num > `MAX_HOST_NUM) begin
            `uvm_fatal("PARAM_ERROR", "host num maximum exceeded!");
        end
        if (!$value$plusargs("DB_NUM=%d", db_num)) begin
            `uvm_fatal("PARAM_ERROR", "doorbell num not get!");
        end
        if (db_num > `MAX_DB_NUM) begin
            `uvm_fatal("PARAM_ERROR", "doorbell num maximum exceeded!");
        end
    endfunction: new

    //------------------------------------------------------------------------------
    // function name : build_phase
    // function      : build phase in uvm library, instantiates the two imps
    // invoked       : be invoked by uvm automaticly
    //------------------------------------------------------------------------------
    function void build_phase(uvm_phase phase);
        string array_element;
        
        super.build_phase(phase);
        
        // instantiate duv_fifo
        duv_fifo = new[host_num];
        for (int i = 0; i < host_num; i++) begin
            $sformat(array_element, "duv_fifo[%0d]", i);
            duv_fifo[i] = new(array_element, this);
        end

        // instantiate duv_fifo_item
        duv_fifo_item = new[host_num];
        for (int i = 0; i < host_num; i++) begin
            $sformat(array_element, "duv_fifo_item[%0d]", i);
            duv_fifo_item[i] = hca_pcie_item::type_id::create(array_element, this);
        end

        // instantiate rm_fifo
        rm_fifo = new[host_num];
        for (int i = 0; i < host_num; i++) begin
            $sformat(array_element, "rm_fifo[%0d]", i);
            rm_fifo[i] = new(array_element, this);
        end

        // instantiate rm_fifo_item
        rm_fifo_item = new[host_num];
        for (int i = 0; i < host_num; i++) begin
            $sformat(array_element, "rm_fifo_item[%0d]", i);
            rm_fifo_item[i] = hca_pcie_item::type_id::create(array_element, this);
        end

        mem = new[host_num];

        if (!uvm_config_db#(hca_queue_list)::get(this, "", "q_list", q_list)) begin
            `uvm_fatal("NOQLIST", {"queue list must be set for: ",get_full_name(),".q_list"});
        end

        if (!uvm_config_db#(hca_check_mem_list)::get(this, "", "check_list", check_mem_list)) begin
            `uvm_fatal("NOQLIST", {"check list must be set for: ",get_full_name(),".check_mem_list"});
        end

        if(!uvm_config_db#(mailbox)::get(null, get_full_name(), "glb_stop_mbx", glb_stop_mbx)) begin
            `uvm_fatal("NO_MBX", "mailbox not get in scoreboard!");
        end
        
        // src_data_fifo = hca_fifo#(.width(256))::type_id::create("src_data_fifo");
        // dst_data_fifo = hca_fifo#(.width(256))::type_id::create("dst_data_fifo");

        // instantiate comparer
        item_comparer = new();
    endfunction: build_phase

    //------------------------------------------------------------------------------
    // task name     : run_phase
    // function      : run phase in uvm library
    // invoked       : be invoked by uvm automaticly
    //------------------------------------------------------------------------------
    virtual task run_phase(uvm_phase phase);
        bit check_rm_duv_result = 0;
        phase.raise_objection(this);
        super.run_phase(phase);
        for (int db_id = 0; db_id < db_num; db_id++) begin
            for (int i = 0; i < host_num; i++) begin
                fork
                    automatic int j = i;
                    begin
                        `uvm_info("NOTICE", "main part of run_phase in scb begin!", UVM_LOW);
                        while (1) begin
                            duv_fifo[j].get(duv_fifo_item[j]);
                            `uvm_info("CQE_NOTICE", $sformatf("CQE got by scb! host_id: %h", j), UVM_LOW);
                            check_cqe(duv_fifo_item[j], j);
                            q_list.cq_list[j][0].cqe_list.pop_front();
                            `uvm_info("CQE_NOTICE", $sformatf("ref CQE got by scb! host_id: %h", j), UVM_LOW);
                            `uvm_info("CQE_NOTICE", $sformatf("ref cqe remaining: %0d! host_id: %h", q_list.cq_list[j][0].cqe_list.size(), j), UVM_LOW);
                            if (q_list.cq_list[j][0].cqe_list.size() == 0) begin
                                `uvm_info("GLB_STOP_INFO", "global stop launched by scoreboard!", UVM_LOW);
                                break;
                            end
                        end
                        // break;
                    end
                join_none
            end
            wait fork;
            set_global_stop();
            judge();
            `uvm_info("GLB_STOP_INFO", $sformatf("batch finished! db_id: %h", db_id), UVM_LOW);
        end
        `uvm_info("GLB_STOP_INFO", $sformatf("verification finished!"), UVM_LOW);
        // end_time = get_sys_time();
        phase.drop_objection(this);
    endtask: run_phase

    function void pre_abort();
        `uvm_info("NOTICE", "SOCREBOARD!!", UVM_LOW);
        super.pre_abort;
    endfunction: pre_abort

    //------------------------------------------------------------------------------
    // task name     : check_rm_duv
    // function      : check pcie items fro DUV and ref model
    // invoked       : by run_phase
    //------------------------------------------------------------------------------
    task check_rm_duv(int id);
        bool check_result;
        check_result = rm_fifo_item[id].compare(duv_fifo_item[id], item_comparer);
        if (check_result == FALSE) begin
            `uvm_fatal(get_type_name(), $sformatf("Check in error in PORT %0d!!!\n rm_fifo_item.rq_addr: %h, duv_fifo_item.rq_addr: %h", 
                                                  id, rm_fifo_item[id].rq_addr, duv_fifo_item[id].rq_addr));
        end
        else begin
            `uvm_info("CHECK_INFO", "DUV RM match!", UVM_LOW);
        end
    endtask: check_rm_duv

    task judge();
        for (int i = 0; i < host_num; i++) begin
            int total_data_amount = 0;
            while (check_mem_list.check_list[i].size() != 0) begin
                check_mem_unit check_unit;
                check_unit = check_mem_list.check_list[i].pop_front();
                if (check_mem(check_unit.src_host, check_unit.src_addr, check_unit.dst_host, check_unit.dst_addr, check_unit.length) == 0) begin
                    `uvm_fatal("CHECK_MEM_ERROR", $sformatf("source: %h, destination: %h, length: %d", check_unit.src_addr, check_unit.dst_addr, check_unit.length));
                end
                else begin
                    total_data_amount += check_unit.length;
                end
            end
            `uvm_info("CHECK_INFO", $sformatf("check complete, host[%0d] data count: %0d", i, total_data_amount), UVM_LOW);
        end
    endtask: judge

    function bit check_mem(int src_host_id, addr src_addr, int dst_host_id, addr dst_addr, int length);
        bit [255:0] src_data;
        bit [255:0] dst_data;
        int fifo_width = 32;
        int offset = 0;
        src_data_fifo = mem[src_host_id].read_block(src_addr, length);
        dst_data_fifo = mem[dst_host_id].read_block(dst_addr, length);
        while (src_data_fifo.get_depth() != 0) begin
            src_data = src_data_fifo.pop();
            dst_data = dst_data_fifo.pop();
            `uvm_info("CHECK_INFO", $sformatf("src_host_id: %h, src_addr: %h, src_data: %h, dst_host_id: %h, dst_addr: %h, dst_data: %h ", 
                src_host_id, src_addr + offset, src_data, dst_host_id, dst_addr + offset, dst_data), UVM_LOW);
            offset = offset + fifo_width;
            if (src_data != dst_data) begin
                return 0;
            end
            else begin
                `uvm_info("CHECK_INFO", "check correct!", UVM_LOW);
            end
        end
        return 1;
    endfunction: check_mem

    task set_global_stop();
        glb_stop_mbx.put(1);
        `uvm_info("GLB_STOP_INFO", "global stop signal set by scoreboard!", UVM_LOW);
    endtask: set_global_stop

    function bit check_cqe(hca_pcie_item cqe_item, int host_id);
        cqe cqe;
        bit [255:0] temp_data;
        temp_data       = cqe_item.data_payload.pop_front();
        cqe.my_qpn      = temp_data[31:0];
        cqe.syndrome    = temp_data[135:128];
        cqe.vender_err  = temp_data[143:136];
        cqe.db_cnt      = temp_data[159:144];
        cqe.wqe         = temp_data[223:192];
        cqe.opcode      = temp_data[231:224];
        cqe.owner       = temp_data[255:248];
        if (cqe.opcode == 8'hff) begin
            `uvm_fatal("CQE_ERR", $sformatf("CQE error! host_id: %h, QP number: %h, syndrome: %h", host_id, cqe.my_qpn, cqe.syndrome));
        end
    endfunction: check_cqe

    function string get_sys_time();
        string sys_time;
        int fp;
        $system("date +%Y-%m-%d' '%H:%M:%S > sys_time");
        fp = $fopen("sys_time", "r");
        $fgets(sys_time, fp);
        $fclose(fp);
        $system("rm sys_time");
        return sys_time;
    endfunction: get_sys_time
endclass: hca_scoreboard
`endif 