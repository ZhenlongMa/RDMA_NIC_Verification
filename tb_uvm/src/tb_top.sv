`timescale 1ns/1ps

// `include "uvm_macros.svh"
// import uvm_pkg::*;

typedef class Ring_Manager;

module tb_top;

// 创建interface以及基本信号
reg clk;
reg ethclk;
reg rst_n;
nic_interface     nic_if(clk, ethclk, rst_n);

Ring_Manager         ring_m;

initial begin
   ring_m = new;
end

initial begin
   clk = 0;
   forever begin
      #20 clk = ~clk;
   end
end

initial begin
   ethclk = 0;
   forever begin
      #8 ethclk = ~ethclk;
   end
end

// assign nic_if.chnl_rx =  nic_if.rx_axis_wr_valid ? (nic_if.debug_rx[4:2] + 1) : 0;
// assign nic_if.chnl_rx =  nic_if.rx_axis_wr_valid ? (nic_if.debug_rx[4:2] + 1) : 0;
assign nic_if.chnl_rx =  nic_if.debug_rx_dma[4:2];
assign nic_if.chnl_tx =  nic_if.debug_tx_dma[4:2];

initial begin
   rst_n = 1'b0;
   #50;
   rst_n = 1'b1;
end

initial begin
    $fsdbDumpvars(0,tb_top);
    // $fsdbDumpvars;
    $fsdbDumpon();
    $fsdbDumpMDA();
end

// 启动UVM test
initial begin
   run_test("base_test");
end

// 通过config_db对下层所有的virtual interface进行赋值
initial uvm_config_db#(virtual nic_interface)::set(null, "*", "nic_if", nic_if);
initial uvm_config_db#(Ring_Manager)::set(null, "*", "ring_m", ring_m);

