`ifndef _IF__SV
`define _IF__SV

interface nic_interface(input clk,  input ethclk, input rst_n);
  parameter DMA_ADDR_WIDTH = 64;
  parameter DMA_DATA_WIDTH = 256;
  parameter DMA_HEAD_WIDTH = 128;
  parameter DMA_LEN_WIDTH = 32;
  parameter DMA_KEEP_WIDTH = DMA_DATA_WIDTH / 8;

    /* axil parameter */
  parameter AXIL_ADDR_WIDTH = 24;
  parameter AXIL_DATA_WIDTH = 32;
  parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8);
  parameter AXIL_CSR_ADDR_WIDTH = AXIL_ADDR_WIDTH-4;

  /* some feature of the eth nic */
  parameter RX_RSS_ENABLE = 1; 
  parameter RX_HASH_ENABLE = 1;
  parameter TX_CHECKSUM_ENABLE = 1;
  parameter RX_CHECKSUM_ENABLE = 1;

  parameter QUEUE_NUMBER_WIDTH  = 5; /* log2 of queue number */
  parameter QUEUE_INDEX_WIDTH   = 16; /* the width of queue ptr */
  parameter DESC_STATUS_WIDTH = 8;

  /* queue base addr */
  parameter TX_QUEUE_INDEX_WIDTH = 5;
  parameter AXIL_TX_QM_BASE_ADDR = 0;
  parameter TX_CPL_QUEUE_INDEX_WIDTH = 5;
  parameter AXIL_TX_CQM_BASE_ADDR = 0;   
  parameter RX_QUEUE_INDEX_WIDTH = 5;    
  parameter AXIL_RX_QM_BASE_ADDR = 0;    
  parameter RX_CPL_QUEUE_INDEX_WIDTH = 5;
  parameter AXIL_RX_CQM_BASE_ADDR = 0;

  parameter DESC_TABLE_SIZE = 8;
  parameter DESC_SIZE       = 16; /* width of descriptor size */
    /* hash and csum parameter */
  parameter HASH_WIDTH    = 32;
  parameter HASH_TYPE_WIDTH = 4;
  parameter CSUM_WIDTH    = 15;

  parameter MAC_DATA_WIDTH = 64;
  parameter MAC_KEEP_WIDTH = MAC_DATA_WIDTH / 8;
  /* -------interface to mac rx{begin}------- */
  /*interface to mac rx  */
  logic                                axis_rx_valid;
  logic                                axis_rx_last;
  logic [DMA_DATA_WIDTH-1:0]           axis_rx_data;
  logic [DMA_KEEP_WIDTH-1:0]           axis_rx_data_be;
  logic                                axis_rx_ready;
  logic [6:0]                          axis_rx_user;
  logic                                axis_rx_start;

  logic                                axis_rx_xbar_valid;
  logic                                axis_rx_xbar_last;
  logic [DMA_DATA_WIDTH-1:0]           axis_rx_xbar_data;
  logic [DMA_KEEP_WIDTH-1:0]           axis_rx_xbar_data_be;
  logic                                axis_rx_xbar_ready;
  logic [6:0]                          axis_rx_xbar_user;
  logic                                axis_rx_xbar_start;
  /* -------interface to mac rx{end}------- */

    /* interface to mac */
  // logic                                 axis_rx_mac_valid;
  // logic                                 axis_rx_mac_last;
  // logic [64-1:0]                        axis_rx_mac_data;
  // logic [8-1:0]                         axis_rx_mac_data_be;
  // logic                                 axis_rx_mac_ready;

  /* -------to dma module, to get the desc{begin}------- */
  logic                               rx_desc_dma_req_valid;
  logic [DMA_HEAD_WIDTH-1:0]          rx_desc_dma_req_head;
  logic                               rx_desc_dma_req_ready;

  logic                               rx_desc_dma_rsp_valid;
  logic [DMA_DATA_WIDTH-1:0]          rx_desc_dma_rsp_data;
  logic [DMA_HEAD_WIDTH-1:0]          rx_desc_dma_rsp_head;
  logic                               rx_desc_dma_rsp_last;
  logic                               rx_desc_dma_rsp_ready;
  /* -------to dma module, to get the desc{end}------- */

  /* -------to dma module, to write the cpl data{begin}------- */
  logic                               rx_axis_wr_valid;
  logic [DMA_DATA_WIDTH-1:0]          rx_axis_wr_data;
  logic [DMA_HEAD_WIDTH-1:0]          rx_axis_wr_head;
  logic                               rx_axis_wr_last;
  logic                               rx_axis_wr_ready;
  /* -------to dma module, to write the cpl data{end}------- */

  /* -------axil signal{begin}------- */
  logic [AXIL_ADDR_WIDTH-1:0]            rx_axil_awaddr;
  logic [2:0]                            rx_axil_awprot;
  logic                                  rx_axil_awvalid;
  logic                                  rx_axil_awready;
  logic [AXIL_DATA_WIDTH-1:0]            rx_axil_wdata;
  logic [AXIL_STRB_WIDTH-1:0]            rx_axil_wstrb;
  logic                                  rx_axil_wvalid;
  logic                                  rx_axil_wready;
  logic [1:0]                            rx_axil_bresp;
  logic                                  rx_axil_bvalid;
  logic                                  rx_axil_bready;

  logic [AXIL_ADDR_WIDTH-1:0]            rx_axil_araddr;
  logic [2:0]                            rx_axil_arprot;
  logic                                  rx_axil_arvalid;
  logic                                  rx_axil_arready;
  logic [AXIL_DATA_WIDTH-1:0]            rx_axil_rdata;
  logic [1:0]                            rx_axil_rresp;
  logic                                  rx_axil_rvalid;
  logic                                  rx_axil_rready;
  /* -------axil signal{end}------- */

  /* interface to mac */
  logic                                 axis_tx_valid;
  logic                                 axis_tx_last;
  logic [DMA_DATA_WIDTH-1:0]            axis_tx_data;
  logic [DMA_KEEP_WIDTH-1:0]            axis_tx_data_be;
  logic                                 axis_tx_ready;
  logic  [6:0]                          axis_tx_user;
  logic                                 axis_tx_start;

  logic                                 axis_tx_xbar_valid;
  logic                                 axis_tx_xbar_last;
  logic [DMA_DATA_WIDTH-1:0]            axis_tx_xbar_data;
  logic [DMA_KEEP_WIDTH-1:0]            axis_tx_xbar_data_be;
  logic                                 axis_tx_xbar_ready;
  logic  [6:0]                          axis_tx_xbar_user;
  logic                                 axis_tx_xbar_start;


  /* interface to mac */
  // logic                                 axis_tx_mac_valid;
  // logic                                 axis_tx_mac_last;
  // logic [64-1:0]                        axis_tx_mac_data;
  // logic [8-1:0]                         axis_tx_mac_data_be;
  // logic                                 axis_tx_mac_ready;
  
  /* to dma module, to get the desc */
  logic                               tx_desc_dma_req_valid;
  logic [DMA_HEAD_WIDTH-1:0]          tx_desc_dma_req_head;
  logic                               tx_desc_dma_req_ready;

  /* to dma module, to get the desc */
  logic                               tx_desc_dma_rsp_valid;
  logic [DMA_DATA_WIDTH-1:0]          tx_desc_dma_rsp_data;
  logic [DMA_HEAD_WIDTH-1:0]          tx_desc_dma_rsp_head;
  logic                               tx_desc_dma_rsp_last;
  logic                               tx_desc_dma_rsp_ready;

    /* to dma module, to get the frame */
  logic                               tx_frame_req_valid;
  logic [DMA_HEAD_WIDTH-1:0]          tx_frame_req_head;
  logic                               tx_frame_req_ready;

  /* interface to dma */
  logic                               tx_frame_rsp_valid;
  logic [DMA_DATA_WIDTH-1:0]          tx_frame_rsp_data;
  logic [DMA_HEAD_WIDTH-1:0]          tx_frame_rsp_head;
  logic                               tx_frame_rsp_last;
  logic                               tx_frame_rsp_ready;

  
  /* completion data dma interface */
  logic                               tx_axis_wr_valid;
  logic [DMA_DATA_WIDTH-1:0]          tx_axis_wr_data;
  logic [DMA_HEAD_WIDTH-1:0]          tx_axis_wr_head;
  logic                               tx_axis_wr_last;
  logic                               tx_axis_wr_ready;


  /*interface to roce rx  */
  logic                                i_roce_prog_full;
  logic [`DMA_DATA_WIDTH-1:0]          ov_roce_data;
  logic                                o_roce_wr_en;

  /* input from roce desc, request for a desc */
  logic                                i_tx_desc_empty;
  logic     [`ROCE_DESC_WIDTH-1:0]     iv_tx_desc_data;
  logic                                o_tx_desc_rd_en;

  logic                                i_roce_empty;
  logic   [`DMA_DATA_WIDTH-1:0]        iv_roce_data;
  logic                                o_roce_rd_en;

  logic                      awvalid_csr;
  logic [`AXI_AW-1:0]        awaddr_csr;
  logic                      awready_csr;
