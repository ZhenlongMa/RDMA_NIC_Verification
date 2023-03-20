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
    parameter           NIC_KEEP_WIDTH          = 5,
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

//------------------------------------------------------------------------------------------------------------------//
//       PIO Example Design Top Level                                                                               //
//------------------------------------------------------------------------------------------------------------------//
// PCIE_TRANS_INTERFACE #(
PCIe_Interface #(
    .DMA_HEAD_WIDTH ( DMA_HEAD_WIDTH ),            // DMA Stream *_head signal width
    .C_DATA_WIDTH   ( C_DATA_WIDTH   ),
    .KEEP_WIDTH     ( C_DATA_WIDTH / 32)
) PCIE_TRANS_INTERFACE_inst (
    .pcie_clk                                       ( pcie_clk    ),
    .rdma_clk                                       ( rdma_clk    ),
    .user_reset                                     ( user_reset  ),
    
    /* -------Reset signal{begin}------- */
    .cmd_rst                                        ( cmd_rst     ), // o, 1
    /* -------Reset signal{end}------- */
    //-------------------------------------------------------------------------------------//
    //  AXI Interface                                                                      //
    //-------------------------------------------------------------------------------------//
    /* -------Requester Request{begin}------- */
    /*  RQ head
     * |  59:28 |  27:24  |    23:16   |          15         |   14:13  |      12     |     11      |     10:8    |   7:4   |    3:0   |
     * | parity | seq_num | tph_st_tag | tph_indirect_tag_en | tph_type | tph_present | discontinue | addr_offset | last_be | first_be |
     * |   0    |   0     |     0      |          0          |     0    |      0      |      0      |      0      |         |          |
     */
    .s_axis_rq_tlast                                ( s_axis_rq_tlast ),
    .s_axis_rq_tdata                                ( s_axis_rq_tdata ),
    .s_axis_rq_tuser                                ( s_axis_rq_tuser ),
    .s_axis_rq_tkeep                                ( s_axis_rq_tkeep ),
    .s_axis_rq_tready                               ( s_axis_rq_tready[0] ),
    .s_axis_rq_tvalid                               ( s_axis_rq_tvalid ),
    /* -------Requester Request{end}------- */

    /* -------Requester Completion{begin}------- */
    /*  RC head
     * |  74:43 |      42     |    41:38   |  37:34   |    33    |    32    |  31:0   |  
     * | parity | discontinue |  is_eof_1  | is_eof_0 | is_sof_1 | is_sof_0 | byte_en |
     * | ignore |   ignore    |  ignore    | ignore   |  ignore  |  ignore  |         |
     */
    .m_axis_rc_tdata                                ( m_axis_rc_tdata ),
    .m_axis_rc_tuser                                ( m_axis_rc_tuser ),
    .m_axis_rc_tlast                                ( m_axis_rc_tlast ),
    .m_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
    .m_axis_rc_tvalid                               ( m_axis_rc_tvalid ),
    .m_axis_rc_tready                               ( m_axis_rc_tready ),
    /* -------Requester Completion{end}------- */

    /* -------Completer Requester{begin}------- */
    /*  CQ head
     * |  84:53 |    52:45   |   44:43  |      42     |     41      | 40  |  39:8   |   7:4   |    3:0   |
     * | parity | tph_st_tag | tph_type | tph_present | discontinue | sop | byte_en | last_be | first_be |
     * |   0    |     0      |     0    |             |             |     | ignore  |         |          |
     */
    .m_axis_cq_tdata                                ( m_axis_cq_tdata ),
    .m_axis_cq_tuser                                ( m_axis_cq_tuser ),
    .m_axis_cq_tlast                                ( m_axis_cq_tlast ),
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep ),
    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid ),
    .m_axis_cq_tready                               ( m_axis_cq_tready ),

    // .pcie_cq_np_req                                 ( pcie_cq_np_req ),
    // .pcie_cq_np_req_count                           ( pcie_cq_np_req_count ),
    /* -------Completer Requester{end}------- */

    /* -------Completer Completion{begin}------- */
    /*  CC head
     * |  32:1  |      0      |
     * | parity | discontinue |
     * | ignore |   ignore    |
     */
    .s_axis_cc_tdata                                ( s_axis_cc_tdata ),
    .s_axis_cc_tuser                                ( s_axis_cc_tuser ),
    .s_axis_cc_tlast                                ( s_axis_cc_tlast ),
    .s_axis_cc_tkeep                                ( s_axis_cc_tkeep ),
    .s_axis_cc_tvalid                               ( s_axis_cc_tvalid ),
    .s_axis_cc_tready                               ( s_axis_cc_tready[0] ),
    /* -------Completer Completion{end}------- */

    //--------------------------------------------------------------------------------//
    //  Configuration (CFG) Interface                                                 //
    //--------------------------------------------------------------------------------//
    // /* -------Configuration Status Interface{begin}------- */
    .cfg_max_payload                                ( cfg_max_payload ),
    .cfg_max_read_req                               ( cfg_max_read_req ),
    // /* -------Configuration Status Interface{end}------- */

    // /* -------Configuration Interrupt Controller Interface{begin}------- */
    .cfg_interrupt_msix_enable                           (0),
    .cfg_interrupt_msix_mask                             (0),
    .cfg_interrupt_msix_data                             (),
    .cfg_interrupt_msix_address                          (),
    .cfg_interrupt_msix_int                              (),
    .cfg_interrupt_msix_sent                             (0),
    .cfg_interrupt_msix_fail                             (0),
    .cfg_interrupt_msi_function_number                   (),

    .m_axi_awaddr                                       (),
    .m_axi_awvalid                                      (),
    .m_axi_awready                                      (0),
    .m_axi_wdata                                        (),
    .m_axi_wstrb                                        (),
    .m_axi_wvalid                                       (),
    .m_axi_wready                                       (0),
    .m_axi_bvalid                                       (0),
    .m_axi_bready                                       (),
    .m_axi_araddr                                       (),
    .m_axi_arvalid                                      (),
    .m_axi_arready                                      (0),
    .m_axi_rdata                                        (0),
    .m_axi_rvalid                                       (0),
    .m_axi_rready                                       (),

    /* -------pio interface{begin}------- */
    .pio_hcr_in_param     ( pio_hcr_in_param     ), // o, 64
    .pio_hcr_in_modifier  ( pio_hcr_in_modifier  ), // o, 32
    .pio_hcr_out_dma_addr ( pio_hcr_out_dma_addr ), // o, 64
    .pio_hcr_out_param    ( pio_hcr_out_param    ), // i, 64
    .pio_hcr_token        ( pio_hcr_token        ), // o, 32
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

    /* -------dma interface{begin}------- */
    /* dma_*_head(interact with RDMA modules), valid only in first beat of a packet
     * | Reserved | address | Reserved | Byte length |
     * |  127:96  |  95:32  |  31:13   |    12:0     |
     */
    // Read Req
    .dma_rd_req_valid ({dma_ceu_rd_req_valid, dma_cm_rd_req_valid, dma_cv2p_mpt_rd_req_valid, dma_cv2p_mtt_rd_req_valid, dma_dv2p_wqe_rd_req_valid, dma_dv2p_rd_req_valid}), // i, `DMA_CHNL_NUM * 1             
    .dma_rd_req_last  ({dma_ceu_rd_req_last , dma_cm_rd_req_last , dma_cv2p_mpt_rd_req_last , dma_cv2p_mtt_rd_req_last , dma_dv2p_wqe_rd_req_last , dma_dv2p_rd_req_last }), // i, `DMA_CHNL_NUM * 1             
    .dma_rd_req_data  ({dma_ceu_rd_req_data , dma_cm_rd_req_data , dma_cv2p_mpt_rd_req_data , dma_cv2p_mtt_rd_req_data , dma_dv2p_wqe_rd_req_data , dma_dv2p_rd_req_data }), // i, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_rd_req_head  ({dma_ceu_rd_req_head , dma_cm_rd_req_head , dma_cv2p_mpt_rd_req_head , dma_cv2p_mtt_rd_req_head , dma_dv2p_wqe_rd_req_head , dma_dv2p_rd_req_head }), // i, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_rd_req_ready ({dma_ceu_rd_req_ready, dma_cm_rd_req_ready, dma_cv2p_mpt_rd_req_ready, dma_cv2p_mtt_rd_req_ready, dma_dv2p_wqe_rd_req_ready, dma_dv2p_rd_req_ready}), // o, `DMA_CHNL_NUM * 1             

    // DMA Read Resp
    .dma_rd_rsp_valid ( {dma_ceu_rd_rsp_valid, dma_cm_rd_rsp_valid, dma_cv2p_mpt_rd_rsp_valid, dma_cv2p_mtt_rd_rsp_valid, dma_dv2p_wqe_rd_rsp_valid, dma_dv2p_rd_rsp_valid} ), // o, `DMA_CHNL_NUM * 1             
    .dma_rd_rsp_last  ( {dma_ceu_rd_rsp_last , dma_cm_rd_rsp_last , dma_cv2p_mpt_rd_rsp_last , dma_cv2p_mtt_rd_rsp_last , dma_dv2p_wqe_rd_rsp_last , dma_dv2p_rd_rsp_last } ), // o, `DMA_CHNL_NUM * 1             
    .dma_rd_rsp_data  ( {dma_ceu_rd_rsp_data , dma_cm_rd_rsp_data , dma_cv2p_mpt_rd_rsp_data , dma_cv2p_mtt_rd_rsp_data , dma_dv2p_wqe_rd_rsp_data , dma_dv2p_rd_rsp_data } ), // o, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_rd_rsp_head  ( {dma_ceu_rd_rsp_head , dma_cm_rd_rsp_head , dma_cv2p_mpt_rd_rsp_head , dma_cv2p_mtt_rd_rsp_head , dma_dv2p_wqe_rd_rsp_head , dma_dv2p_rd_rsp_head } ), // o, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_rd_rsp_ready ( {dma_ceu_rd_rsp_ready, dma_cm_rd_rsp_ready, dma_cv2p_mpt_rd_rsp_ready, dma_cv2p_mtt_rd_rsp_ready, dma_dv2p_wqe_rd_rsp_ready, dma_dv2p_rd_rsp_ready} ), // i, `DMA_CHNL_NUM * 1             

    // DMA Write Req
    .dma_wr_req_valid ( {dma_ceu_wr_req_valid, dma_cm_wr_req_valid, dma_cv2p_mpt_wr_req_valid, dma_cv2p_mtt_wr_req_valid, dma_dv2p_wr_req_valid} ), // i, `DMA_CHNL_NUM * 1             
    .dma_wr_req_last  ( {dma_ceu_wr_req_last , dma_cm_wr_req_last , dma_cv2p_mpt_wr_req_last , dma_cv2p_mtt_wr_req_last , dma_dv2p_wr_req_last } ), // i, `DMA_CHNL_NUM * 1             
    .dma_wr_req_data  ( {dma_ceu_wr_req_data , dma_cm_wr_req_data , dma_cv2p_mpt_wr_req_data , dma_cv2p_mtt_wr_req_data , dma_dv2p_wr_req_data } ), // i, `DMA_CHNL_NUM * C_DATA_WIDTH  
    .dma_wr_req_head  ( {dma_ceu_wr_req_head , dma_cm_wr_req_head , dma_cv2p_mpt_wr_req_head , dma_cv2p_mtt_wr_req_head , dma_dv2p_wr_req_head } ), // i, `DMA_CHNL_NUM * DMA_HEAD_WIDTH
    .dma_wr_req_ready ( {dma_ceu_wr_req_ready, dma_cm_wr_req_ready, dma_cv2p_mpt_wr_req_ready, dma_cv2p_mtt_wr_req_ready, dma_dv2p_wr_req_ready} )  // o, `DMA_CHNL_NUM * 1             
    /* -------dma interface{end}------- */

    /* -------Interrupt interface{begin}------- */
    // !TODO
    /* -------Interrupt interface{end}------- */

);
/* -------NIC Relevant(Transport layer){begin}------- */