eth_engine_top eth_engine_top_inst(
  .clk(nic_if.clk),
  .rst_n(nic_if.rst_n),

  /* -------interface to mac rx{begin}------- */
  /*interface to mac rx  */
   .axis_rx_valid(nic_if.axis_rx_xbar_valid), 
   .axis_rx_last(nic_if.axis_rx_xbar_last),
   .axis_rx_data(nic_if.axis_rx_xbar_data),
   .axis_rx_data_be(nic_if.axis_rx_xbar_data_be),
   .axis_rx_ready(nic_if.axis_rx_xbar_ready),
   .axis_rx_user(),
   .axis_rx_start(),

  /*interface to mac rx  */
   .axis_rx_valid(nic_if.axis_rx_valid), 
   .axis_rx_last(nic_if.axis_rx_last),
   .axis_rx_data(nic_if.axis_rx_data),
   .axis_rx_data_be(nic_if.axis_rx_data_be),
   .axis_rx_ready(nic_if.axis_rx_ready),
   .axis_rx_user(),
   .axis_rx_start(),
  /* -------interface to mac rx{end}------- */

  /* -------to dma module, to get the desc{begin}------- */
  .rx_desc_dma_req_valid(nic_if.rx_desc_dma_req_valid),
  .rx_desc_dma_req_head(nic_if.rx_desc_dma_req_head),
  .rx_desc_dma_req_ready(nic_if.rx_desc_dma_req_ready),

  .rx_desc_dma_rsp_valid(nic_if.rx_desc_dma_rsp_valid),
  .rx_desc_dma_rsp_data(nic_if.rx_desc_dma_rsp_data),
  .rx_desc_dma_rsp_head(nic_if.rx_desc_dma_rsp_head),
  .rx_desc_dma_rsp_last(nic_if.rx_desc_dma_rsp_last),
  .rx_desc_dma_rsp_ready(nic_if.rx_desc_dma_rsp_ready),
  /* -------to dma module, to get the desc{end}------- */

  /* -------to dma module, to write the cpl data{begin}------- */
  .rx_axis_wr_valid(nic_if.rx_axis_wr_valid),
  .rx_axis_wr_data(nic_if.rx_axis_wr_data),
  .rx_axis_wr_head(nic_if.rx_axis_wr_head),
  .rx_axis_wr_last(nic_if.rx_axis_wr_last),
  .rx_axis_wr_ready(nic_if.rx_axis_wr_ready),
  /* -------to dma module, to write the cpl data{end}------- */

  /* interface to mac */
  // .axis_tx_valid(nic_if.axis_tx_xbar_valid),
  // .axis_tx_last(nic_if.axis_tx_xbar_last),
  // .axis_tx_data(nic_if.axis_tx_xbar_data),
  // .axis_tx_data_be(nic_if.axis_tx_xbar_data_be),
  // .axis_tx_ready(nic_if.axis_tx_xbar_ready),
  // .axis_tx_user(nic_if.axis_tx_xbar_user),
  // .axis_tx_start(nic_if.axis_tx_xbar_start),

  /* interface to mac */
  .axis_tx_valid(nic_if.axis_tx_valid),
  .axis_tx_last(nic_if.axis_tx_last),
  .axis_tx_data(nic_if.axis_tx_data),
  .axis_tx_data_be(nic_if.axis_tx_data_be),
  .axis_tx_ready(nic_if.axis_tx_ready),
  .axis_tx_user(nic_if.axis_tx_user),
  .axis_tx_start(nic_if.axis_tx_start),
  
  /* to dma module, to get the desc */
  .tx_desc_dma_req_valid(nic_if.tx_desc_dma_req_valid),
  .tx_desc_dma_req_head(nic_if.tx_desc_dma_req_head),
  .tx_desc_dma_req_ready(nic_if.tx_desc_dma_req_ready),

  /* to dma module, to get the desc */
  .tx_desc_dma_rsp_valid(nic_if.tx_desc_dma_rsp_valid),
  .tx_desc_dma_rsp_data(nic_if.tx_desc_dma_rsp_data),
  .tx_desc_dma_rsp_head(nic_if.tx_desc_dma_rsp_head),
  .tx_desc_dma_rsp_last(nic_if.tx_desc_dma_rsp_last),
  .tx_desc_dma_rsp_ready(nic_if.tx_desc_dma_rsp_ready),

    /* to dma module, to get the frame */
  .tx_frame_req_valid(nic_if.tx_frame_req_valid),
  .tx_frame_req_head(nic_if.tx_frame_req_head),
  .tx_frame_req_ready(nic_if.tx_frame_req_ready),

  /* interface to dma */
  .tx_frame_rsp_valid(nic_if.tx_frame_rsp_valid),
  .tx_frame_rsp_data(nic_if.tx_frame_rsp_data),
  .tx_frame_rsp_head(nic_if.tx_frame_rsp_head),
  .tx_frame_rsp_last(nic_if.tx_frame_rsp_last),
  .tx_frame_rsp_ready(nic_if.tx_frame_rsp_ready),

  
  /* completion data dma interface */
  .tx_axis_wr_valid(nic_if.tx_axis_wr_valid),
  .tx_axis_wr_data(nic_if.tx_axis_wr_data),
  .tx_axis_wr_head(nic_if.tx_axis_wr_head),
  .tx_axis_wr_last(nic_if.tx_axis_wr_last),
  .tx_axis_wr_ready(nic_if.tx_axis_wr_ready),

  .i_roce_prog_full(nic_if.i_roce_prog_full),
  .ov_roce_data(nic_if.ov_roce_data),
  .o_roce_wr_en(nic_if.o_roce_wr_en),

  .i_tx_desc_empty(nic_if.i_tx_desc_empty),
  .iv_tx_desc_data(nic_if.iv_tx_desc_data),
  .o_tx_desc_rd_en(nic_if.o_tx_desc_rd_en),

  .i_roce_empty(nic_if.i_roce_empty),
  .iv_roce_data(nic_if.iv_roce_data),
  .o_roce_rd_en(nic_if.o_roce_rd_en),

    /*axil write signal*/
  .awvalid_m(nic_if.awvalid_m),
  .awaddr_m(nic_if.awaddr_m),
  .awready_m(nic_if.awready_m),
  
// Write Data Channel from Master 1
  .wvalid_m(nic_if.wvalid_m),
  .wdata_m(nic_if.wdata_m),
  .wstrb_m(nic_if.wstrb_m),
  .wready_m(nic_if.wready_m),
// Write Response Channel from Master 1
  .bvalid_m(nic_if.bvalid_m),
  // .bresp_m(nic_if.bresp_m),
  .bready_m(nic_if.bready_m),
// Read Address Channel from Master 1
  .arvalid_m(nic_if.arvalid_m),
  .araddr_m(nic_if.araddr_m),
  .arready_m(nic_if.arready_m),

// Read Data Channel from Master 1
  .rvalid_m(nic_if.rvalid_m),
  .rdata_m(nic_if.rdata_m),
  // .rresp_m(nic_if.rresp_m),
  .rready_m(nic_if.rready_m)

  `ifdef SIMULATION
    /* ------- Debug interface {begin}------- */
    /* | reserved | reserved | idx | end | out |
     * |  255:10  |   9:5    | 4:2 |  1  |  0  |
     */
    ,.debug_tx_dma(nic_if.debug_tx_dma)
    ,.debug_tx_macproc(nic_if.debug_tx_macproc)
    ,.debug_rx_dma(nic_if.debug_rx_dma)
    ,.debug_tx_roce_mac(nic_if.debug_tx_roce_mac)
    ,.debug_cpl_finish({nic_if.tx_cpl_finish, nic_if.rx_cpl_finish})
    ,.debug_rx_roce(nic_if.debug_rx_roce)
    ,.debug_rx_csum(nic_if.debug_rx_csum)
    ,.debug_desc_fetch_tx(nic_if.debug_desc_fetch_tx)
    ,.debug_desc_fetch_rx(nic_if.debug_desc_fetch_rx)
    ,.rw_data('b0)
    /* ------- Debug interface {end}------- */
`endif
);