// Write Data Channel from Slave 1
  logic                      wvalid_csr;
  logic [`AXI_DW-1:0]        wdata_csr;
  logic [`AXI_SW-1:0]        wstrb_csr;
  logic                       wready_csr;
// Write Response Channel from Slave 1
  logic                       bvalid_csr;
  logic  [`AXI_BRW-1:0]       bresp_csr;
  logic                      bready_csr;
// Read Address Channel from Slave 1
  logic                      arvalid_csr;
  logic [`AXI_AW-1:0]        araddr_csr;
  logic                       arready_csr;
// Read Data Channel from Slave 1
  logic                       rvalid_csr;
  logic  [`AXI_DW-1:0]        rdata_csr;
  logic  [`AXI_RRW-1:0]       rresp_csr;
  logic                        rlast_csr;
  logic                      rready_csr;

// Write Address Channel from Slave2
  logic                      awvalid_rx;
  logic [`AXI_AW-1:0]        awaddr_rx;
  logic                       awready_rx;
// Write Data Channel from Slave2
  logic                      wvalid_rx;
  logic [`AXI_DW-1:0]        wdata_rx;
  logic [`AXI_SW-1:0]        wstrb_rx;
  logic                       wready_rx;
// Write Response Channel from Slave2
  logic                       bvalid_rx;
  logic  [`AXI_BRW-1:0]       bresp_rx;
  logic                      bready_rx;
