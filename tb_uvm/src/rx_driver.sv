`timescale 1ns/1ps

`ifndef RX_DRIVER__SV
`define RX_DRIVER__SV
class rx_driver extends uvm_driver#(Descriptor);
  typedef rx_driver this_type;
  virtual nic_interface nic_if;

  Ring_Manager ring_m;

  Descriptor mon_descs[$];

  `uvm_component_utils(rx_driver)

  function new(string name = "rx_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual nic_interface)::get(this, "", "nic_if", nic_if))
      `uvm_fatal("rx_driver", "virtual interface must be set for nic_if!!!")
    if(!uvm_config_db#(Ring_Manager)::get(this, "", "ring_m", ring_m))
      `uvm_fatal("rx_driver", "ring_m must be set for ring_m!!!")
  endfunction

  extern task main_phase(uvm_phase phase);
  extern task send_frame(int send_index);
  extern task init_csr();
  extern task init_queue();
  extern task init_msix();
  extern task wait_desc_dma(int desc_index);
  extern task wait_frame_dma(int frame_index);
  extern task wait_cpl_dma(int cpl_index);
  extern task wait_msix_dma(int msix_index);
  extern task wait_roce_rec(int roce_index);
endclass

task rx_driver::main_phase(uvm_phase phase);
  int send_index = 0;
  int desc_index = 0;
  int frame_index = 0;
  int cpl_index   = 0;
  int msix_index   = 0;
  int roce_index   = 0;
  int finish_index = 0;
  int print_index  = 0;
  Descriptor temp_desc;
  string compare_msg;
  int send_time;
  while(!nic_if.rst_n)
    @(posedge nic_if.clk);

  if(`INITIAL_QUEUE) begin
    init_msix();
    init_queue();
    init_csr();
  end

  for(int i = 0; i < ring_m.rx_ring.descs.size(); i = i + 1) begin
    temp_desc = new;
    temp_desc.packet_data = {};
    temp_desc.ring_type = ring_m.rx_ring.descs[i].ring_type;
    temp_desc.pkt_type = ring_m.rx_ring.descs[i].pkt_type;
    temp_desc.desc_type = MON_TYPE;
    mon_descs.push_back(temp_desc);
  end
  
  fork 
    forever begin
      seq_item_port.get_next_item(req);
      send_frame(send_index);
      send_time = $random() % 100;
      if(`PRINT_DETAIL) 
        `uvm_info(get_name(), $sformatf("send_index:%d", send_index), UVM_LOW);      
      send_index = send_index + 1;
      while(send_index == `DESC_NUM  && print_index != send_index) 
        @(posedge nic_if.clk);
      repeat(send_time) @(posedge nic_if.clk);
      seq_item_port.item_done();
    end

    `phase_test(wait_desc_dma,  desc_index,   ring_m.rx_ring.descs[desc_index].ring_type,   MAC_RX_TYPE, print_index);
    `phase_test(wait_frame_dma, frame_index,  ring_m.rx_ring.descs[frame_index].ring_type,  MAC_RX_TYPE, print_index);
    `phase_test(wait_cpl_dma,   cpl_index,    ring_m.rx_ring.descs[cpl_index].ring_type,    MAC_RX_TYPE, print_index);
    `phase_test(wait_msix_dma,  msix_index,   ring_m.rx_ring.descs[msix_index].ring_type,   MAC_RX_TYPE, print_index);
    `phase_test(wait_roce_rec,  roce_index,   ring_m.rx_ring.descs[roce_index].ring_type,   ROCE_RX_TYPE, print_index);
  
    forever begin
      @ (posedge nic_if.clk);
      if(finish_index < send_index && finish_index < desc_index 
          && finish_index < frame_index && finish_index < cpl_index 
          && finish_index < msix_index && finish_index < roce_index) begin        
        finish_index = finish_index + 1;
      end

      if(print_index < finish_index) begin
        `PRINT_STEP(print_index);
          
        mon_descs[print_index].index_in_block = print_index;
        if(!(`TEST_EMPTY_QUEUE && ring_m.rx_ring.descs[print_index].ring_index == 31) &&
            !(`TEST_CSUM_ERROR && ring_m.rx_ring.descs[print_index].desc_status == CHECKSUM_ERROR)) begin
          if(!ring_m.rx_ring.descs[print_index].compare(mon_descs[print_index], compare_msg)) begin
            `uvm_info(get_name(), $sformatf("\n\n-----------------error--------------\n%s\n", compare_msg), UVM_LOW);
            `uvm_info(get_name(), {$sformatf("src:%d\n", print_index), ring_m.rx_ring.descs[print_index].print_item()}, UVM_LOW);
            `uvm_info(get_name(), {$sformatf("mon:%d\n", print_index), mon_descs[print_index].print_item()}, UVM_LOW);
          end else if(`PRINT_COMPARE_PKTDATA)  begin
            `uvm_info(get_name(), {$sformatf("src:%d\n", print_index), ring_m.rx_ring.descs[print_index].print_item()}, UVM_LOW);
            `uvm_info(get_name(), {$sformatf("mon:%d\n", print_index), mon_descs[print_index].print_item()}, UVM_LOW);
          end
        end else  if(`PRINT_COMPARE_PKTDATA)  begin
            `uvm_info(get_name(), {$sformatf("src:%d\n", print_index), ring_m.rx_ring.descs[print_index].print_item()}, UVM_LOW);
            `uvm_info(get_name(), {$sformatf("mon:%d\n", print_index), mon_descs[print_index].print_item()}, UVM_LOW);
        end     
        print_index = print_index + 1;
      end
    end
  join
endtask


task rx_driver::send_frame(int send_index);
  ring_m.rx_ring.descs[send_index].reshape_8_to_256(, `TEST_VLAN);
  // ring_m.rx_ring.descs[send_index].reshape_8_to_256(, `TEST_XBAR);
  @ (posedge nic_if.clk);

  for(int i = 0; i < ring_m.rx_ring.descs[send_index].data_256.size(); i++) begin
    nic_if.axis_rx_valid = `TD 1'b1;
    if(i == ring_m.rx_ring.descs[send_index].data_256.size()-1)  nic_if.axis_rx_last = `TD 1'b1;
    else        nic_if.axis_rx_last = `TD 1'b0;

    nic_if.axis_rx_data     = `TD ring_m.rx_ring.descs[send_index].data_256[i];
    nic_if.axis_rx_data_be  = `TD ring_m.rx_ring.descs[send_index].data_256_be[i];

    `wait_signal(nic_if.axis_rx_ready);
    @(posedge nic_if.clk) ;
  end

  nic_if.axis_rx_last   = `TD 1'b0;
  nic_if.axis_rx_valid  = `TD 1'b0;

  ring_m.rx_ring.descs[send_index].ring.cur_tail_ptr = ring_m.rx_ring.descs[send_index].ring.cur_tail_ptr + 1;
