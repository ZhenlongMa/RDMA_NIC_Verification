//CREATE INFORMATION
//----------------------------------------------------------------------------
//
//  (C) COPYRIGHT 2021 BY ICT-HPC CORPORATION ALL RIGHTS RESERVED
//  DATE     : 2022-01-21
//  AUTHOR   : mazhenlong@ncic.ac.cn
//  FILENAME : hca_host_node6.v
//  FUNCTION : This file supplies the top module of HCA.
//
//----------------------------------------------------------------------------

//CHANGE HISTORY
//----------------------------------------------------------------------------
//
//  AUTHOR          DATE          VERSION          REASON
//  mazhenlong      2022-01-21    v1.0             create
//  mazhenlong      2022-01-27    v1.1             change hca_host to hca_host_node6
//  mazhenlong      2022-02-15    v1.2             change hca_host_node6 to hca_host
//                                                 remove direct network interface
//
//----------------------------------------------------------------------------

`ifndef __HCA_HOST__
`define __HCA_HOST__
//------------------------------------------------------------------------------
//
// MODULE: hca_host
//
//------------------------------------------------------------------------------
module hca_host #(
    parameter           C_DATA_WIDTH            = `DATA_WIDTH,         // RX/TX interface data width
    parameter           KEEP_WIDTH              = C_DATA_WIDTH / 32,
    parameter           DMA_HEAD_WIDTH          = `DMA_HEAD_WIDTH,
    parameter           NIC_DATA_WIDTH          = 256,
    parameter           NIC_KEEP_WIDTH          = 32,
    parameter           LINK_LAYER_USER_WIDTH   = 7
)(
//----------------------------------------------------------
//  Control Interface                           
//----------------------------------------------------------
    input                                        sys_clk, 
    input                                        pcie_clk,
    input                                        rdma_clk,
    input                                        user_reset,
    input                                        user_lnk_up,
    output                                       cmd_rst,

//----------------------------------------------------------
//  RDMA Interface                           
//----------------------------------------------------------
    input                              [2:0]     cfg_max_payload,
    input                              [2:0]     cfg_max_read_req,

    output                                       s_axis_rq_tlast,
    output                 [C_DATA_WIDTH-1:0]    s_axis_rq_tdata,
    output                             [59:0]    s_axis_rq_tuser,
    output                   [KEEP_WIDTH-1:0]    s_axis_rq_tkeep,
    input                                        s_axis_rq_tready,
    output                                       s_axis_rq_tvalid,

    input                  [C_DATA_WIDTH-1:0]    m_axis_rc_tdata,
    input                              [74:0]    m_axis_rc_tuser,
    input                                        m_axis_rc_tlast,
    input                    [KEEP_WIDTH-1:0]    m_axis_rc_tkeep,
    input                                        m_axis_rc_tvalid,
    output                                       m_axis_rc_tready,

    input                  [C_DATA_WIDTH-1:0]    m_axis_cq_tdata,
    input                              [84:0]    m_axis_cq_tuser,
    input                                        m_axis_cq_tlast,
    input                    [KEEP_WIDTH-1:0]    m_axis_cq_tkeep,
    input                                        m_axis_cq_tvalid,
    output                                       m_axis_cq_tready,

    output                 [C_DATA_WIDTH-1:0]    s_axis_cc_tdata,
    output                             [32:0]    s_axis_cc_tuser,
    output                                       s_axis_cc_tlast,
    output                   [KEEP_WIDTH-1:0]    s_axis_cc_tkeep,
    output                                       s_axis_cc_tvalid,
    input                                        s_axis_cc_tready,

    output                                                  o_hpc_tx_valid,
    output                                                  o_hpc_tx_last ,
    output              [NIC_DATA_WIDTH - 1 : 0]            ov_hpc_tx_data,
    output              [NIC_KEEP_WIDTH - 1 : 0]            ov_hpc_tx_keep,
    input                                                   i_hpc_tx_ready,
    output                                                  o_hpc_tx_start,
    output              [LINK_LAYER_USER_WIDTH - 1 : 0]     ov_hpc_tx_user,

    input                                                   i_hpc_rx_valid,
    input                                                   i_hpc_rx_last ,
    input               [NIC_DATA_WIDTH - 1 : 0]            iv_hpc_rx_data,
    input               [NIC_KEEP_WIDTH - 1 : 0]            iv_hpc_rx_keep,
    output                                                  o_hpc_rx_ready,
    input                                                   i_hpc_rx_start,
    input               [LINK_LAYER_USER_WIDTH - 1 : 0]     iv_hpc_rx_user
);

// wire                                        rdma_clk;

//----------------------------------------------------------------------------------------------------------------//
//    System(SYS) Interface                                                                                       //
//----------------------------------------------------------------------------------------------------------------//

/* -------pio interface{begin}------- */
wire [63:0] pio_hcr_in_param    ;
wire [31:0] pio_hcr_in_modifier ;
wire [63:0] pio_hcr_out_dma_addr;
wire [63:0] pio_hcr_out_param   ;
wire [31:0] pio_hcr_token       ;
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

