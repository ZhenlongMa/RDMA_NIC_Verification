`ifndef TX_DRIVER__SV
`define TX_DRIVER__SV

class tx_driver extends uvm_driver#(Descriptor);
  typedef tx_driver this_type;
  virtual nic_interface nic_if;

  Ring_Manager ring_m;

  Descriptor mon_descs[$];

  bit[`DESC_NUM-1:0] finish_map = 0;

  `uvm_component_utils(tx_driver)

  function new(string name = "tx_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual nic_interface)::get(this, "", "nic_if", nic_if))
      `uvm_fatal("tx_driver", "virtual interface must be set for nic_if!!!")
    if(!uvm_config_db#(Ring_Manager)::get(this, "", "ring_m", ring_m))
      `uvm_fatal("tx_driver", "ring_m must be set for ring_m!!!")
  endfunction

  extern task main_phase(uvm_phase phase);
  extern task send_one_frame(int send_index);
  extern task read_register();
  extern task init_queue();
  extern task init_msix();
  extern task wait_desc_dma(int desc_index);
  extern task wait_frame_dma(int frame_index);
  extern task wait_frame_to_mac(int mac_index);
  extern task wait_cpl_dma(int cpl_index);
  extern task wait_msix_dma(int msix_index);
  extern task wait_roce_desc(int rdesc_index);
  extern task wait_roce_dma(int roce_index);
endclass

task tx_driver::main_phase(uvm_phase phase);
  int send_index = 0;
  int desc_index = 0;
  int frame_index = 0;
  int mac_index = 0;
  int cpl_index   = 0;
  int msix_index   = 0;
  int finish_index = 0;
  int print_index  = 0;
  int rdesc_index  = 0;
  int roce_index  = 0;
  string compare_msg;
  Descriptor temp_desc;
  int send_time = 0;
  while(!nic_if.rst_n)
    @(posedge nic_if.clk);
  
  if(`INITIAL_QUEUE) begin
    init_msix();
    init_queue();
    read_register();
  end
  
  for(int i = 0; i < ring_m.tx_ring.descs.size(); i = i + 1) begin
    temp_desc = new;
    temp_desc.packet_data = {};
    temp_desc.ring_type = ring_m.tx_ring.descs[i].ring_type;
    temp_desc.pkt_type  = ring_m.tx_ring.descs[i].pkt_type;
    temp_desc.desc_type = MON_TYPE;
    
    mon_descs.push_back(temp_desc);
  end
  
  fork 
    forever begin
      send_time = 100;
      seq_item_port.get_next_item(req);

      if(ring_m.tx_ring.descs[send_index].ring_type == MAC_TX_TYPE)
        send_one_frame(send_index);
      
      if(`PRINT_DETAIL) `uvm_info(get_name(), $sformatf("send_index:%d", send_index), UVM_LOW);
      send_index = send_index + 1;
      while(send_index == `DESC_NUM - 1) begin
        if(print_index == send_index || print_index == send_index + 1) break;
        @(posedge nic_if.clk);
      end
      repeat(send_time) @(posedge nic_if.clk);
      seq_item_port.item_done();
    end

    `phase_test(wait_desc_dma,      desc_index,   ring_m.tx_ring.descs[desc_index].ring_type,   MAC_TX_TYPE, print_index);
    `phase_test(wait_frame_dma,     frame_index,  ring_m.tx_ring.descs[frame_index].ring_type,  MAC_TX_TYPE, print_index);
    // `phase_test(wait_frame_to_mac,  mac_index,    ring_m.tx_ring.descs[mac_index].ring_type,    MAC_TX_TYPE | ROCE_TX_TYPE, print_index);
    `phase_test(wait_cpl_dma,       cpl_index,    ring_m.tx_ring.descs[cpl_index].ring_type,    MAC_TX_TYPE, print_index);
    `phase_test(wait_msix_dma,      msix_index,   ring_m.tx_ring.descs[msix_index].ring_type,   MAC_TX_TYPE, print_index);
    // `phase_test(wait_roce_desc,     rdesc_index,  ring_m.tx_ring.descs[rdesc_index].ring_type,  ROCE_TX_TYPE, print_index);
    // `phase_test(wait_roce_dma,      roce_index,   ring_m.tx_ring.descs[roce_index].ring_type,   ROCE_TX_TYPE, print_index); 

    forever begin
      @ (posedge nic_if.clk);
      if(finish_index < desc_index && finish_index < frame_index && 
            finish_index < mac_index && finish_index < cpl_index && finish_index < msix_index
            && finish_index < rdesc_index && finish_index < roce_index) begin        
        if(`PRINT_DETAIL)  `uvm_info(get_name(), $sformatf("finish_index:%d", finish_index), UVM_LOW);
        finish_index = finish_index + 1;
      end

      if(print_index < finish_index && (finish_map[print_index] || `TEST_ROCE)) begin
        `PRINT_STEP(print_index);
        if(`PRINT_DETAIL)  `uvm_info(get_name(), $sformatf("print_index:%d", print_index), UVM_LOW);
        
        mon_descs[print_index].index_in_block = print_index;
        if(!ring_m.tx_ring.descs[print_index].compare(mon_descs[print_index], compare_msg)) begin
          `uvm_info(get_name(), $sformatf("\n\n-----------------error--------------\n%s\n", compare_msg), UVM_LOW);
          `uvm_info(get_name(), {$sformatf("src:%d\n", print_index), ring_m.tx_ring.descs[print_index].print_item()}, UVM_LOW);
          `uvm_info(get_name(), {$sformatf("mon:%d\n", print_index), mon_descs[print_index].print_item()}, UVM_LOW);
        end else if(`PRINT_COMPARE_PKTDATA)  begin    
          `uvm_info(get_name(), {$sformatf("src:%d\n", print_index), ring_m.tx_ring.descs[print_index].print_item()}, UVM_LOW);
          `uvm_info(get_name(), {$sformatf("mon:%d\n", print_index), mon_descs[print_index].print_item()}, UVM_LOW);
        end
        
        print_index = print_index + 1;
      end
    end
  join
endtask


task tx_driver::send_one_frame(int send_index);
  bit [31:0] csr_addr = 0;
  bit [31:0] csr_data = 0;
  Descriptor desc = ring_m.tx_ring.descs[send_index];
  
  
  csr_addr = ring_m.tx_ring.rings[desc.ring_index].bar_addr;
  ring_m.tx_ring.rings[desc.ring_index].cur_head_ptr = ring_m.tx_ring.rings[desc.ring_index].cur_head_ptr + 1;

  `axi_write(m, csr_addr + `QUEUE_HEAD_PTR_REG,   ring_m.tx_ring.rings[desc.ring_index].cur_head_ptr);

  `axi_read(m, csr_addr + `QUEUE_HEAD_PTR_REG,   csr_data);

  mon_descs[desc.index_in_block].ring_head_ptr = csr_data;

  // `uvm_info(get_name(), $sformatf("QUEUE_HEAD_PTR_REG: %d ", ring_m.tx_ring.rings[desc.ring_index].cur_head_ptr), UVM_LOW);
endtask

task tx_driver::wait_desc_dma(int desc_index);
  bit [127:0] temp_head;
  // bit [31:0] csr_addr = ring_m.tx_ring.descs[desc_index].ring.bar_addr;
  bit [31:0] csr_data = 0;
  int queue_num;
  int queue_index;
  int inner_index;

  `wait_signal(nic_if.tx_desc_dma_req_valid);
  nic_if.tx_desc_dma_req_ready          = `TD 1;
  @ (posedge nic_if.clk);

  queue_num                             = nic_if.debug_desc_fetch_tx[47:32];
  queue_index                           = nic_if.debug_desc_fetch_tx[63:48];
  inner_index                           = ring_m.tx_ring.rings[queue_num].descs[queue_index].index_in_block;
  // `uvm_info(get_name(), $sformatf("wait_desc_dma queue_num:%d", queue_num), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_desc_dma queue_index:%d", queue_index), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_desc_dma inner_index:%d", inner_index), UVM_LOW); 
  temp_head                             = nic_if.tx_desc_dma_req_head;
  mon_descs[inner_index].desc_addr      = nic_if.tx_desc_dma_req_head[95:32];
  nic_if.tx_desc_dma_req_ready          = `TD 0;

  `TD_DMA;
  @ (posedge nic_if.clk);
  nic_if.tx_desc_dma_rsp_valid    = `TD 1;
  nic_if.tx_desc_dma_rsp_data     = `TD {ring_m.tx_ring.descs[inner_index].packet_addr, ring_m.tx_ring.descs[inner_index].packet_len, 
                                          ring_m.tx_ring.descs[inner_index].csum_offset, ring_m.tx_ring.descs[inner_index].csum_start,
                                          16'b0};
  nic_if.tx_desc_dma_rsp_head     = `TD temp_head;
  nic_if.tx_desc_dma_rsp_last     = `TD 1;
  
  while (1) begin
    @ (posedge nic_if.clk);
    if (nic_if.tx_desc_dma_rsp_ready) begin
      nic_if.tx_desc_dma_rsp_valid    = `TD 0;
      nic_if.tx_desc_dma_rsp_last     = `TD 0;
      break;
    end
  end

  // `axi_read(m, csr_addr + `CPL_QUEUE_HEAD_PTR_REG,   csr_data);
  // mon_descs[desc_index].cpl_ring_head_ptr = csr_data;
  // `axi_read(m, csr_addr + `QUEUE_TAIL_PTR_REG,   csr_data);
  // mon_descs[desc_index].ring_tail_ptr = csr_data;
  
endtask

task tx_driver::wait_frame_dma(int frame_index);
  Descriptor temp_desc;
  bit [127:0] temp_head;
  int queue_num;
  int queue_index;
  int inner_index;

  `wait_signal(nic_if.tx_frame_req_valid);
  nic_if.tx_frame_req_ready               = `TD 1;
  @ (posedge nic_if.clk);
      
  queue_num                               = nic_if.debug_tx_macproc[15:0];
  queue_index                             = nic_if.debug_tx_macproc[31:16];
  inner_index                             = ring_m.tx_ring.rings[queue_num].descs[queue_index].index_in_block;
  // `uvm_info(get_name(), $sformatf("wait_frame_dma queue_num:%d", queue_num), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_frame_dma queue_index:%d", queue_index), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_frame_dma inner_index:%d", inner_index), UVM_LOW); 
  temp_desc                               = ring_m.tx_ring.descs[inner_index];
  temp_desc.reshape_8_to_256(, `TEST_VLAN);
  temp_desc.tx_change_vcsum();

  // `uvm_info(get_name(), $sformatf("vcsum inner_index %d, :%h", inner_index, temp_desc.v_checksum), UVM_LOW); 

  temp_head                               = `TD nic_if.tx_frame_req_head;
  mon_descs[inner_index].packet_addr      = nic_if.tx_frame_req_head[95:32];
  nic_if.tx_frame_req_ready    = `TD 0;

  `TD_DMA;
  @(posedge nic_if.clk) ;
  for(int i = 0; i < temp_desc.data_256.size(); i++) begin    
    nic_if.tx_frame_rsp_valid = `TD 1'b1;

    if(i == temp_desc.data_256.size()-1)  nic_if.tx_frame_rsp_last = `TD 1'b1;
    else        nic_if.tx_frame_rsp_last = `TD 1'b0;

    nic_if.tx_frame_rsp_data      = `TD temp_desc.data_256[i];
    nic_if.tx_frame_rsp_head      = `TD temp_head;

    `wait_signal(nic_if.tx_frame_rsp_ready);
    @(posedge nic_if.clk) ;
  end
  // @(posedge nic_if.clk);
  nic_if.tx_frame_rsp_last   = `TD 1'b0;
  nic_if.tx_frame_rsp_valid  = `TD 1'b0;

endtask

task tx_driver::wait_frame_to_mac(int mac_index);
  int queue_num;
  int queue_index;
  int inner_index;
  @ (posedge nic_if.clk);
  
  while (1) begin    
    `wait_signal(nic_if.axis_tx_valid);
    nic_if.axis_tx_ready    = `TD 1;

    @ (posedge nic_if.clk);  

    if(nic_if.axis_tx_start) begin
      if(!`TEST_ROCE) begin
        queue_num                   = nic_if.debug_tx_macproc[47:32];
        queue_index                 = nic_if.debug_tx_macproc[63:48];
        inner_index                 = ring_m.tx_ring.rings[queue_num].descs[queue_index].index_in_block;
      end else begin
        inner_index = mac_index;
      end
    end

    if(nic_if.axis_tx_start) begin
      mon_descs[inner_index].tx_user = nic_if.axis_tx_user;
    end
             
    mon_descs[inner_index].data_256.push_back(nic_if.axis_tx_data);
    mon_descs[inner_index].data_256_be.push_back(nic_if.axis_tx_data_be);

      
    if(nic_if.axis_tx_last) begin
      nic_if.axis_tx_ready    = `TD 0;
      break;
    end    
  end    

  if(mon_descs[inner_index].data_256[0][12 * 8 +: 16]  == 8'h0081)
    mon_descs[inner_index].is_vlan = 1;
  mon_descs[inner_index].reshape_256_to_8();

  // if(`TEST_XBAR)
  //   mon_descs[inner_index].packet_data = mon_descs[inner_index].packet_data[8:$];
endtask

task tx_driver::wait_cpl_dma(int cpl_index);
  int queue_num;
  int queue_index;
  int inner_index;
  @ (posedge nic_if.clk);
  `wait_chnl_wr(tx, 4'h1);
  
  ring_m.smephore_tx_wr.get();
  nic_if.tx_axis_wr_ready    = `TD 1;

  queue_num                   = nic_if.debug_tx_macproc[79:64];
  queue_index                 = nic_if.debug_tx_macproc[95:80];
  inner_index                   = ring_m.tx_ring.rings[queue_num].descs[queue_index].index_in_block;
  // `uvm_info(get_name(), $sformatf("wait_cpl_dma queue_num:%d", queue_num), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_cpl_dma queue_index:%d", queue_index), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_cpl_dma inner_index:%d", inner_index), UVM_LOW); 

  mon_descs[inner_index].cpl_data           = nic_if.tx_axis_wr_data;
  mon_descs[inner_index].ring_index         = nic_if.tx_axis_wr_data[15:0]; /* record the ring index */
  mon_descs[inner_index].index_in_ring      = nic_if.tx_axis_wr_data[31:16]; /* record the ring index */
  mon_descs[inner_index].cpl_addr           = nic_if.tx_axis_wr_head[95:32];
  @ (posedge nic_if.clk);
  nic_if.tx_axis_wr_ready    = `TD 0;  
  ring_m.smephore_tx_wr.put();  
  `wait_signal(nic_if.tx_cpl_finish);

endtask

task tx_driver::wait_msix_dma(int msix_index);
  int queue_num;
  int queue_index;
  int inner_index;
  bit [31:0] csr_addr;
  bit [31:0] csr_data = 0;  
  
  @ (posedge nic_if.clk);  
  `wait_chnl_wr(tx, 4'h0);  
  ring_m.smephore_tx_wr.get();
  nic_if.tx_axis_wr_ready    = `TD 1;

  queue_num                 = nic_if.debug_tx_macproc[111:96];
  queue_index               = nic_if.debug_tx_macproc[127:112];
  
  inner_index                 = ring_m.tx_ring.rings[queue_num].descs[queue_index].index_in_block;
  // `uvm_info(get_name(), $sformatf("wait_msix_dma queue_num:%d", queue_num), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_msix_dma queue_index:%d", queue_index), UVM_LOW); 
  // `uvm_info(get_name(), $sformatf("wait_msix_dma inner_index:%d", inner_index), UVM_LOW); 


  mon_descs[inner_index].misxv.msg   = nic_if.tx_axis_wr_data[31:0];
  mon_descs[inner_index].misxv.addr  = nic_if.tx_axis_wr_head[95:32];
  @ (posedge nic_if.clk);
  nic_if.tx_axis_wr_ready    = `TD 0;
  ring_m.smephore_tx_wr.put();  

  csr_addr = ring_m.tx_ring.descs[inner_index].ring.bar_addr;

  `axi_read(m, csr_addr + `CPL_QUEUE_HEAD_PTR_REG,   csr_data);
  mon_descs[inner_index].cpl_ring_head_ptr = `TD csr_data;

  `axi_write(m, csr_addr + `CPL_QUEUE_TAIL_PTR_REG,   ring_m.tx_ring.descs[inner_index].cpl_ring_tail_ptr);

  
  finish_map[inner_index] = 1;
  // `axi_read(m, csr_addr + `CPL_QUEUE_TAIL_PTR_REG,   csr_data);

  // mon_descs[msix_index].cpl_ring_tail_ptr = csr_data;
endtask

task tx_driver::wait_roce_desc(int rdesc_index);
  @ (posedge nic_if.clk);
  nic_if.i_tx_desc_empty <= `TD 0;

  `wait_signal(nic_if.o_tx_desc_rd_en);
  nic_if.iv_tx_desc_data <= `TD ring_m.tx_ring.descs[rdesc_index].get_roce_desc();
  @ (posedge nic_if.clk);
    
  nic_if.i_tx_desc_empty <= `TD 1;
endtask

task tx_driver::wait_roce_dma(int roce_index);
  Descriptor temp_desc = ring_m.tx_ring.descs[roce_index];
  temp_desc.reshape_8_to_256(`ROCE_OFFSET);

  // `uvm_info(get_name(), {$sformatf("src:%d\n", roce_index), ring_m.tx_ring.descs[roce_index].print_item()}, UVM_LOW);
  @ (posedge nic_if.clk);
  nic_if.i_roce_empty <= `TD 0;
  for(int i = 0; i < temp_desc.data_256.size(); i++) begin  
    `wait_signal(nic_if.o_roce_rd_en);
    nic_if.iv_roce_data <= `TD temp_desc.data_256[i];
    @(posedge nic_if.clk) ;
  end
  // @(posedge nic_if.clk);
  nic_if.i_roce_empty <= `TD 1;
endtask

task tx_driver::read_register();
  bit [31:0] ring_bar_addr = 32'h1000;
  bit [31:0] csr_data = 0;

  wait(nic_if.rst_n);

  `axi_read(m, ring_bar_addr + `FW_ID_REG,                    csr_data);
  `uvm_info(get_name(), $sformatf("FW_ID_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `FW_ID_VENDOR,               csr_data);
  `uvm_info(get_name(), $sformatf("FW_ID_VENDOR  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `IF_FEATURE_REG,     csr_data);
  `uvm_info(get_name(), $sformatf("IF_FEATURE_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `TX_QUEUE_COUNT_REG,          csr_data);
  `uvm_info(get_name(), $sformatf("TX_QUEUE_COUNT_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `TX_QM_BASE_ADDR_REG, csr_data);
  `uvm_info(get_name(), $sformatf("TX_QM_BASE_ADDR_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `TX_CPL_QUEUE_COUNT_REG,         csr_data);
  `uvm_info(get_name(), $sformatf("TX_CPL_QUEUE_COUNT_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `TX_CQM_BASE_ADDR_REG,     csr_data);
  `uvm_info(get_name(), $sformatf("TX_CQM_BASE_ADDR_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `RX_QUEUE_COUNT_REG,          csr_data);
  `uvm_info(get_name(), $sformatf("RX_QUEUE_COUNT_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `RX_QM_BASE_ADDR_REG, csr_data);
  `uvm_info(get_name(), $sformatf("RX_QM_BASE_ADDR_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `RX_CPLQUEUE_COUNT_REG,         csr_data);
  `uvm_info(get_name(), $sformatf("RX_CPLQUEUE_COUNT_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `RX_CQM_BASE_ADDR_REG,                   csr_data);
  `uvm_info(get_name(), $sformatf("RX_CQM_BASE_ADDR_REG  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `NIC_TX_MTU,                   csr_data);
  `uvm_info(get_name(), $sformatf("NIC_TX_MTU  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `NIC_RX_MTU,           csr_data);
  `uvm_info(get_name(), $sformatf("NIC_RX_MTU  :%h ", csr_data), UVM_LOW);
  `axi_read(m, ring_bar_addr + `TX_START_SCHEDULER,           csr_data);
  `uvm_info(get_name(), $sformatf("TX_START_SCHEDULER  :%h ", csr_data), UVM_LOW);

  /* init total 32 rings */
  for(int i = 0; i < 32; i++) begin
    `axi_read(m, ring_bar_addr + `QUEUE_HEAD_PTR_REG,        csr_data);
    `axi_read(m, ring_bar_addr + `QUEUE_TAIL_PTR_REG,        csr_data);
    `axi_read(m, ring_bar_addr + `CPL_QUEUE_HEAD_PTR_REG,        csr_data);
    `axi_read(m, ring_bar_addr + `CPL_QUEUE_TAIL_PTR_REG,        csr_data);

    ring_bar_addr = ring_bar_addr + `QUEUE_STRIDE;    
  end

endtask

task tx_driver::init_queue();
  bit [31:0] ring_bar_addr = 0;
  bit [31:0] csr_data = 0;
  ring_bar_addr = ring_m.tx_ring.ring_base_bar_addr;

  wait(nic_if.rst_n);

  /* init total 32 rings */
  for(int i = 0; i < 32; i++) begin
    // `uvm_info(get_name(), $sformatf("init queue:%d begin", i), UVM_LOW);
    `axi_write(m, ring_bar_addr + `QUEUE_ACTIVE_LOG_SIZE_REG, 0);
    `axi_write(m, ring_bar_addr + `QUEUE_BASE_ADDR_REG,       ring_m.tx_ring.rings[i].ring_addr[31:0]);
    `axi_write(m, ring_bar_addr + `QUEUE_BASE_ADDR_REG + 4,   ring_m.tx_ring.rings[i].ring_addr[63:32]);
    `axi_write(m, ring_bar_addr + `QUEUE_CPL_QUEUE_INDEX_REG, i);
    `axi_write(m, ring_bar_addr + `QUEUE_HEAD_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `QUEUE_TAIL_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `QUEUE_ACTIVE_LOG_SIZE_REG, 5 | (1 << 8) | 32'h80000000);    

    `axi_write(m, ring_bar_addr + `CPL_QUEUE_ACTIVE_LOG_SIZE_REG, 0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_INTERRUPT_INDEX_REG, 0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_BASE_ADDR_REG,       ring_m.tx_ring.rings[i].cpl_ring_addr[31:0]);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_BASE_ADDR_REG + 4,   ring_m.tx_ring.rings[i].cpl_ring_addr[63:32]);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_INTERRUPT_INDEX_REG, (i + `RING_NUM) | 32'h80000000);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_HEAD_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_TAIL_PTR_REG,        0);
    `axi_write(m, ring_bar_addr + `CPL_QUEUE_ACTIVE_LOG_SIZE_REG, 5 | 32'h80000000);

    ring_bar_addr = ring_bar_addr + `QUEUE_STRIDE;    
  end
  `axi_write(m, 32'h1000 + `TX_START_SCHEDULER ,  1);
endtask


task tx_driver::init_msix();
  bit [31:0] csr_addr = 0;
  bit [31:0] csr_data = 0;
  csr_addr = ring_m.misx_t.bar_addr + 32'h10 * 32;

  wait(nic_if.rst_n);

  /* init total 32 rings */
  for(int i = 0; i < `RING_NUM; i++) begin
    // `uvm_info(get_name(), $sformatf("init queue:%d begin", i), UVM_LOW);
    // todo
    `axi_write(m, csr_addr + 32'h0,   ring_m.tx_ring.rings[i].misxv.addr[31:0]);
    `axi_write(m, csr_addr + 32'h4,   ring_m.tx_ring.rings[i].misxv.addr[63:32]);
    `axi_write(m, csr_addr + 32'h8,   ring_m.tx_ring.rings[i].misxv.msg);
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

`endif