endtask


task rx_driver::wait_desc_dma(int desc_index);
  bit [127:0] temp_head;
  bit [31:0] csr_addr = ring_m.rx_ring.descs[desc_index].ring.bar_addr;
  bit [31:0] csr_data = 0;
  @ (posedge nic_if.clk);

  `JUMP_EMPTY_QUEUE(ring_m.rx_ring.descs[desc_index].ring_index == 31);

  `wait_signal(nic_if.rx_desc_dma_req_valid);
  nic_if.rx_desc_dma_req_ready          = `TD 1;
  temp_head                             = nic_if.rx_desc_dma_req_head;    
  mon_descs[desc_index].desc_addr       = nic_if.rx_desc_dma_req_head[95:32];
  @ (posedge nic_if.clk);
  nic_if.rx_desc_dma_req_ready          = `TD 0;
  
  `TD_DMA; // simulate the dma time
  @ (posedge nic_if.clk);
  nic_if.rx_desc_dma_rsp_valid    = `TD 1;
  nic_if.rx_desc_dma_rsp_data     = `TD {ring_m.rx_ring.descs[desc_index].packet_addr, 32'hffffffff, 32'b0};
  nic_if.rx_desc_dma_rsp_head     = `TD temp_head;
  nic_if.rx_desc_dma_rsp_last     = `TD 1;

  `wait_signal(nic_if.rx_desc_dma_rsp_ready);
  @ (posedge nic_if.clk);
  nic_if.rx_desc_dma_rsp_valid    = `TD 0;
  nic_if.rx_desc_dma_rsp_last     = `TD 0;
    