RDMA_Top #(
    .C_DATA_WIDTH   ( C_DATA_WIDTH   ),           // Stream Channel data width
    .DMA_HEAD_WIDTH ( DMA_HEAD_WIDTH )            // DMA Stream *_head signal width

) RDMA_inst (
    // .sys_clk  ( sys_clk     ), // i, 1
    // .user_clk  ( sys_clk),
    .clk    ( rdma_clk    ), // i, 1
    .rst    ( user_reset    ), // i, 1

    /* -------pio interface{begin}------- */
    .hcr_in_param     ( pio_hcr_in_param     ), // i, 64
    .hcr_in_modifier  ( pio_hcr_in_modifier  ), // i, 32
    .hcr_out_dma_addr ( pio_hcr_out_dma_addr ), // i, 64
    .hcr_out_param    ( pio_hcr_out_param    ), // o, 64
    .hcr_token        ( pio_hcr_token        ), // i, 32
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
    .dma_ceu_rd_rsp_valid ( dma_ceu_rd_rsp_valid ), // o, 1
    .dma_ceu_rd_rsp_last  ( dma_ceu_rd_rsp_last  ), // o, 1
    .dma_ceu_rd_rsp_data  ( dma_ceu_rd_rsp_data  ), // o, C_DATA_WIDTH
    .dma_ceu_rd_rsp_head  ( dma_ceu_rd_rsp_head  ), // o, DMA_HEAD_WIDTH
    .dma_ceu_rd_rsp_ready ( dma_ceu_rd_rsp_ready ), // i, 1

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
    .dma_dv2p_dt_wr_req_ready ( dma_dv2p_wr_req_ready ), // i, 1

    // Virtual to Physical DMA RQ WQE Read Request
    .dma_dv2p_wqe_rd_req_valid  (dma_dv2p_wqe_rd_req_valid),
    .dma_dv2p_wqe_rd_req_last   (dma_dv2p_wqe_rd_req_last ),
    .dma_dv2p_wqe_rd_req_data   (dma_dv2p_wqe_rd_req_data ),
    .dma_dv2p_wqe_rd_req_head   (dma_dv2p_wqe_rd_req_head ),
    .dma_dv2p_wqe_rd_req_ready  (dma_dv2p_wqe_rd_req_ready),

    .dma_dv2p_wqe_rd_rsp_valid  (dma_dv2p_wqe_rd_rsp_valid),
    .dma_dv2p_wqe_rd_rsp_last   (dma_dv2p_wqe_rd_rsp_last ),
    .dma_dv2p_wqe_rd_rsp_data   (dma_dv2p_wqe_rd_rsp_data ),
    .dma_dv2p_wqe_rd_rsp_head   (dma_dv2p_wqe_rd_rsp_head ),
    .dma_dv2p_wqe_rd_rsp_ready  (dma_dv2p_wqe_rd_rsp_ready),
    // End Virt2Phys Relevant
    /* -------dma interface{end}------- */

    /* -------Interrupt interface{begin}------- */
    // !TODO
    /* -------Interrupt interface{end}------- */

    /* -------Interact with Eth Subsystem{begin}------- */
    // Rx
    .o_roce_prog_full           (                   ),
    .iv_roce_data               ( 0                 ),
    .i_roce_wr_en               (0),
    // Tx
    .o_tx_desc_empty            (),
    .ov_tx_desc_data            (),
    .i_tx_desc_rd_en            (0),
    .o_roce_empty               (),
    .ov_roce_data               (),
    .i_roce_rd_en               (0),
    /* -------Interact with Eth Subsystemr{end}------- */

    /* -------Interact with Link Layer{begin}------- */
    .o_hpc_tx_valid             (o_hpc_tx_valid),
    .o_hpc_tx_last              (o_hpc_tx_last ),
    .ov_hpc_tx_data             (ov_hpc_tx_data),
    .ov_hpc_tx_keep             (ov_hpc_tx_keep),
    .i_hpc_tx_ready             (i_hpc_tx_ready),
    .o_hpc_tx_start             (o_hpc_tx_start),
    .ov_hpc_tx_user             (ov_hpc_tx_user),

    .i_hpc_rx_valid             (i_hpc_rx_valid),
    .i_hpc_rx_last              (i_hpc_rx_last ),
    .iv_hpc_rx_data             (iv_hpc_rx_data),
    .iv_hpc_rx_keep             (iv_hpc_rx_keep),
    .o_hpc_rx_ready             (o_hpc_rx_ready),
    .i_hpc_rx_start             (i_hpc_rx_start),
    .iv_hpc_rx_user             (iv_hpc_rx_user),
    /* -------Interact with Link Layer{end}------- */

    /* -------Interact with Cfg Subsystem{begin}------- */
    .iv_rw_data                 (0),
    .ov_ro_data                 (),
    .ov_dbg_bus                 ()
    /* -------Interact with Cfg Subsystem{end}------- */
);
/* -------NIC Relevant(Transport layer){end}------- */
endmodule: hca_host
`endif