/* -------dma interface{begin}------- */
/* dma_*_head(interact with RDMA modules), valid only in first beat of a packet
* | Reserved | address | Reserved | Byte length |
* |  127:96  |  95:32  |  31:13   |    12:0     |
*/
// CEU Relevant
// CEU Read Req
wire                           dma_ceu_rd_req_valid;
wire                           dma_ceu_rd_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_ceu_rd_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_ceu_rd_req_head ;
wire                           dma_ceu_rd_req_ready;

// CEU DMA Read Resp
wire                           dma_ceu_rd_rsp_valid;
wire                           dma_ceu_rd_rsp_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_ceu_rd_rsp_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_ceu_rd_rsp_head ;
wire                           dma_ceu_rd_rsp_ready;

// CEU DMA Write Req
wire                           dma_ceu_wr_req_valid;
wire                           dma_ceu_wr_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_ceu_wr_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_ceu_wr_req_head ;
wire                           dma_ceu_wr_req_ready;
// End CEU Relevant


// CxtMgt Relevant
// Context Management DMA Read Request
wire                           dma_cm_rd_req_valid;
wire                           dma_cm_rd_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cm_rd_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cm_rd_req_head ;
wire                           dma_cm_rd_req_ready;

// Context Management DMA Read Response
wire                           dma_cm_rd_rsp_valid;
wire                           dma_cm_rd_rsp_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cm_rd_rsp_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cm_rd_rsp_head ;
wire                           dma_cm_rd_rsp_ready;

// Context Management DMA Write Request
wire                           dma_cm_wr_req_valid;
wire                           dma_cm_wr_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cm_wr_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cm_wr_req_head ;
wire                           dma_cm_wr_req_ready;
// End CxtMgt Relevant


// Virt2Phys Relevant
// Virtual to Physical DMA Context Read Request(MPT)
wire                           dma_cv2p_mpt_rd_req_valid;
wire                           dma_cv2p_mpt_rd_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mpt_rd_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mpt_rd_req_head ;
wire                           dma_cv2p_mpt_rd_req_ready;

// Virtual to Physical DMA Context Read Response
wire                           dma_cv2p_mpt_rd_rsp_valid;
wire                           dma_cv2p_mpt_rd_rsp_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mpt_rd_rsp_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mpt_rd_rsp_head ;
wire                           dma_cv2p_mpt_rd_rsp_ready;

// Virtual to Physical DMA Context Write Request
wire                           dma_cv2p_mpt_wr_req_valid;
wire                           dma_cv2p_mpt_wr_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mpt_wr_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mpt_wr_req_head ;
wire                           dma_cv2p_mpt_wr_req_ready;

wire                           dma_cv2p_mtt_rd_req_valid;
wire                           dma_cv2p_mtt_rd_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mtt_rd_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mtt_rd_req_head ;
wire                           dma_cv2p_mtt_rd_req_ready;

// Virtual to Physical DMA Context Read Response
wire                           dma_cv2p_mtt_rd_rsp_valid;
wire                           dma_cv2p_mtt_rd_rsp_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mtt_rd_rsp_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mtt_rd_rsp_head ;
wire                           dma_cv2p_mtt_rd_rsp_ready;

// Virtual to Physical DMA Context Write Request
wire                           dma_cv2p_mtt_wr_req_valid;
wire                           dma_cv2p_mtt_wr_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_cv2p_mtt_wr_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_cv2p_mtt_wr_req_head ;
wire                           dma_cv2p_mtt_wr_req_ready;

// Virtual to Physical DMA Data Read Request
wire                           dma_dv2p_rd_req_valid;
wire                           dma_dv2p_rd_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_dv2p_rd_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_dv2p_rd_req_head ;
wire                           dma_dv2p_rd_req_ready;

// Virtual to Physical DMA Data Read Response
wire                           dma_dv2p_rd_rsp_valid;
wire                           dma_dv2p_rd_rsp_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_dv2p_rd_rsp_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_dv2p_rd_rsp_head ;
wire                           dma_dv2p_rd_rsp_ready;

// Virtual to Physical DMA Data Write Request
wire                           dma_dv2p_wr_req_valid;
wire                           dma_dv2p_wr_req_last ;
wire [(C_DATA_WIDTH-1)  :0]    dma_dv2p_wr_req_data ;
wire [(DMA_HEAD_WIDTH-1):0]    dma_dv2p_wr_req_head ;
wire                           dma_dv2p_wr_req_ready;

wire                           dma_dv2p_wqe_rd_req_valid;
wire                           dma_dv2p_wqe_rd_req_last ;
wire  [(C_DATA_WIDTH-1)  :0]   dma_dv2p_wqe_rd_req_data ;
wire  [(DMA_HEAD_WIDTH-1):0]   dma_dv2p_wqe_rd_req_head ;
wire                           dma_dv2p_wqe_rd_req_ready;

