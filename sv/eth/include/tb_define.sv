`define SIMULATION

`define TD_DMA  #10000

`define TEST_ROCE 0

`define PRINT_DETAIL            0
`define PRINT_PKT_DATA          1
`define PRINT_COMPARE_PKTDATA   0
`define INITIAL_QUEUE           1

`define DESC_NUM 1000
`define RING_NUM 32
`define CL_DESC_SIZE 5

`define RAND_PKT_LEN_MAX 1514
`define RAND_PKT_LEN_MIN 64

`define ROCE_OFFSET 42

`define TEST_EMPTY_QUEUE 1
`define TEST_CSUM_ERROR 1
`define TEST_VLAN 1
// `define TEST_XBAR 0

`define CPL_STATUS_OFFSET           0
`define CPL_QNUM_OFFSET             `CPL_STATUS_OFFSET + 32
`define CPL_QINDEX_OFFSET           `CPL_QNUM_OFFSET + 16 
`define CPL_FRAME_LEN_OFFSET        `CPL_QINDEX_OFFSET + 16
`define CPL_HASH_DATA_OFFSET        `CPL_FRAME_LEN_OFFSET + 16
`define CPL_CSUM_DATA_OFFSET        `CPL_HASH_DATA_OFFSET + 32
`define CPL_VLAN_DATA_OFFSET        `CPL_CSUM_DATA_OFFSET + 16

`define RxProtoTCP        (1 << 18)
`define RxProtoUDP        (1 << 17)
`define RxProtoIP         (1 << 16)

`define UDPFail             (1 << 19)
`define TCPFail             (1 << 20)
`define RxVlanTagged        (1 << 15)


`define PRINT_STEP(print_index)  \
    if(print_index && print_index % 100 == 0) \
      `uvm_info(get_name(), $sformatf("print_index:%d", print_index), UVM_LOW);

`define axi_read(chnl, addr, data)   \
                    ring_m.smephore_axi.get();  \
                    @ (posedge nic_if.clk);    \
                    nic_if.araddr_``chnl``    = `TD addr; \
                    nic_if.arvalid_``chnl``   = `TD 1;    \
                    while (1) begin   \
                      @ (posedge nic_if.clk);    \
                      if (nic_if.arready_``chnl``) begin       \
                        nic_if.arvalid_``chnl``   = `TD 0;  \
                        break;    \
                      end   \
                    end   \
                    @ (posedge nic_if.clk); \
                    nic_if.rready_``chnl``     = `TD 1;   \
                    while (1) begin \
                      @ (posedge nic_if.clk);   \
                      if (nic_if.rvalid_``chnl``) begin   \
                        data    = `TD nic_if.rdata_``chnl``;    \
                        break;    \
                      end   \
                    end \
                    nic_if.rready_``chnl``     = `TD 0;   \
                    ring_m.smephore_axi.put();

`define axi_write(chnl, addr, data)   \
                ring_m.smephore_axi.get(); \
                @ (posedge nic_if.clk);   \
                nic_if.bready_``chnl     = `TD 1;   \
                nic_if.awaddr_``chnl    = `TD addr;   \
                nic_if.awvalid_``chnl   = `TD 1;    \
                while (1) begin   \
                  @ (posedge nic_if.clk);\
                  if (nic_if.awready_``chnl) begin  \
                    nic_if.awvalid_``chnl   = `TD 0;      \
                    break;    \
                  end   \
                end   \
                @ (posedge nic_if.clk); \
                nic_if.wvalid_``chnl     =   `TD 1;   \
                nic_if.wdata_``chnl      =   `TD data;    \
                nic_if.wstrb_``chnl      =   `TD 4'hf;    \
                while (1) begin   \
                  @ (posedge nic_if.clk);   \
                  if (nic_if.wready_``chnl) begin   \
                    nic_if.wvalid_``chnl    =  `TD 0;   \
                    break;\
                  end   \
                end \
                ring_m.smephore_axi.put();
  
`define wait_chnl_wr(chnl, data)   \
    while(1) begin  \
      wait (nic_if.``chnl``_axis_wr_valid  && nic_if.chnl_``chnl == data);  \
      repeat(2) `TD; \
      if(nic_if.``chnl``_axis_wr_valid  && nic_if.chnl_``chnl == data)  \
        break;  \
      else \
        @ (posedge nic_if.clk);   \
    end

`define wait_signal(chnl)   \
    while(1) begin  \
      wait (chnl);  \
      repeat(2) `TD; \
      if(chnl)  \
        break;  \
      else \
        @ (posedge nic_if.clk);   \
    end

`define wait_signal_ethclk(chnl)   \
    while(1) begin  \
      wait (chnl);  \
      repeat(2) `TD; \
      if(chnl)  \
        break;  \
      else \
        @ (posedge nic_if.ethclk);   \
    end


`define phase_test(fun, index, ring_type, exp_type, wait_index) \
    forever begin   \
      while(index < `DESC_NUM) begin    \
        if(ring_type & exp_type) begin \
          fun(index);    \
          if(`PRINT_DETAIL) `uvm_info(get_name(), $sformatf(`"``index``:%d`", index), UVM_LOW);   \
        end \
        index = index + 1;    \
        @ (posedge nic_if.clk);   \
      end   \
      @ (posedge nic_if.clk);   \
    end   

`define JUMP_EMPTY_QUEUE(con)  \
  if(`TEST_EMPTY_QUEUE && con) \
    return;

