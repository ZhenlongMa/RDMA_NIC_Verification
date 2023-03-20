`timescale 1ns / 1ps

module NIC_Top
#(
    parameter          C_DATA_WIDTH                        = 256,         // RX/TX interface data width
    parameter          KEEP_WIDTH                          = C_DATA_WIDTH / 32,

    // defined for pcie interface
    parameter          DMA_HEAD_WIDTH                 = 128      ,
    parameter          AXIL_DATA_WIDTH                = 32       ,
    parameter          AXIL_ADDR_WIDTH                = 24       ,
    parameter          ETHER_BASE                     = 24'h0    ,
    parameter          ETHER_LEN                      = 24'h1000 ,
    parameter          DB_BASE                        = 12'h0    ,
    parameter          HCR_BASE                       = 20'h80000,

    parameter          AXIL_STRB_WIDTH                = (AXIL_DATA_WIDTH/8),

    parameter 			NIC_DATA_WIDTH 					= 256,
    parameter 			NIC_KEEP_WIDTH 					= 32,
    parameter 			LINK_LAYER_USER_WIDTH 			= 7,

    parameter 			RW_REG_NUM 						= 1024,
    parameter 			RO_REG_NUM 						= 4096
)
(
	input 		wire 										rst,
	inout 		wire 										pcie_clk,
	input 		wire 										nic_clk,

	/*Interface with PCIe Subsystem*/
    output 		wire                          				s_axis_rq_tvalid,
    output 		wire                          				s_axis_rq_tlast ,
    output 		wire 	[KEEP_WIDTH-1:0]     				s_axis_rq_tkeep ,
    output 		wire    [59:0]     							s_axis_rq_tuser ,
    output 		wire 	[C_DATA_WIDTH-1:0]     				s_axis_rq_tdata ,
    input    	wire    [0:0]       						s_axis_rq_tready,
	
    input    	wire                          				m_axis_rc_tvalid,
    input    	wire                          				m_axis_rc_tlast ,
    input    	wire   	[KEEP_WIDTH-1:0]       				m_axis_rc_tkeep ,
    input    	wire   	[74:0]								m_axis_rc_tuser ,
    input    	wire 	[C_DATA_WIDTH-1:0]     				m_axis_rc_tdata ,
    output 		wire                        	  			m_axis_rc_tready,

    input    	wire                        				m_axis_cq_tvalid,
    input    	wire                        				m_axis_cq_tlast ,
    input    	wire   	[KEEP_WIDTH-1:0]     				m_axis_cq_tkeep ,
    input    	wire    [84:0]     							m_axis_cq_tuser ,
    input    	wire 	[C_DATA_WIDTH-1:0]     				m_axis_cq_tdata ,
    output 		wire                          				m_axis_cq_tready,

    output 		wire                          				s_axis_cc_tvalid,
    output 		wire                          				s_axis_cc_tlast ,
    output 		wire    [KEEP_WIDTH-1:0]     				s_axis_cc_tkeep ,
    output 		wire    [32:0]     							s_axis_cc_tuser ,
    output 		wire    [C_DATA_WIDTH-1:0]     				s_axis_cc_tdata ,
    input       wire    [0:0]     							s_axis_cc_tready,
    /* ------- AXI Interface{end}------- */

    // Configuration (CFG) Interface
    input      	wire    [2:0]     							cfg_max_payload ,
    input      	wire    [2:0]     							cfg_max_read_req,

    // Interrupt Interface Signals
    input      	wire    [1:0]     							cfg_interrupt_msix_enable,
    input      	wire    [1:0]     							cfg_interrupt_msix_mask,
    output 		wire    [31:0]     							cfg_interrupt_msix_data,
    output 		wire    [63:0]     							cfg_interrupt_msix_address,
    output 		wire                          				cfg_interrupt_msix_int,
    input 		wire                            			cfg_interrupt_msix_sent,
    input 		wire                            			cfg_interrupt_msix_fail,
    output 		wire 	[2:0]     							cfg_interrupt_msi_function_number,

	/*Interface with Link Layer*/
		/*Interface with TX HPC Link, AXIS Interface*/
	output 		wire                                 		o_hpc_tx_valid,
	output  	wire                                 		o_hpc_tx_last,
	output  	wire	[NIC_DATA_WIDTH - 1 : 0]           	ov_hpc_tx_data,
	output  	wire	[NIC_KEEP_WIDTH - 1 : 0]           	ov_hpc_tx_keep,
	input   	wire                                 		i_hpc_tx_ready,
	output 		wire 										o_hpc_tx_start, 		//Indicates start of the packet
	output 		wire 	[LINK_LAYER_USER_WIDTH - 1:0]		ov_hpc_tx_user, 	 	//Indicates length of the packet, in unit of 128 Byte, round up to 128

	/*Interface with RX HPC Link, AXIS Interface*/
		/*interface to LinkLayer Rx  */
	input     	wire                                 		i_hpc_rx_valid, 
	input     	wire                                 		i_hpc_rx_last,
	input     	wire	[NIC_DATA_WIDTH - 1 : 0]       		iv_hpc_rx_data,
	input     	wire	[NIC_KEEP_WIDTH - 1 : 0]       		iv_hpc_rx_keep,
	output    	wire                                 		o_hpc_rx_ready,	
	//Additional signals
	input 	  	wire 										i_hpc_rx_start,
	input 	  	wire 	[LINK_LAYER_USER_WIDTH - 1:0]		iv_hpc_rx_user, 

		/*Interface with TX ETH Link, AXIS Interface*/
	output  	wire                                 		o_eth_tx_valid,
	output  	wire                                 		o_eth_tx_last,
	output  	wire	[NIC_DATA_WIDTH - 1 : 0]           	ov_eth_tx_data,
	output  	wire	[NIC_KEEP_WIDTH - 1 : 0]           	ov_eth_tx_keep,
	input   	wire                                 		i_eth_tx_ready,
	output 		wire 										o_eth_tx_start, 		//Indicates start of the packet
	output 		wire 	[LINK_LAYER_USER_WIDTH - 1:0]		ov_eth_tx_user, 	 	//Indicates length of the packet, in unit of 128 Byte, round up to 128

	/*Interface with RX ETH Link, AXIS Interface*/
		/*interface to LinkLayer Rx  */
	input     	wire                                 		i_eth_rx_valid, 
	input     	wire                                 		i_eth_rx_last,
	input     	wire	[NIC_DATA_WIDTH - 1 : 0]       		iv_eth_rx_data,
	input     	wire	[NIC_KEEP_WIDTH - 1 : 0]       		iv_eth_rx_keep,
	output    	wire                                 		o_eth_rx_ready,	
	//Additional signals
	input 	  	wire 										i_eth_rx_start,
	input 	  	wire 	[LINK_LAYER_USER_WIDTH - 1:0]		iv_eth_rx_user, 

	/*Interface with Cfg Subsystem*/
	output 		wire 	[RW_REG_NUM * 32 - 1 : 0] 			ov_init_rw_data,
	input 	 	wire 	[RW_REG_NUM * 32 - 1 : 0]			iv_rw_data,
	output 		wire 	[RO_REG_NUM * 32 - 1 : 0]			ov_ro_data,

	input 		wire 	[31:0]								iv_dbg_sel,
	output 		wire 	[31:0]								ov_dbg_bus

);

///* ------- AXI Interface{begin}------- */
//wire                                       s_axis_rq_tlast;
//wire                 [C_DATA_WIDTH-1:0]    s_axis_rq_tdata;
//wire                             [59:0]    s_axis_rq_tuser;
//wire                   [KEEP_WIDTH-1:0]    s_axis_rq_tkeep;
//wire                              [3:0]    s_axis_rq_tready;
//wire                                       s_axis_rq_tvalid;
//
//wire                 [C_DATA_WIDTH-1:0]    m_axis_rc_tdata;
//wire                             [74:0]    m_axis_rc_tuser;
//wire                                       m_axis_rc_tlast;
//wire                   [KEEP_WIDTH-1:0]    m_axis_rc_tkeep;
//wire                                       m_axis_rc_tvalid;
//wire                                       m_axis_rc_tready;
//
//wire                 [C_DATA_WIDTH-1:0]    m_axis_cq_tdata;
//wire                             [84:0]    m_axis_cq_tuser;
//wire                                       m_axis_cq_tlast;
//wire                   [KEEP_WIDTH-1:0]    m_axis_cq_tkeep;
//wire                                       m_axis_cq_tvalid;
//wire                                       m_axis_cq_tready;
//
//wire                 [C_DATA_WIDTH-1:0]    s_axis_cc_tdata;
//wire                             [32:0]    s_axis_cc_tuser;
//wire                                       s_axis_cc_tlast;
//wire                   [KEEP_WIDTH-1:0]    s_axis_cc_tkeep;
//wire                                       s_axis_cc_tvalid;
//wire                              [3:0]    s_axis_cc_tready;
///* ------- AXI Interface{end}------- */
//
///* ------- Configuration (CFG) Interface{begin}------- */
//wire                              [2:0]    cfg_max_payload;
//wire                              [2:0]    cfg_max_read_req;
//
//// Interrupt Interface Signals
//wire                              [1:0]    cfg_interrupt_msix_enable;
//wire                              [1:0]    cfg_interrupt_msix_mask;
//wire                             [31:0]    cfg_interrupt_msix_data;
//wire                             [63:0]    cfg_interrupt_msix_address;
//wire                                       cfg_interrupt_msix_int;
//wire                                       cfg_interrupt_msix_sent;
//wire                                       cfg_interrupt_msix_fail;
//wire                              [2:0]    cfg_interrupt_msi_function_number;
///* ------- Configuration (CFG) Interface{end}------- */


// System(SYS) Interface
wire    sys_clk;
wire    rdma_clk;

wire glbl_rst;
wire app_rst;

// Command reset
wire    cmd_rst;

/* -------pio interface{begin}------- */
wire [63:0] pio_hcr_in_param    ;
wire [31:0] pio_hcr_in_modifier ;
wire [63:0] pio_hcr_out_dma_addr;
wire [63:0] pio_hcr_out_param   ;
//wire [16:0] pio_hcr_token       ;
wire [15:0] pio_hcr_token       ;
wire [ 7:0] pio_hcr_status      ;
wire        pio_hcr_go          ;
wire        pio_hcr_clear       ;
wire        pio_hcr_event       ;
wire [ 7:0] pio_hcr_op_modifier ;
wire [11:0] pio_hcr_op          ;

wire [63:0] pio_uar_db_data  ;
wire        pio_uar_db_ready ;
wire        pio_uar_db_valid ;
/* -------pio interface{end}------- */

 /* --------Interact with Ethernet BAR{begin}------- */
wire [AXIL_ADDR_WIDTH-1:0]    m_axi_awaddr ;
wire                          m_axi_awvalid;
wire                          m_axi_awready;

wire [AXIL_DATA_WIDTH-1:0]    m_axi_wdata ;
wire [AXIL_STRB_WIDTH-1:0]    m_axi_wstrb ;
wire                          m_axi_wvalid;
wire                          m_axi_wready;

wire                          m_axi_bvalid;
wire                          m_axi_bready;

wire [AXIL_ADDR_WIDTH-1:0]    m_axi_araddr ;
wire                          m_axi_arvalid;
wire                          m_axi_arready;

wire [AXIL_DATA_WIDTH-1:0]    m_axi_rdata ;
wire                          m_axi_rvalid;
wire                          m_axi_rready;
/* --------Interact with Ethernet BAR{end}------- */

/* -------dma interface{begin}------- */
// CEU Relevant
// CEU Read Req
wire                            dma_ceu_rd_req_valid ;
wire                            dma_ceu_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_ceu_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_ceu_rd_req_head  ;
wire                            dma_ceu_rd_req_last  ;

// CEU DMA Read Resp
wire                            dma_ceu_rd_rsp_valid ;
wire                            dma_ceu_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_ceu_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_ceu_rd_rsp_head  ;
wire                            dma_ceu_rd_rsp_last  ;

// CEU DMA Write Req
wire                            dma_ceu_wr_req_valid ;
wire                            dma_ceu_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_ceu_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_ceu_wr_req_head  ;
wire                            dma_ceu_wr_req_last  ;
// End CEU Relevant


// CxtMgt Relevant
// Context Management DMA Read Request
wire                            dma_cm_rd_req_valid ;
wire                            dma_cm_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cm_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cm_rd_req_head  ;
wire                            dma_cm_rd_req_last  ;

// Context Management DMA Read Response
wire                            dma_cm_rd_rsp_valid ;
wire                            dma_cm_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cm_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cm_rd_rsp_head  ;
wire                            dma_cm_rd_rsp_last  ;

// Context Management DMA Write Request
wire                            dma_cm_wr_req_valid ;
wire                            dma_cm_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cm_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cm_wr_req_head  ;
wire                            dma_cm_wr_req_last  ;
// End CxtMgt Relevant


// Virt2Phys Relevant
// Virtual to Physical DMA Context (MPT) Read Request
wire                            dma_cv2p_mpt_rd_req_valid ;
wire                            dma_cv2p_mpt_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mpt_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mpt_rd_req_head  ;
wire                            dma_cv2p_mpt_rd_req_last  ;

// Virtual to Physical DMA Context (MPT) Read Response
wire                            dma_cv2p_mpt_rd_rsp_valid ;
wire                            dma_cv2p_mpt_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mpt_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mpt_rd_rsp_head  ;
wire                            dma_cv2p_mpt_rd_rsp_last  ;

// Virtual to Physical DMA Cont1ext (MPT) Write Request
wire                            dma_cv2p_mpt_wr_req_valid ;
wire                            dma_cv2p_mpt_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mpt_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mpt_wr_req_head  ;
wire                            dma_cv2p_mpt_wr_req_last  ;

// Virtual to Physical DMA Context (MTT) Read Request
wire                            dma_cv2p_mtt_rd_req_valid ;
wire                            dma_cv2p_mtt_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mtt_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mtt_rd_req_head  ;
wire                            dma_cv2p_mtt_rd_req_last  ;

// Virtual to Physical DMA Context Read Response
wire                            dma_cv2p_mtt_rd_rsp_valid ;
wire                            dma_cv2p_mtt_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mtt_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mtt_rd_rsp_head  ;
wire                            dma_cv2p_mtt_rd_rsp_last  ;

// Virtual to Physical DMA Context Write Request
wire                            dma_cv2p_mtt_wr_req_valid ;
wire                            dma_cv2p_mtt_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_cv2p_mtt_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_cv2p_mtt_wr_req_head  ;
wire                            dma_cv2p_mtt_wr_req_last  ;

// Virtual to Physical DMA Data Read Request
wire                            dma_dv2p_rd_req_valid ;
wire                            dma_dv2p_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_dv2p_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_dv2p_rd_req_head  ;
wire                            dma_dv2p_rd_req_last  ;

// Virtual to Physical DMA Data Read Response
wire                            dma_dv2p_rd_rsp_valid ;
wire                            dma_dv2p_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_dv2p_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_dv2p_rd_rsp_head  ;
wire                            dma_dv2p_rd_rsp_last  ;

// Virtual to Physical DMA Data Write Request
wire                            dma_dv2p_wr_req_valid ;
wire                            dma_dv2p_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_dv2p_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_dv2p_wr_req_head  ;
wire                            dma_dv2p_wr_req_last  ;

// ADD 1 DMA read and response channel for v2p read RQ WQE
    // Virtual to Physical DMA RQ WQE Read Request
    wire                           dma_dv2p_wqe_rd_req_valid;
    wire                           dma_dv2p_wqe_rd_req_last ;
    wire [(C_DATA_WIDTH-1)  :0]    dma_dv2p_wqe_rd_req_data ;
    wire [(DMA_HEAD_WIDTH-1):0]    dma_dv2p_wqe_rd_req_head ;
    wire                           dma_dv2p_wqe_rd_req_ready;

    // Virtual to Physical DMA RQ WQE  Read Response
    wire                           dma_dv2p_wqe_rd_rsp_valid;
    wire                           dma_dv2p_wqe_rd_rsp_last ;
    wire [(C_DATA_WIDTH-1)  :0]    dma_dv2p_wqe_rd_rsp_data ;
    wire [(DMA_HEAD_WIDTH-1):0]    dma_dv2p_wqe_rd_rsp_head ;
    wire                           dma_dv2p_wqe_rd_rsp_ready;

//Eth Interface with DMA
//Tx Desc Fetch
wire                            dma_tx_desc_rd_req_valid ;
wire                            dma_tx_desc_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_tx_desc_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_tx_desc_rd_req_head  ;
wire                            dma_tx_desc_rd_req_last  ;

wire                            dma_tx_desc_rd_rsp_valid ;
wire                            dma_tx_desc_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_tx_desc_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_tx_desc_rd_rsp_head  ;
wire                            dma_tx_desc_rd_rsp_last  ;

//Tx Frame Fetch
wire                            dma_tx_frame_rd_req_valid ;
wire                            dma_tx_frame_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_tx_frame_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_tx_frame_rd_req_head  ;
wire                            dma_tx_frame_rd_req_last  ;

wire                            dma_tx_frame_rd_rsp_valid ;
wire                            dma_tx_frame_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_tx_frame_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_tx_frame_rd_rsp_head  ;
wire                            dma_tx_frame_rd_rsp_last  ;

//Tx Completion Write
wire                            dma_tx_axis_wr_req_valid ;
wire                            dma_tx_axis_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_tx_axis_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_tx_axis_wr_req_head  ;
wire                            dma_tx_axis_wr_req_last  ;

//Rx Desc Fetch
wire                            dma_rx_desc_rd_req_valid ;
wire                            dma_rx_desc_rd_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_rx_desc_rd_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_rx_desc_rd_req_head  ;
wire                            dma_rx_desc_rd_req_last  ;

wire                            dma_rx_desc_rd_rsp_valid ;
wire                            dma_rx_desc_rd_rsp_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_rx_desc_rd_rsp_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_rx_desc_rd_rsp_head  ;
wire                            dma_rx_desc_rd_rsp_last  ;

//Rx Completion Write
wire                            dma_rx_axis_wr_req_valid ;
wire                            dma_rx_axis_wr_req_ready ;
wire [(C_DATA_WIDTH-1)  :0]     dma_rx_axis_wr_req_data  ;
wire [(DMA_HEAD_WIDTH-1):0]     dma_rx_axis_wr_req_head  ;
wire                            dma_rx_axis_wr_req_last  ;



// End Virt2Phys Relevant
/* -------dma interface{end}------- */

assign m_axi_awready = 0;
assign m_axi_wready  = 0;
assign m_axi_bvalid  = 0;
assign m_axi_arready = 0;
assign m_axi_rdata   = 0;
assign m_axi_rvalid  = 0;

PCIe_Interface #(
    .DMA_HEAD_WIDTH   ( DMA_HEAD_WIDTH  ), // DMA Stream *_head signal width
    .C_DATA_WIDTH     ( C_DATA_WIDTH    ),
    .AXIL_DATA_WIDTH  ( AXIL_DATA_WIDTH ),
    .AXIL_ADDR_WIDTH  ( AXIL_ADDR_WIDTH ),
    .ETHER_BASE       ( ETHER_BASE      ),
    .ETHER_LEN        ( ETHER_LEN       ),
    .DB_BASE          ( DB_BASE         ),
    .HCR_BASE         ( HCR_BASE        )
) PCIe_Interface (

    .pcie_clk    ( pcie_clk    	),
    .rdma_clk    ( nic_clk    	),
    .user_reset  ( rst     		),

    //  AXI-S Interface
    .s_axis_rq_tvalid                               ( s_axis_rq_tvalid ), // o, 1
    .s_axis_rq_tlast                                ( s_axis_rq_tlast  ), // o, 1
    .s_axis_rq_tkeep                                ( s_axis_rq_tkeep  ), // o, 8
    .s_axis_rq_tuser                                ( s_axis_rq_tuser  ), // o, 60
    .s_axis_rq_tdata                                ( s_axis_rq_tdata  ), // o, 256
    .s_axis_rq_tready                               ( {3'b0, s_axis_rq_tready} ), // i, 1

    .m_axis_rc_tvalid                               ( m_axis_rc_tvalid ), // i, 1
    .m_axis_rc_tlast                                ( m_axis_rc_tlast  ), // i, 1
    .m_axis_rc_tkeep                                ( m_axis_rc_tkeep  ), // i, 8
    .m_axis_rc_tuser                                ( m_axis_rc_tuser  ), // i, 75
    .m_axis_rc_tdata                                ( m_axis_rc_tdata  ), // i, 256
    .m_axis_rc_tready                               ( m_axis_rc_tready ), // o, 1

    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid ), // i, 1
    .m_axis_cq_tlast                                ( m_axis_cq_tlast  ), // i, 1
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep  ), // i, 8
    .m_axis_cq_tuser                                ( m_axis_cq_tuser  ), // i, 85
    .m_axis_cq_tdata                                ( m_axis_cq_tdata  ), // i, 256
    .m_axis_cq_tready                               ( m_axis_cq_tready ), // o, 1

    .s_axis_cc_tvalid                               ( s_axis_cc_tvalid ), // o, 1
    .s_axis_cc_tlast                                ( s_axis_cc_tlast  ), // o, 1
    .s_axis_cc_tkeep                                ( s_axis_cc_tkeep  ), // o, 256
    .s_axis_cc_tuser                                ( s_axis_cc_tuser  ), // o, 33
    .s_axis_cc_tdata                                ( s_axis_cc_tdata  ), // o, 256
    .s_axis_cc_tready                               ( {3'b0, s_axis_cc_tready} ), // i, 1

    // Configuration (CFG) Interface
    .cfg_max_payload                                ( cfg_max_payload  ), // i, 3
    .cfg_max_read_req                               ( cfg_max_read_req ), // i, 3

    // Interrupt Interface Signals
    .cfg_interrupt_msix_enable                      ( cfg_interrupt_msix_enable         ), // i, 2
    .cfg_interrupt_msix_mask                        ( cfg_interrupt_msix_mask           ), // i, 2
    .cfg_interrupt_msix_data                        ( cfg_interrupt_msix_data           ), // o, 32
    .cfg_interrupt_msix_address                     ( cfg_interrupt_msix_address        ), // o, 64
    .cfg_interrupt_msix_int                         ( cfg_interrupt_msix_int            ), // o, 1
    .cfg_interrupt_msix_sent                        ( cfg_interrupt_msix_sent           ), // i, 1
    .cfg_interrupt_msix_fail                        ( cfg_interrupt_msix_fail           ), // i, 1
    .cfg_interrupt_msi_function_number              ( cfg_interrupt_msi_function_number ), // o, 3

    /* -------Reset signal{begin}------- */
    .cmd_rst                                        ( cmd_rst  ), // o, 1
    /* -------Reset signal{end}------- */

    /* -------pio interface{begin}------- */
    .pio_hcr_in_param     ( pio_hcr_in_param     ), // o, 64
    .pio_hcr_in_modifier  ( pio_hcr_in_modifier  ), // o, 32
    .pio_hcr_out_dma_addr ( pio_hcr_out_dma_addr ), // o, 64
    .pio_hcr_out_param    ( pio_hcr_out_param    ), // i, 64
    .pio_hcr_token        ( pio_hcr_token        ), // o, 16
    .pio_hcr_status       ( pio_hcr_status       ), // i, 8
    .pio_hcr_go           ( pio_hcr_go           ), // o, 1
    .pio_hcr_clear        ( pio_hcr_clear        ), // i, 1
    .pio_hcr_event        ( pio_hcr_event        ), // o, 1
    .pio_hcr_op_modifier  ( pio_hcr_op_modifier  ), // o, 8
    .pio_hcr_op           ( pio_hcr_op           ), // o, 12

    .pio_uar_db_data      ( pio_uar_db_data  ), // o, 64
    .pio_uar_db_ready     ( pio_uar_db_ready ), // i, 1
    .pio_uar_db_valid     ( pio_uar_db_valid ), // o, 1
    /* -------pio interface{end}------- */

    /* --------Interact with Ethernet BAR{begin}------- */
    .m_axi_awaddr  ( m_axi_awaddr  ) , // o, AXIL_ADDR_WIDTH
    .m_axi_awvalid ( m_axi_awvalid ) , // o, 1
    .m_axi_awready ( m_axi_awready ) , // i, 1

    .m_axi_wdata   ( m_axi_wdata   ), // o, AXIL_DATA_WIDTH
    .m_axi_wstrb   ( m_axi_wstrb   ), // o, AXIL_STRB_WIDTH
    .m_axi_wvalid  ( m_axi_wvalid  ), // o, 1
    .m_axi_wready  ( m_axi_wready  ), // i, 1

    .m_axi_bvalid  ( m_axi_bvalid  ), // i, 1
    .m_axi_bready  ( m_axi_bready  ), // o, 1

    .m_axi_araddr  ( m_axi_araddr  ), // o, AXIL_ADDR_WIDTH
    .m_axi_arvalid ( m_axi_arvalid ), // o, 1
    .m_axi_arready ( m_axi_arready ), // i, 1
    
    .m_axi_rdata   ( m_axi_rdata   ), // i, AXIL_DATA_WIDTH
    .m_axi_rvalid  ( m_axi_rvalid  ), // i, 1
    .m_axi_rready  ( m_axi_rready  ), // o, 1
    /* --------Interact with Ethernet BAR{end}------- */

    /* -------dma interface{begin}------- */
    /* dma_*_head(interact with RDMA modules), valid only in first beat of a packet
     * | Reserved | address | Reserved | Byte length |
     * |  127:96  |  95:32  |  31:13   |    12:0     |
     */
    // Read Req
    .dma_rd_req_valid ({dma_ceu_rd_req_valid, dma_cm_rd_req_valid, dma_cv2p_mpt_rd_req_valid, dma_cv2p_mtt_rd_req_valid, dma_dv2p_wqe_rd_req_valid, dma_dv2p_rd_req_valid, dma_tx_desc_rd_req_valid, dma_tx_frame_rd_req_valid, dma_rx_desc_rd_req_valid}), // i, `DMA_CHNL_NUM * 1             
    .dma_rd_req_last  ({dma_ceu_rd_req_last , dma_cm_rd_req_last , dma_cv2p_mpt_rd_req_last , dma_cv2p_mtt_rd_req_last , dma_dv2p_wqe_rd_req_last , dma_dv2p_rd_req_last, dma_tx_desc_rd_req_last, dma_tx_frame_rd_req_last, dma_rx_desc_rd_req_last }), // i, `DMA_CHNL_NUM * 1             
    .dma_rd_req_data  ({dma_ceu_rd_req_data , dma_cm_rd_req_data , dma_cv2p_mpt_rd_req_data , dma_cv2p_mtt_rd_req_data , dma_dv2p_wqe_rd_req_data , dma_dv2p_rd_req_data, dma_tx_desc_rd_req_data, dma_tx_frame_rd_req_data, dma_rx_desc_rd_req_data }), // i, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_rd_req_head  ({dma_ceu_rd_req_head , dma_cm_rd_req_head , dma_cv2p_mpt_rd_req_head , dma_cv2p_mtt_rd_req_head , dma_dv2p_wqe_rd_req_head , dma_dv2p_rd_req_head, dma_tx_desc_rd_req_head, dma_tx_frame_rd_req_head, dma_rx_desc_rd_req_head }), // i, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_rd_req_ready ({dma_ceu_rd_req_ready, dma_cm_rd_req_ready, dma_cv2p_mpt_rd_req_ready, dma_cv2p_mtt_rd_req_ready, dma_dv2p_wqe_rd_req_ready, dma_dv2p_rd_req_ready, dma_tx_desc_rd_req_ready, dma_tx_frame_rd_req_ready, dma_rx_desc_rd_req_ready}), // o, `DMA_CHNL_NUM * 1             

    // DMA Read Resp
    .dma_rd_rsp_valid ( {dma_ceu_rd_rsp_valid, dma_cm_rd_rsp_valid, dma_cv2p_mpt_rd_rsp_valid, dma_cv2p_mtt_rd_rsp_valid, dma_dv2p_wqe_rd_rsp_valid, dma_dv2p_rd_rsp_valid, dma_tx_desc_rd_rsp_valid, dma_tx_frame_rd_rsp_valid, dma_rx_desc_rd_rsp_valid} ), // o, `DMA_CHNL_NUM * 1             
    .dma_rd_rsp_last  ( {dma_ceu_rd_rsp_last , dma_cm_rd_rsp_last , dma_cv2p_mpt_rd_rsp_last , dma_cv2p_mtt_rd_rsp_last , dma_dv2p_wqe_rd_rsp_last , dma_dv2p_rd_rsp_last, dma_tx_desc_rd_rsp_last, dma_tx_frame_rd_rsp_last, dma_rx_desc_rd_rsp_last } ), // o, `DMA_CHNL_NUM * 1             
    .dma_rd_rsp_data  ( {dma_ceu_rd_rsp_data , dma_cm_rd_rsp_data , dma_cv2p_mpt_rd_rsp_data , dma_cv2p_mtt_rd_rsp_data , dma_dv2p_wqe_rd_rsp_data , dma_dv2p_rd_rsp_data, dma_tx_desc_rd_rsp_data, dma_tx_frame_rd_rsp_data, dma_rx_desc_rd_rsp_data } ), // o, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_rd_rsp_head  ( {dma_ceu_rd_rsp_head , dma_cm_rd_rsp_head , dma_cv2p_mpt_rd_rsp_head , dma_cv2p_mtt_rd_rsp_head , dma_dv2p_wqe_rd_rsp_head , dma_dv2p_rd_rsp_head, dma_tx_desc_rd_rsp_head, dma_tx_frame_rd_rsp_head, dma_rx_desc_rd_rsp_head } ), // o, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_rd_rsp_ready ( {dma_ceu_rd_rsp_ready, dma_cm_rd_rsp_ready, dma_cv2p_mpt_rd_rsp_ready, dma_cv2p_mtt_rd_rsp_ready, dma_dv2p_wqe_rd_rsp_ready, dma_dv2p_rd_rsp_ready, dma_tx_desc_rd_rsp_ready, dma_tx_frame_rd_rsp_ready, dma_rx_desc_rd_rsp_ready} ), // i, `DMA_CHNL_NUM * 1             

    // DMA Write Req
    .dma_wr_req_valid ( {dma_ceu_wr_req_valid, dma_cm_wr_req_valid, dma_cv2p_mpt_wr_req_valid, dma_cv2p_mtt_wr_req_valid, dma_dv2p_wr_req_valid, dma_tx_axis_wr_req_valid, dma_rx_axis_wr_req_valid} ), // i, `DMA_CHNL_NUM * 1             
    .dma_wr_req_last  ( {dma_ceu_wr_req_last , dma_cm_wr_req_last , dma_cv2p_mpt_wr_req_last , dma_cv2p_mtt_wr_req_last , dma_dv2p_wr_req_last, dma_tx_axis_wr_req_last, dma_rx_axis_wr_req_last } ), // i, `DMA_CHNL_NUM * 1             
    .dma_wr_req_data  ( {dma_ceu_wr_req_data , dma_cm_wr_req_data , dma_cv2p_mpt_wr_req_data , dma_cv2p_mtt_wr_req_data , dma_dv2p_wr_req_data, dma_tx_axis_wr_req_data, dma_rx_axis_wr_req_data } ), // i, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_wr_req_head  ( {dma_ceu_wr_req_head , dma_cm_wr_req_head , dma_cv2p_mpt_wr_req_head , dma_cv2p_mtt_wr_req_head , dma_dv2p_wr_req_head, dma_tx_axis_wr_req_head, dma_rx_axis_wr_req_head } ), // i, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_wr_req_ready ( {dma_ceu_wr_req_ready, dma_cm_wr_req_ready, dma_cv2p_mpt_wr_req_ready, dma_cv2p_mtt_wr_req_ready, dma_dv2p_wr_req_ready, dma_tx_axis_wr_req_ready, dma_rx_axis_wr_req_ready} )  // o, `DMA_CHNL_NUM * 1             
    /* -------dma interface{end}------- */
);