// Read Address Channel from Slave2
  logic                      arvalid_rx;
  logic [`AXI_AW-1:0]        araddr_rx;
  logic                       arready_rx;
// Read Data Channel from Slave2
  logic                       rvalid_rx;
  logic  [`AXI_DW-1:0]        rdata_rx;
  logic  [`AXI_RRW-1:0]       rresp_rx;
  logic                        rlast_rx;
  logic                      rready_rx;

// Write Address Channel from Slave3
  logic                      awvalid_tx;
  logic [`AXI_AW-1:0]        awaddr_tx;
  logic                       awready_tx;
// Write Data Channel from Slave3
  logic                      wvalid_tx;
  logic [`AXI_DW-1:0]        wdata_tx;
  logic [`AXI_SW-1:0]        wstrb_tx;
  logic                       wready_tx;
// Write Response Channel from Slave3
  logic                       bvalid_tx;
  logic  [`AXI_BRW-1:0]       bresp_tx;
  logic                      bready_tx;
// Read Address Channel from Slave3
  logic                      arvalid_tx;
  logic [`AXI_AW-1:0]        araddr_tx;
  logic                       arready_tx;
// Read Data Channel from Slave3
  logic                        rvalid_tx;
  logic  [`AXI_DW-1:0]         rdata_tx;
  logic                        rlast_tx;
  logic  [`AXI_RRW-1:0]        rresp_tx;
  logic                        rready_tx;


  logic                       awvalid_m;
  logic  [`AXI_AW-1:0]        awaddr_m;
  logic  [`AXI_IDW_M1-1:0]     awid_m;
  logic                      awready_m;
  
// Write Data Channel from Master 1
  logic                       wvalid_m;
  logic  [`AXI_DW-1:0]        wdata_m;
  logic  [`AXI_SW-1:0]        wstrb_m;
  logic                      wready_m;
// Write Response Channel from Master 1
  logic                      bvalid_m;
  logic [`AXI_IDW_M1-1:0]     bid_m;
  logic [`AXI_BRW-1:0]       bresp_m;
  logic                       bready_m;
// Read Address Channel from Master 1
  logic                       arvalid_m;
  logic  [`AXI_IDW_M1-1:0]     arid_m;
  logic  [`AXI_AW-1:0]        araddr_m;
  logic                      arready_m;