// generate;
//   if(`TEST_XBAR) begin
//     xbar_tag_add xbar_tag_add_inst
//     (
//       .clk(nic_if.clk),
//       .rst_n(nic_if.rst_n),

//       /* interface to mac */
//       .axis_tx_in_valid(nic_if.axis_tx_xbar_valid), 
//       .axis_tx_in_last(nic_if.axis_tx_xbar_last),
//       .axis_tx_in_data(nic_if.axis_tx_xbar_data),
//       .axis_tx_in_data_be(nic_if.axis_tx_xbar_data_be),
//       .axis_tx_in_ready(nic_if.axis_tx_xbar_ready),
//       .axis_tx_in_user(nic_if.axis_tx_xbar_user),
//       .axis_tx_in_start(nic_if.axis_tx_xbar_start),

//       /* interface to mac */
//       .axis_tx_out_valid(nic_if.axis_tx_valid), 
//       .axis_tx_out_last(nic_if.axis_tx_last),
//       .axis_tx_out_data(nic_if.axis_tx_data),
//       .axis_tx_out_data_be(nic_if.axis_tx_data_be),
//       .axis_tx_out_ready(nic_if.axis_tx_ready),
//       .axis_tx_out_user(nic_if.axis_tx_user),
//       .axis_tx_out_start(nic_if.axis_tx_start)

//     );

//     xbar_tag_rm xbar_tag_rm_inst
//     (
//       .clk(nic_if.clk),
//       .rst_n(nic_if.rst_n),

//       /* interface to mac */
//       .axis_rx_in_valid(nic_if.axis_rx_valid), 
//       .axis_rx_in_last(nic_if.axis_rx_last),
//       .axis_rx_in_data(nic_if.axis_rx_data),
//       .axis_rx_in_data_be(nic_if.axis_rx_data_be),
//       .axis_rx_in_ready(nic_if.axis_rx_ready),


//       /* interface to mac */
//       .axis_rx_out_valid(nic_if.axis_rx_xbar_valid), 
//       .axis_rx_out_last(nic_if.axis_rx_xbar_last),
//       .axis_rx_out_data(nic_if.axis_rx_xbar_data),
//       .axis_rx_out_data_be(nic_if.axis_rx_xbar_data_be),
//       .axis_rx_out_ready(nic_if.axis_rx_xbar_ready)
//     );
//   end else begin
//     assign nic_if.axis_rx_xbar_valid    = nic_if.axis_rx_valid;
//     assign nic_if.axis_rx_xbar_last     = nic_if.axis_rx_last;
//     assign nic_if.axis_rx_xbar_data     = nic_if.axis_rx_data;
//     assign nic_if.axis_rx_xbar_data_be  = nic_if.axis_rx_data_be;
//     assign nic_if.axis_rx_ready         = nic_if.axis_rx_xbar_ready;

//     assign nic_if.axis_tx_valid       = nic_if.axis_tx_xbar_valid;
//     assign nic_if.axis_tx_last        = nic_if.axis_tx_xbar_last;
//     assign nic_if.axis_tx_data        = nic_if.axis_tx_xbar_data;
//     assign nic_if.axis_tx_data_be     = nic_if.axis_tx_xbar_data_be;
//     assign nic_if.axis_tx_xbar_ready  = nic_if.axis_tx_ready;
//     assign nic_if.axis_tx_user        = nic_if.axis_tx_xbar_user;
//     assign nic_if.axis_tx_start       = nic_if.axis_tx_xbar_start;

//   end
// endgenerate



endmodule