wire 				w_roce_prog_full;
wire 	[255:0]		wv_roce_ingress_data;
wire 				w_roce_wr_en;
	
	/* input from roce desc, request for a desc */
wire 				w_tx_desc_empty;
wire 	[191:0]		wv_tx_desc_data;
wire 				w_tx_desc_rd_en;
	
wire 				w_roce_empty;
wire 	[255:0]		wv_roce_egress_data;
wire 				w_roce_rd_en;

wire 		[31 : 0]		wv_eth_tx_keep;
wire 		[31 : 0]		wv_eth_rx_keep;

wire 		[4 : 0]		wv_hpc_tx_keep;
wire 		[4 : 0]		wv_hpc_rx_keep;

/* -------RDMA Engine(Transport layer){begin}------- */
RDMA_Top #(
    .DMA_HEAD_WIDTH ( DMA_HEAD_WIDTH ),  // DMA Stream *_head signal width
    .C_DATA_WIDTH   ( C_DATA_WIDTH   )   // Stream Channel data width
) RDMA_inst (
    .clk(nic_clk),
    .rst(rst),

    /* -------pio interface{begin}------- */
    .hcr_in_param     ( pio_hcr_in_param     ), // i, 64
    .hcr_in_modifier  ( pio_hcr_in_modifier  ), // i, 32
    .hcr_out_dma_addr ( pio_hcr_out_dma_addr ), // i, 64
    .hcr_out_param    ( pio_hcr_out_param    ), // o, 64
    .hcr_token        ( {16'd0, pio_hcr_token}        ), // i, 16
    .hcr_status       ( pio_hcr_status       ), // o, 8
    .hcr_go           ( pio_hcr_go           ), // i, 1
    .hcr_clear        ( pio_hcr_clear        ), // o, 1
    .hcr_event        ( pio_hcr_event        ), // i, 1
    .hcr_op_modifier  ( pio_hcr_op_modifier  ), // i, 8
    .hcr_op           ( pio_hcr_op           ), // i, 12

    .uar_db_data  ( pio_uar_db_data  ), // i, 64
    .uar_db_ready ( pio_uar_db_ready ), // o, 1
    .uar_db_valid ( pio_uar_db_valid ), // i, 1
    /* -------pio interface{end}------- */

    /* -------dma interface{begin}------- */
    /* dma_*_head(interact with RDMA modules), valid only in first beat of a packet
     * | Reserved | address | Reserved | Byte length |
     * |  127:96  |  95:32  |  31:13   |    12:0     |
     */
    // CEU Relevant
    // CEU Read Req
    .dma_ceu_rd_req_valid ( dma_ceu_rd_req_valid ), // o, 1
    .dma_ceu_rd_req_last  ( dma_ceu_rd_req_last  ), // o, 1
    .dma_ceu_rd_req_data  ( dma_ceu_rd_req_data  ), // o, C_DATA_WIDTH
    .dma_ceu_rd_req_head  ( dma_ceu_rd_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_ceu_rd_req_ready ( dma_ceu_rd_req_ready ), // i, 1

    // CEU DMA Read Resp
    .dma_ceu_rd_rsp_valid ( dma_ceu_rd_rsp_valid ), // i, 1
    .dma_ceu_rd_rsp_last  ( dma_ceu_rd_rsp_last  ), // i, 1
    .dma_ceu_rd_rsp_data  ( dma_ceu_rd_rsp_data  ), // i, C_DATA_WIDTH
    .dma_ceu_rd_rsp_head  ( dma_ceu_rd_rsp_head  ), // i, DMA_HEAD_WIDTH
    .dma_ceu_rd_rsp_ready ( dma_ceu_rd_rsp_ready ), // o, 1

    // CEU DMA Write Req
    .dma_ceu_wr_req_valid ( dma_ceu_wr_req_valid ), // o, 1
    .dma_ceu_wr_req_last  ( dma_ceu_wr_req_last  ), // o, 1
    .dma_ceu_wr_req_data  ( dma_ceu_wr_req_data  ), // o, C_DATA_WIDTH
    .dma_ceu_wr_req_head  ( dma_ceu_wr_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_ceu_wr_req_ready ( dma_ceu_wr_req_ready ), // i, 1
    // End CEU Relevant


    // CxtMgt Relevant
    // Context Management DMA Read Request
    .dma_cm_rd_req_valid ( dma_cm_rd_req_valid ), // o, 1
    .dma_cm_rd_req_last  ( dma_cm_rd_req_last  ), // o, 1
    .dma_cm_rd_req_data  ( dma_cm_rd_req_data  ), // o, C_DATA_WIDTH
    .dma_cm_rd_req_head  ( dma_cm_rd_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cm_rd_req_ready ( dma_cm_rd_req_ready ), // i, 1

    // Context Management DMA Read Response
    .dma_cm_rd_rsp_valid ( dma_cm_rd_rsp_valid ), // o, 1
    .dma_cm_rd_rsp_last  ( dma_cm_rd_rsp_last  ), // o, 1
    .dma_cm_rd_rsp_data  ( dma_cm_rd_rsp_data  ), // o, C_DATA_WIDTH
    .dma_cm_rd_rsp_head  ( dma_cm_rd_rsp_head  ), // o, DMA_HEAD_WIDTH
    .dma_cm_rd_rsp_ready ( dma_cm_rd_rsp_ready ), // i, 1

    // Context Management DMA Write Request
    .dma_cm_wr_req_valid ( dma_cm_wr_req_valid ), // o, 1
    .dma_cm_wr_req_last  ( dma_cm_wr_req_last  ), // o, 1
    .dma_cm_wr_req_data  ( dma_cm_wr_req_data  ), // o, C_DATA_WIDTH
    .dma_cm_wr_req_head  ( dma_cm_wr_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cm_wr_req_ready ( dma_cm_wr_req_ready ), // i, 1
    // End CxtMgt Relevant


    // Virt2Phys Relevant
    // Virtual to Physical DMA Context Read Request(MPT)
    .dma_cv2p_mpt_rd_req_valid ( dma_cv2p_mpt_rd_req_valid ), // o, 1
    .dma_cv2p_mpt_rd_req_last  ( dma_cv2p_mpt_rd_req_last  ), // o, 1
    .dma_cv2p_mpt_rd_req_data  ( dma_cv2p_mpt_rd_req_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mpt_rd_req_head  ( dma_cv2p_mpt_rd_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mpt_rd_req_ready ( dma_cv2p_mpt_rd_req_ready ), // i, 1

    // Virtual to Physical DMA Context Read Response
    .dma_cv2p_mpt_rd_rsp_valid ( dma_cv2p_mpt_rd_rsp_valid ), // o, 1
    .dma_cv2p_mpt_rd_rsp_last  ( dma_cv2p_mpt_rd_rsp_last  ), // o, 1
    .dma_cv2p_mpt_rd_rsp_data  ( dma_cv2p_mpt_rd_rsp_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mpt_rd_rsp_head  ( dma_cv2p_mpt_rd_rsp_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mpt_rd_rsp_ready ( dma_cv2p_mpt_rd_rsp_ready ), // i, 1

    // Virtual to Physical DMA Context Write Request
    .dma_cv2p_mpt_wr_req_valid ( dma_cv2p_mpt_wr_req_valid ), // o, 1
    .dma_cv2p_mpt_wr_req_last  ( dma_cv2p_mpt_wr_req_last  ), // o, 1
    .dma_cv2p_mpt_wr_req_data  ( dma_cv2p_mpt_wr_req_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mpt_wr_req_head  ( dma_cv2p_mpt_wr_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mpt_wr_req_ready ( dma_cv2p_mpt_wr_req_ready ), // i, 1

    .dma_cv2p_mtt_rd_req_valid ( dma_cv2p_mtt_rd_req_valid ), // o, 1
    .dma_cv2p_mtt_rd_req_last  ( dma_cv2p_mtt_rd_req_last  ), // o, 1
    .dma_cv2p_mtt_rd_req_data  ( dma_cv2p_mtt_rd_req_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mtt_rd_req_head  ( dma_cv2p_mtt_rd_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mtt_rd_req_ready ( dma_cv2p_mtt_rd_req_ready ), // i, 1

    // Virtual to Physical DMA Context Read Response
    .dma_cv2p_mtt_rd_rsp_valid ( dma_cv2p_mtt_rd_rsp_valid ), // o, 1
    .dma_cv2p_mtt_rd_rsp_last  ( dma_cv2p_mtt_rd_rsp_last  ), // o, 1
    .dma_cv2p_mtt_rd_rsp_data  ( dma_cv2p_mtt_rd_rsp_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mtt_rd_rsp_head  ( dma_cv2p_mtt_rd_rsp_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mtt_rd_rsp_ready ( dma_cv2p_mtt_rd_rsp_ready ), // i, 1

    // Virtual to Physical DMA Context Write Request
    .dma_cv2p_mtt_wr_req_valid ( dma_cv2p_mtt_wr_req_valid ), // o, 1
    .dma_cv2p_mtt_wr_req_last  ( dma_cv2p_mtt_wr_req_last  ), // o, 1
    .dma_cv2p_mtt_wr_req_data  ( dma_cv2p_mtt_wr_req_data  ), // o, C_DATA_WIDTH
    .dma_cv2p_mtt_wr_req_head  ( dma_cv2p_mtt_wr_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_cv2p_mtt_wr_req_ready ( dma_cv2p_mtt_wr_req_ready ), // i, 1

    // Virtual to Physical DMA Data Read Request
    .dma_dv2p_dt_rd_req_valid ( dma_dv2p_rd_req_valid ), // o, 1
    .dma_dv2p_dt_rd_req_last  ( dma_dv2p_rd_req_last  ), // o, 1
    .dma_dv2p_dt_rd_req_data  ( dma_dv2p_rd_req_data  ), // o, C_DATA_WIDTH
    .dma_dv2p_dt_rd_req_head  ( dma_dv2p_rd_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_dv2p_dt_rd_req_ready ( dma_dv2p_rd_req_ready ), // i, 1

    // Virtual to Physical DMA Data Read Response
    .dma_dv2p_dt_rd_rsp_valid ( dma_dv2p_rd_rsp_valid ), // o, 1
    .dma_dv2p_dt_rd_rsp_last  ( dma_dv2p_rd_rsp_last  ), // o, 1
    .dma_dv2p_dt_rd_rsp_data  ( dma_dv2p_rd_rsp_data  ), // o, C_DATA_WIDTH
    .dma_dv2p_dt_rd_rsp_head  ( dma_dv2p_rd_rsp_head  ), // o, DMA_HEAD_WIDTH
    .dma_dv2p_dt_rd_rsp_ready ( dma_dv2p_rd_rsp_ready ), // i, 1

    // Virtual to Physical DMA Data Write Request
    .dma_dv2p_dt_wr_req_valid ( dma_dv2p_wr_req_valid ), // o, 1
    .dma_dv2p_dt_wr_req_last  ( dma_dv2p_wr_req_last  ), // o, 1
    .dma_dv2p_dt_wr_req_data  ( dma_dv2p_wr_req_data  ), // o, C_DATA_WIDTH
    .dma_dv2p_dt_wr_req_head  ( dma_dv2p_wr_req_head  ), // o, DMA_HEAD_WIDTH
    .dma_dv2p_dt_wr_req_ready ( dma_dv2p_wr_req_ready ) , // i, 1
        // ADD 1 DMA read and response channel for v2p read RQ WQE
        // Virtual to Physical DMA RQ WQE Read Request
    .dma_dv2p_wqe_rd_req_valid (dma_dv2p_wqe_rd_req_valid),//output  wire                          
    .dma_dv2p_wqe_rd_req_last  (dma_dv2p_wqe_rd_req_last ),//output  wire                          
    .dma_dv2p_wqe_rd_req_data  (dma_dv2p_wqe_rd_req_data ),//output  wire [(C_DATA_WIDTH-1)  :0]   
    .dma_dv2p_wqe_rd_req_head  (dma_dv2p_wqe_rd_req_head ),//output  wire [(DMA_HEAD_WIDTH-1):0]   
    .dma_dv2p_wqe_rd_req_ready (dma_dv2p_wqe_rd_req_ready),//input   wire                          

        // Virtual to Physical DMA RQ WQE  Read Response
    .dma_dv2p_wqe_rd_rsp_valid (dma_dv2p_wqe_rd_rsp_valid),//input   wire                           
    .dma_dv2p_wqe_rd_rsp_last (dma_dv2p_wqe_rd_rsp_last) ,//input   wire                           
    .dma_dv2p_wqe_rd_rsp_data (dma_dv2p_wqe_rd_rsp_data) ,//input   wire [(C_DATA_WIDTH-1)  :0]    
    .dma_dv2p_wqe_rd_rsp_head (dma_dv2p_wqe_rd_rsp_head) ,//input   wire [(DMA_HEAD_WIDTH-1):0]    
    .dma_dv2p_wqe_rd_rsp_ready (dma_dv2p_wqe_rd_rsp_ready),//output  wire                           
    // End Virt2Phys Relevant
    /* -------dma interface{end}------- */

    /*Interface with EthSubsystem*/
    //Rx 
	.o_roce_prog_full(w_roce_prog_full),
	.iv_roce_data(wv_roce_ingress_data),
	.i_roce_wr_en(w_roce_wr_en),
	
	//Tx
	.o_tx_desc_empty(w_tx_desc_empty),
	.ov_tx_desc_data(wv_tx_desc_data),
	.i_tx_desc_rd_en(w_tx_desc_rd_en),
	
	.o_roce_empty(w_roce_empty),
	.ov_roce_data(wv_roce_egress_data),
	.i_roce_rd_en(w_roce_rd_en),

    /* -------Interact with Link Layer{begin}------- */
	/*Interface with Link Layer*/
		/*Interface with TX HPC Link, AXIS Interface*/
	.o_hpc_tx_valid(o_hpc_tx_valid),
	.o_hpc_tx_last(o_hpc_tx_last),
	.ov_hpc_tx_data(ov_hpc_tx_data),
	.ov_hpc_tx_keep(wv_hpc_tx_keep),
	.i_hpc_tx_ready(i_hpc_tx_ready),
	.o_hpc_tx_start(o_hpc_tx_start), 		//Indicates start of the packet
	.ov_hpc_tx_user(ov_hpc_tx_user), 	 	//Indicates length of the packet, in unit of 128 Byte, round up to 128

	/*Interface with RX HPC Link, AXIS Interface*/
		/*interface to LinkLayer Rx  */
	.i_hpc_rx_valid(i_hpc_rx_valid),
	.i_hpc_rx_last(i_hpc_rx_last),
	.iv_hpc_rx_data(iv_hpc_rx_data),
	.iv_hpc_rx_keep(wv_hpc_rx_keep),
	.o_hpc_rx_ready(o_hpc_rx_ready),
	.i_hpc_rx_start(i_hpc_rx_start),
	.iv_hpc_rx_user(iv_hpc_rx_user)
    /* -------Interact with Link Layer{end}------- */
);

assign ov_eth_tx_keep = wv_eth_tx_keep;

assign wv_eth_rx_keep = iv_eth_rx_keep;

assign wv_hpc_rx_keep = (iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0000_0001) ? 'd1 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0000_0011) ? 'd2 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0000_0111) ? 'd3 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0000_1111) ? 'd4 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0001_1111) ? 'd5 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0011_1111) ? 'd6 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0111_1111) ? 'd7 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_1111_1111) ? 'd8 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0001_1111_1111) ? 'd9 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0011_1111_1111) ? 'd10 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0111_1111_1111) ? 'd11 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_1111_1111_1111) ? 'd12 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0001_1111_1111_1111) ? 'd13 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0011_1111_1111_1111) ? 'd14 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0111_1111_1111_1111) ? 'd15 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_1111_1111_1111_1111) ? 'd16 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0001_1111_1111_1111_1111) ? 'd17 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0011_1111_1111_1111_1111) ? 'd18 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0111_1111_1111_1111_1111) ? 'd19 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_1111_1111_1111_1111_1111) ? 'd20 :
						(iv_hpc_rx_keep == 32'b0000_0000_0001_1111_1111_1111_1111_1111) ? 'd21 :
						(iv_hpc_rx_keep == 32'b0000_0000_0011_1111_1111_1111_1111_1111) ? 'd22 :
						(iv_hpc_rx_keep == 32'b0000_0000_0111_1111_1111_1111_1111_1111) ? 'd23 :
						(iv_hpc_rx_keep == 32'b0000_0000_1111_1111_1111_1111_1111_1111) ? 'd24 :
						(iv_hpc_rx_keep == 32'b0000_0001_1111_1111_1111_1111_1111_1111) ? 'd25 :
						(iv_hpc_rx_keep == 32'b0000_0011_1111_1111_1111_1111_1111_1111) ? 'd26 :
						(iv_hpc_rx_keep == 32'b0000_0111_1111_1111_1111_1111_1111_1111) ? 'd27 :
						(iv_hpc_rx_keep == 32'b0000_1111_1111_1111_1111_1111_1111_1111) ? 'd28 :
						(iv_hpc_rx_keep == 32'b0001_1111_1111_1111_1111_1111_1111_1111) ? 'd29 :
						(iv_hpc_rx_keep == 32'b0011_1111_1111_1111_1111_1111_1111_1111) ? 'd30 :
						(iv_hpc_rx_keep == 32'b0111_1111_1111_1111_1111_1111_1111_1111) ? 'd31 :
						(iv_hpc_rx_keep == 32'b1111_1111_1111_1111_1111_1111_1111_1111) ? 'd0 :
						(iv_hpc_rx_keep == 32'b0000_0000_0000_0000_0000_0000_0000_0000) ? 'd0 : 'd0;

assign ov_hpc_tx_keep = (wv_hpc_tx_keep == 'd1 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0001 : 
						(wv_hpc_tx_keep == 'd2 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0011 :
						(wv_hpc_tx_keep == 'd3 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0111 :
						(wv_hpc_tx_keep == 'd4 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_1111 :
						(wv_hpc_tx_keep == 'd5 ) ? 32'b0000_0000_0000_0000_0000_0000_0001_1111 :
						(wv_hpc_tx_keep == 'd6 ) ? 32'b0000_0000_0000_0000_0000_0000_0011_1111 :
						(wv_hpc_tx_keep == 'd7 ) ? 32'b0000_0000_0000_0000_0000_0000_0111_1111 :
						(wv_hpc_tx_keep == 'd8 ) ? 32'b0000_0000_0000_0000_0000_0000_1111_1111 :
						(wv_hpc_tx_keep == 'd9 ) ? 32'b0000_0000_0000_0000_0000_0001_1111_1111 :
						(wv_hpc_tx_keep == 'd10) ? 32'b0000_0000_0000_0000_0000_0011_1111_1111 :
						(wv_hpc_tx_keep == 'd11) ? 32'b0000_0000_0000_0000_0000_0111_1111_1111 :
						(wv_hpc_tx_keep == 'd12) ? 32'b0000_0000_0000_0000_0000_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd13) ? 32'b0000_0000_0000_0000_0001_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd14) ? 32'b0000_0000_0000_0000_0011_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd15) ? 32'b0000_0000_0000_0000_0111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd16) ? 32'b0000_0000_0000_0000_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd17) ? 32'b0000_0000_0000_0001_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd18) ? 32'b0000_0000_0000_0011_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd19) ? 32'b0000_0000_0000_0111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd20) ? 32'b0000_0000_0000_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd21) ? 32'b0000_0000_0001_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd22) ? 32'b0000_0000_0011_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd23) ? 32'b0000_0000_0111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd24) ? 32'b0000_0000_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd25) ? 32'b0000_0001_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd26) ? 32'b0000_0011_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd27) ? 32'b0000_0111_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd28) ? 32'b0000_1111_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd29) ? 32'b0001_1111_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd30) ? 32'b0011_1111_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd31) ? 32'b0111_1111_1111_1111_1111_1111_1111_1111 :
						(wv_hpc_tx_keep == 'd0 ) ? 32'b1111_1111_1111_1111_1111_1111_1111_1111 : 'd0;

eth_engine_top#()
Eth_Inst
(
	.clk(nic_clk),
	.rst_n(rst),
	
	/* -------interface to mac {begin}------- */
	/*interface to mac rx  */
	
	.axis_rx_valid(i_eth_rx_valid),
	.axis_rx_last(i_eth_rx_last),
	.axis_rx_data(iv_eth_rx_data),
	//.axis_rx_data_be(iv_eth_rx_keep),
	.axis_rx_data_be(wv_eth_rx_keep),
	.axis_rx_ready(o_eth_rx_ready),
	.axis_rx_user(iv_eth_rx_user),
	.axis_rx_start(i_eth_rx_start),
	
	/*interface to mac tx  */
	.axis_tx_valid(o_eth_tx_valid),
	.axis_tx_last(o_eth_tx_last),
	.axis_tx_data(ov_eth_tx_data),
	//.axis_tx_data_be(ov_eth_tx_keep),
	.axis_tx_data_be(wv_eth_tx_keep),
	.axis_tx_ready(i_eth_tx_ready),
	.axis_tx_user(ov_eth_tx_user),
	.axis_tx_start(o_eth_tx_start),
	/* -------interface to mac {end}------- */
	
	
	/* to dma module, to get the desc */
	.rx_desc_dma_req_valid(dma_rx_desc_rd_req_valid),
	.rx_desc_dma_req_last(dma_rx_desc_rd_req_last),
	.rx_desc_dma_req_data(dma_rx_desc_rd_req_data),
	.rx_desc_dma_req_head(dma_rx_desc_rd_req_head),
	.rx_desc_dma_req_ready(dma_rx_desc_rd_req_ready),
	
	.rx_desc_dma_rsp_valid(dma_rx_desc_rd_rsp_valid),
	.rx_desc_dma_rsp_last(dma_rx_desc_rd_rsp_last),
	.rx_desc_dma_rsp_data(dma_rx_desc_rd_rsp_data),
	.rx_desc_dma_rsp_head(dma_rx_desc_rd_rsp_head),
	.rx_desc_dma_rsp_ready(dma_rx_desc_rd_rsp_ready),
	/* -------to dma module, to get the desc{end}------- */
	
	/* -------to dma module , to write the frame{begin}------- */
	.rx_axis_wr_valid(dma_rx_axis_wr_req_valid),
	.rx_axis_wr_last(dma_rx_axis_wr_req_last),
	.rx_axis_wr_data(dma_rx_axis_wr_req_data),
	.rx_axis_wr_head(dma_rx_axis_wr_req_head),
	.rx_axis_wr_ready(dma_rx_axis_wr_req_ready),
	/* -------to dma module , to write the frame{end}-------*/
	
	/* to dma module, to get the desc */
	.tx_desc_dma_req_valid(dma_tx_desc_rd_req_valid),
	.tx_desc_dma_req_last(dma_tx_desc_rd_req_last),
	.tx_desc_dma_req_data(dma_tx_desc_rd_req_data),
	.tx_desc_dma_req_head(dma_tx_desc_rd_req_head),
	.tx_desc_dma_req_ready(dma_tx_desc_rd_req_ready),
	
	/* to dma module, to get the desc */
	.tx_desc_dma_rsp_valid(dma_tx_desc_rd_rsp_valid),
	.tx_desc_dma_rsp_data(dma_tx_desc_rd_rsp_data),
	.tx_desc_dma_rsp_head(dma_tx_desc_rd_rsp_head),
	.tx_desc_dma_rsp_last(dma_tx_desc_rd_rsp_last),
	.tx_desc_dma_rsp_ready(dma_tx_desc_rd_rsp_ready),
	
	/* to dma module, to get the frame */
	.tx_frame_req_valid(dma_tx_frame_rd_req_valid),
	.tx_frame_req_last(dma_tx_frame_rd_req_last),
	.tx_frame_req_data(dma_tx_frame_rd_req_data),
	.tx_frame_req_head(dma_tx_frame_rd_req_head),
	.tx_frame_req_ready(dma_tx_frame_rd_req_ready),
	
	/* interface to dma */
	.tx_frame_rsp_valid(dma_tx_frame_rd_rsp_valid),
	.tx_frame_rsp_data(dma_tx_frame_rd_rsp_data),
	.tx_frame_rsp_head(dma_tx_frame_rd_rsp_head),
	.tx_frame_rsp_last(dma_tx_frame_rd_rsp_last),
	.tx_frame_rsp_ready(dma_tx_frame_rd_rsp_ready),
	
	/* completion data dma interface */
	.tx_axis_wr_valid(dma_tx_axis_wr_req_valid),
	.tx_axis_wr_data(dma_tx_axis_wr_req_data),
	.tx_axis_wr_head(dma_tx_axis_wr_req_head),
	.tx_axis_wr_last(dma_tx_axis_wr_req_last),
	.tx_axis_wr_ready(dma_tx_axis_wr_req_ready),
	
	
	/*interface to roce rx  */
	.i_roce_prog_full(w_roce_prog_full),
	.ov_roce_data(wv_roce_ingress_data),
	.o_roce_wr_en(w_roce_wr_en),
	
	/* input from roce desc, request for a desc */
	.i_tx_desc_empty(w_tx_desc_empty),
	.iv_tx_desc_data(wv_tx_desc_data),
	.o_tx_desc_rd_en(w_tx_desc_rd_en),
	
	.i_roce_empty(w_roce_empty),
	.iv_roce_data(wv_roce_egress_data),
	.o_roce_rd_en(w_roce_rd_en),
	
	// Write Address Channel from Master 1
	.awvalid_m(m_axi_awvalid),
	//Modifier-YF
	.awaddr_m({8'd0, m_axi_awaddr}),
	.awready_m(m_axi_awready),
	
	// Write Data Channel from Master 1
	.wvalid_m(m_axi_wvalid),
	.wdata_m(m_axi_wdata),
	.wstrb_m(m_axi_wstrb),
	.wready_m(m_axi_wready),
	// Write Response Channel from Master 1
	.bvalid_m(m_axi_bvalid),
	.bready_m(m_axi_bready),
	// Read Address Channel from Master 1
	.arvalid_m(m_axi_arvalid),
	//Modifier-YF
	.araddr_m({8'd0, m_axi_araddr}),
	.arready_m(m_axi_arready),
	
	// Read Data Channel from Master 1
	.rvalid_m(m_axi_rvalid),
	.rdata_m(m_axi_rdata),
	.rready_m(m_axi_rready)
);

endmodule