// Read Data Channel from Master 1
  logic                      rvalid_m;
  logic [`AXI_IDW_M1-1:0]     rid_m;
  logic [`AXI_DW-1:0]        rdata_m;
  logic                      rlast_m;
  logic [`AXI_RRW-1:0]       rresp_m;
  logic                       rready_m;

`ifdef SIMULATION
    /* ------- Debug interface {begin}------- */
    /* | reserved | reserved | idx | end | out |
     * |  255:10  |   9:5    | 4:2 |  1  |  0  |
     */
    logic [255:0] debug_tx_dma;
    logic [255:0] debug_tx_macproc;
    logic [255:0] debug_rx_dma;    
    logic [255:0] debug_tx_roce_mac;    
    logic [255:0] debug_rx_roce;    
    logic [255:0] debug_rx_csum;    
    logic [255:0] debug_desc_fetch_tx;    
    logic [255:0] debug_desc_fetch_rx;    
    logic [249:0] rsv_tx;
    logic [3:0]   chnl_tx;
    logic         valid_tx;
    logic         valid_last_tx;
    logic [249:0] rsv_rx;
    logic [3:0]   chnl_rx;
    logic         valid_rx;
    logic         valid_last_rx;
    logic [255:0] debug_cpl_finish;
    logic         rx_cpl_finish;
    logic         tx_cpl_finish;

    /* ------- Debug interface {end}------- */
`endif

  initial begin
    axis_rx_valid        = 'b0;
    axis_rx_last         = 'b0;
    axis_rx_data         = 'b0;
    axis_rx_data_be      = 'b0;
    axis_rx_user         = 'b0;
    axis_rx_start        = 'b0;

    // axis_rx_xbar_valid        = 'b0;
    // axis_rx_xbar_last         = 'b0;
    // axis_rx_xbar_data         = 'b0;
    // axis_rx_xbar_data_be      = 'b0;
    // axis_rx_xbar_user         = 'b0;
    // axis_rx_xbar_start        = 'b0;

    // axis_rx_mac_valid     = 'b0;
    // axis_rx_mac_last      = 'b0;
    // axis_rx_mac_data      = 'b0;
    // axis_rx_mac_data_be     = 'b0;

    rx_desc_dma_req_ready   = 'b0;

    rx_desc_dma_rsp_valid   = 'b0;
    rx_desc_dma_rsp_data    = 'b0;
    rx_desc_dma_rsp_head    = 'b0;
    rx_desc_dma_rsp_last    = 'b0;


    rx_axis_wr_ready    = 'b0;

    rx_axil_awaddr    = 'b0;
    rx_axil_awprot    = 'b0;
    rx_axil_awvalid   = 'b0;
    rx_axil_wdata   = 'b0;
    rx_axil_wstrb   = 'b0;
    rx_axil_wvalid    = 'b0;
    rx_axil_bready    = 'b0;

    rx_axil_araddr    = 'b0;
    rx_axil_arprot    = 'b0;
    rx_axil_arvalid   = 'b0;
    rx_axil_rready    = 'b0;

  
    tx_desc_dma_req_ready   = 'b0;

    tx_desc_dma_rsp_valid   = 'b0;
    tx_desc_dma_rsp_data    = 'b0;
    tx_desc_dma_rsp_head    = 'b0;
    tx_desc_dma_rsp_last    = 'b0;

    tx_frame_req_ready    = 'b0;

    tx_frame_rsp_valid    = 'b0;
    tx_frame_rsp_data   = 'b0;
    tx_frame_rsp_head   = 'b0;
    tx_frame_rsp_last   = 'b0;


  /*interface to roce rx  */
    i_roce_prog_full    = 'b1;


  /* input from roce desc, request for a desc */
    i_tx_desc_empty   = 'b1;
    iv_tx_desc_data   = 'b0;

    i_roce_empty    = 'b1;
    iv_roce_data    = 'b0;

  /* because of the arbiter, we always set 1 */
    // tx_axis_wr_ready    = 'b1;

    axis_tx_ready      = 'b0;
    // axis_tx_xbar_ready      = 'b0;
    // axis_tx_mac_ready      = 'b0;

    awvalid_m    = 'b0;
    awaddr_m   = 'b0;
    awid_m   = 'b0;
  // Write Data Channel from Master 1
    wvalid_m   = 'b0;
    wdata_m    = 'b0;
    wstrb_m    = 'b0;
  // Write Response Channel from Master 1
    bready_m   = 'b0;
  // Read Address Channel from Master 1
    arvalid_m    = 'b0;
    arid_m   = 'b0;
    araddr_m   = 'b0;
  // Read Data Channel from Master 1
    rready_m   = 'b0;



  /* test_signal */
  awvalid_csr = 'b0;
  awaddr_csr = 'b0;
// Write Data Channel from Slave 1
  wvalid_csr = 'b0;
  wdata_csr = 'b0;
  wstrb_csr = 'b0;
// Write Response Channel from Slave 1
  bready_csr = 'b0;
// Read Address Channel from Slave 1
  arvalid_csr = 'b0;
  araddr_csr = 'b0;
// Read Data Channel from Slave 1
  rready_csr = 'b0;

// Write Address Channel from Slave2
  awvalid_rx = 'b0;
  awaddr_rx = 'b0;
// Write Data Channel from Slave2
  wvalid_rx = 'b0;
  wdata_rx = 'b0;
  wstrb_rx = 'b0;
// Write Response Channel from Slave2
  bready_rx = 'b0;
// Read Address Channel from Slave2
  arvalid_rx = 'b0;
  araddr_rx = 'b0;
// Read Data Channel from Slave2
  rready_rx = 'b0;

// Write Address Channel from Slave3
  awvalid_tx = 'b0;
  awaddr_tx = 'b0;
// Write Data Channel from Slave3
  wvalid_tx = 'b0;
  wdata_tx = 'b0;
  wstrb_tx = 'b0;
// Write Response Channel from Slave3
  bready_tx = 'b0;
// Read Address Channel from Slave3
  arvalid_tx = 'b0;
  araddr_tx = 'b0;
// Read Data Channel from Slave3
  rready_tx = 'b0;

  end
endinterface:nic_interface

`endif