wire                           dma_dv2p_wqe_rd_rsp_valid;
wire                           dma_dv2p_wqe_rd_rsp_last ;
wire  [(C_DATA_WIDTH-1)  :0]   dma_dv2p_wqe_rd_rsp_data ;
wire  [(DMA_HEAD_WIDTH-1):0]   dma_dv2p_wqe_rd_rsp_head ;
wire                           dma_dv2p_wqe_rd_rsp_ready;
// End Virt2Phys Relevant
/* -------dma interface{end}------- */

wire                w_tx_pkt_prog_full;
wire                w_tx_pkt_wr_en;
wire    [255:0]      wv_tx_pkt_din;
wire                w_tx_pkt_empty;
wire                w_tx_pkt_rd_en;
wire    [255:0]      wv_tx_pkt_dout;

wire                w_rx_pkt_prog_full;
wire                w_rx_pkt_wr_en;
wire    [255:0]      wv_rx_pkt_din;
wire                w_rx_pkt_empty;
wire                w_rx_pkt_rd_en;
wire    [255:0]      wv_rx_pkt_dout;

NIC NIC_Top #(
    parameter          C_DATA_WIDTH                        = C_DATA_WIDTH,         // RX/TX interface data width
    parameter          KEEP_WIDTH                          = KEEP_WIDTH,

    // defined for pcie interface
    parameter          DMA_HEAD_WIDTH                 = DMA_HEAD_WIDTH      ,
    parameter          AXIL_DATA_WIDTH                = 32       ,
    parameter          AXIL_ADDR_WIDTH                = 24       ,
    parameter          ETHER_BASE                     = 24'h0    ,
    parameter          ETHER_LEN                      = 24'h1000 ,
    parameter          DB_BASE                        = 12'h0    ,
    parameter          HCR_BASE                       = 20'h80000,
    parameter          AXIL_STRB_WIDTH                = (AXIL_DATA_WIDTH/8),
    parameter          NIC_DATA_WIDTH                  = NIC_DATA_WIDTH,
    parameter          NIC_KEEP_WIDTH                  = NIC_KEEP_WIDTH,
    parameter          LINK_LAYER_USER_WIDTH           = LINK_LAYER_USER_WIDTH,
    parameter          RW_REG_NUM                      = 1024,
    parameter          RO_REG_NUM                      = 4096
)
(
    input   wire                                        rst,
    inout   wire                                        pcie_clk,
    input   wire                                        nic_clk,

/*Interface with PCIe Subsystem*/
    s_axis_rq_tvalid(s_axis_rq_tvalid),
    s_axis_rq_tlast (s_axis_rq_tlast ),
    s_axis_rq_tkeep (s_axis_rq_tkeep ),
    s_axis_rq_tuser (s_axis_rq_tuser ),
    s_axis_rq_tdata (s_axis_rq_tdata ),
    s_axis_rq_tready(s_axis_rq_tready),

    m_axis_rc_tvalid(m_axis_rc_tvalid),
    m_axis_rc_tlast (m_axis_rc_tlast ),
    m_axis_rc_tkeep (m_axis_rc_tkeep ),
    m_axis_rc_tuser (m_axis_rc_tuser ),
    m_axis_rc_tdata (m_axis_rc_tdata ),
    m_axis_rc_tready(m_axis_rc_tready),

    m_axis_cq_tvalid(m_axis_cq_tvalid),
    m_axis_cq_tlast (m_axis_cq_tlast ),
    m_axis_cq_tkeep (m_axis_cq_tkeep ),
    m_axis_cq_tuser (m_axis_cq_tuser ),
    m_axis_cq_tdata (m_axis_cq_tdata ),
    m_axis_cq_tready(m_axis_cq_tready),

    s_axis_cc_tvalid(s_axis_cc_tvalid),
    s_axis_cc_tlast (s_axis_cc_tlast ),
    s_axis_cc_tkeep (s_axis_cc_tkeep ),
    s_axis_cc_tuser (s_axis_cc_tuser ),
    s_axis_cc_tdata (s_axis_cc_tdata ),
    s_axis_cc_tready(s_axis_cc_tready),
    /* ------- AXI Interface{end}------- */

    // Configuration (CFG) Interface
    cfg_max_payload ,
    cfg_max_read_req,

    // Interrupt Interface Signals                      
    input      	wire    [1:0]                           cfg_interrupt_msix_enable,
    input      	wire    [1:0]                           cfg_interrupt_msix_mask,
    output 		wire    [31:0]                          cfg_interrupt_msix_data,
    output 		wire    [63:0]                          cfg_interrupt_msix_address,
    output 		wire                                    cfg_interrupt_msix_int,
    input 		wire                                    cfg_interrupt_msix_sent,
    input 		wire                                    cfg_interrupt_msix_fail,
    output 		wire 	[2:0]                           cfg_interrupt_msi_function_number,

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
endmodule: hca_host
`endif