endtask

task rx_driver::wait_frame_dma(int frame_index);
  bit [31:0]  len_field;
  bit [31:0]  temp_be = 0;

  `JUMP_EMPTY_QUEUE(ring_m.rx_ring.descs[frame_index].ring_index == 31);
  
  while(1) begin
    `TD;
    `wait_chnl_wr(rx, 4'h2);
    ring_m.smephore_rx_wr.get();

    nic_if.rx_axis_wr_ready    = `TD 1;
    @ (posedge nic_if.clk);
    mon_descs[frame_index].data_256.push_back(nic_if.rx_axis_wr_data);
    if(nic_if.rx_axis_wr_last) begin
      mon_descs[frame_index].packet_addr      = nic_if.rx_axis_wr_head[95:32];
      len_field                               = nic_if.rx_axis_wr_head[31:0];
      // `uvm_info(get_name(), $sformatf("frame_index %d, len_field:%d", frame_index, len_field), UVM_LOW);
      nic_if.rx_axis_wr_ready    = `TD 0;
      ring_m.smephore_rx_wr.put();
      break;
    end
    ring_m.smephore_rx_wr.put();
  end

  // `uvm_info(get_name(), $sformatf("len_field:%d", len_field), UVM_LOW);
  temp_be = 0;
  while(len_field > 0) begin
    if(len_field >= 32) begin
      mon_descs[frame_index].data_256_be.push_back(32'hffff_ffff);
      len_field -= 32;
    end else begin
      while(len_field > 0) begin
        temp_be = (temp_be << 1) | 1'b1;
        len_field -= 1;
      end
      mon_descs[frame_index].data_256_be.push_back(temp_be);
    end    
  end
  
  mon_descs[frame_index].reshape_256_to_8();
endtask

task rx_driver::wait_roce_rec(int roce_index);
 int ready_seed;
  bit [31:0] tmp_be = {32{1'b1}};
  bit [255:0] tmp_data;
  @ (posedge nic_if.clk);

  nic_if.i_roce_prog_full  <= `TD 1'b0;
  
  while (1) begin
    `wait_signal(nic_if.debug_rx_roce[0]);
    @(posedge nic_if.clk);
    tmp_data = nic_if.ov_roce_data;
    mon_descs[roce_index].data_256.push_back(tmp_data);
  
    if(nic_if.debug_rx_roce[2:1]) begin
      tmp_be = {32{1'b1}};
      for(int i = 255; i > 0; i = i - 8) begin
        if(tmp_data[i -: 8]) begin
          break;
        end else begin
          tmp_be = tmp_be >> 1;
        end
      end
      mon_descs[roce_index].data_256_be.push_back(tmp_be);
      mon_descs[roce_index].ring_type = ROCE_RX_TYPE;
      mon_descs[roce_index].desc_status = nic_if.debug_rx_roce[2] ? CHECKSUM_ERROR : NORMAL_PKT;
      nic_if.i_roce_prog_full  <= `TD 1'b1;
      break;
    end

    mon_descs[roce_index].data_256_be.push_back({32{1'b1}});
  end
  mon_descs[roce_index].reshape_256_to_8(42);
endtask

task rx_driver::wait_cpl_dma(int cpl_index);  
  @ (posedge nic_if.clk);

  `JUMP_EMPTY_QUEUE(ring_m.rx_ring.descs[cpl_index].ring_index == 31);


  `wait_chnl_wr(rx, 4'h1);

  ring_m.smephore_rx_wr.get();
  nic_if.rx_axis_wr_ready    = `TD 1;
  @ (posedge nic_if.clk);
  mon_descs[cpl_index].cpl_data           = nic_if.rx_axis_wr_data;
  mon_descs[cpl_index].ring_index         = nic_if.rx_axis_wr_data[15:0]; /* record the ring index */
  mon_descs[cpl_index].index_in_ring      = nic_if.rx_axis_wr_data[31:16]; /* record the ring index */
  mon_descs[cpl_index].cpl_addr           = nic_if.rx_axis_wr_head[95:32];

  nic_if.rx_axis_wr_ready    = `TD 0;
  ring_m.smephore_rx_wr.put();

  if(mon_descs[cpl_index].cpl_data & `RxVlanTagged) begin
    mon_descs[cpl_index].is_vlan = 1;
  end

  `wait_signal(nic_if.rx_cpl_finish);
endtask

task rx_driver::wait_msix_dma(int msix_index);
  bit [31:0] csr_addr = ring_m.rx_ring.descs[msix_index].ring.bar_addr;
  bit [31:0] csr_data = 0;

  `JUMP_EMPTY_QUEUE(ring_m.rx_ring.descs[msix_index].ring_index == 31);

  @ (posedge nic_if.clk);

  `wait_chnl_wr(rx, 4'h0);

  ring_m.smephore_rx_wr.get();

  nic_if.rx_axis_wr_ready    = `TD 1;
  @ (posedge nic_if.clk);
  // `uvm_info(get_name(), $sformatf("msix_index %d, nic_if.rx_axis_wr_data:%h", msix_index, nic_if.rx_axis_wr_data), UVM_LOW);
  mon_descs[msix_index].misxv.msg = `TD nic_if.rx_axis_wr_data[31:0];
  mon_descs[msix_index].misxv.addr = `TD nic_if.rx_axis_wr_head[95:32];

  // @ (posedge nic_if.clk);
  nic_if.rx_axis_wr_ready    = `TD 0;
  ring_m.smephore_rx_wr.put();

  `axi_read(m, csr_addr + `CPL_QUEUE_HEAD_PTR_REG,   csr_data);
  mon_descs[msix_index].cpl_ring_head_ptr = `TD csr_data;

  `axi_write(m, csr_addr + `CPL_QUEUE_TAIL_PTR_REG,   ring_m.rx_ring.descs[msix_index].cpl_ring_tail_ptr);
  // `axi_read(m, csr_addr + `CPL_QUEUE_TAIL_PTR_REG,   csr_data);
  // ring_m.rx_ring.descs[msix_index].ring.cur_cpl_tail_ptr = csr_data;
endtask


task rx_driver::init_queue();
  bit [31:0] ring_bar_addr = 0;
  bit [31:0] csr_data = 0;

  ring_bar_addr = ring_m.rx_ring.ring_base_bar_addr;

  wait(nic_if.rst_n);
  @ (posedge nic_if.clk);

  /* init total 32 rings */
  for(int i = 0; i < 32; i++) begin
    // `uvm_info(get_name(), $sformatf("init queue:%d begin", i), UVM_LOW);
    `axi_write(m, ring_bar_addr + `QUEUE_ACTIVE_LOG_SIZE_REG, 0);
    `axi_write(m, ring_bar_addr + `QUEUE_BASE_ADDR_REG,       ring_m.rx_ring.rings[i].ring_addr[31:0]);
    `axi_write(m, ring_bar_addr + `QUEUE_BASE_ADDR_REG + 4,   ring_m.rx_ring.rings[i].ring_addr[63:32]);
    `axi_write(m, ring_bar_addr + `QUEUE_CPL_QUEUE_INDEX_REG, i);
    `axi_write(m, ring_bar_addr + `QUEUE_HEAD_PTR_REG,        `TEST_EMPTY_QUEUE && i == 31 ? 0 : ring_m.rx_ring.rings[i].head_ptr);
    `axi_write(m, ring_bar_addr + `QUEUE_TAIL_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `QUEUE_ACTIVE_LOG_SIZE_REG, 5 | (1 << 8) | 32'h80000000);

    `axi_write(m, ring_bar_addr + `CPL_QUEUE_ACTIVE_LOG_SIZE_REG, 0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_INTERRUPT_INDEX_REG, 0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_BASE_ADDR_REG,       ring_m.rx_ring.rings[i].cpl_ring_addr[31:0]);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_BASE_ADDR_REG + 4,   ring_m.rx_ring.rings[i].cpl_ring_addr[63:32]);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_INTERRUPT_INDEX_REG, i | 32'h80000000);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_HEAD_PTR_REG,        `TEST_EMPTY_QUEUE && i == 31 ? 1024 : 0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_TAIL_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_ACTIVE_LOG_SIZE_REG, 5 | 32'h80000000);
    // `uvm_info(get_name(), $sformatf("init queue:%d finish", i), UVM_LOW);

    // `uvm_info(get_name(), $sformatf("init queue rx :%d finish", i), UVM_LOW);
    // `axi_read(rx, ring_bar_addr + `QUEUE_HEAD_PTR_REG,        csr_data);
    // `uvm_info(get_name(), $sformatf("QUEUE_HEAD_PTR_REG: %d ", csr_data), UVM_LOW);
    // `axi_read(rx, ring_bar_addr + `QUEUE_TAIL_PTR_REG,        csr_data);
    // `uvm_info(get_name(), $sformatf("QUEUE_TAIL_PTR_REG: %d", csr_data), UVM_LOW);
    // `axi_read(rx, ring_bar_addr + `CPL_QUEUE_HEAD_PTR_REG,        csr_data);
    // `uvm_info(get_name(), $sformatf("CPL_QUEUE_HEAD_PTR_REG: %d ", csr_data), UVM_LOW);
    // `axi_read(rx, ring_bar_addr + `CPL_QUEUE_TAIL_PTR_REG,        csr_data);
    // `uvm_info(get_name(), $sformatf("CPL_QUEUE_TAIL_PTR_REG: %d", csr_data), UVM_LOW);

    ring_bar_addr = ring_bar_addr + `QUEUE_STRIDE;
  end
endtask

task rx_driver::init_msix();
  bit [31:0] csr_addr = 0;
  bit [31:0] csr_data = 0;
  csr_addr = ring_m.misx_t.bar_addr;

  wait(nic_if.rst_n);

  /* init total 32 rings */
  for(int i = 0; i < 32; i++) begin
    // `uvm_info(get_name(), $sformatf("init queue:%d begin", i), UVM_LOW);
    `axi_write(m, csr_addr + 32'h0,   ring_m.rx_ring.rings[i].misxv.addr[31:0]);
    `axi_write(m, csr_addr + 32'h4,   ring_m.rx_ring.rings[i].misxv.addr[63:32]);
    `axi_write(m, csr_addr + 32'h8,   ring_m.rx_ring.rings[i].misxv.msg);
    `axi_write(m, csr_addr + 32'hC,   0);
    // `axi_write(m, csr_addr + 32'h10,  0);

    `axi_read(m, csr_addr + 32'h0,   csr_data);
    `axi_read(m, csr_addr + 32'h4,   csr_data);
    `axi_read(m, csr_addr + 32'h8,   csr_data);
    `axi_read(m, csr_addr + 32'hC,   csr_data);
    // `axi_read(m, csr_addr + 32'h10,  csr_data);

    csr_addr = csr_addr + 32'h10;

    // `uvm_info(get_name(), $sformatf("init msix  :%d finish", i), UVM_LOW);
  end
endtask


task rx_driver::init_csr();
  bit [31:0] ring_bar_addr = 32'h1000;
  bit [31:0] csr_data = 0;

  wait(nic_if.rst_n);

  // `axi_read(m, ring_bar_addr + `OPEN_RX_CSUM,           csr_data);
  // `uvm_info(get_name(), $sformatf("OPEN_RX_CSUM  :%h ", csr_data), UVM_LOW);

  // if(!`TEST_CSUM_ERROR) begin
  //   `axi_write(m, ring_bar_addr + `OPEN_RX_CSUM, 0);
  //   `axi_read(m, ring_bar_addr + `OPEN_RX_CSUM,           csr_data);
  //   `uvm_info(get_name(), $sformatf("OPEN_RX_CSUM  :%h ", csr_data), UVM_LOW);
  // end


endtask

`endif
