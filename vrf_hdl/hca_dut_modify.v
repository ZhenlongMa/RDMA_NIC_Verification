`include "svt_apb_if.svi"
`include "apb_reset_if.svi"
module hca_dut_modify#(
//engine_top PARAMETER
    //NIC_TOP PARAMETERS
    parameter          C_DATA_WIDTH                        = 256,         // RX/TX interface data width
    parameter          KEEP_WIDTH                          = C_DATA_WIDTH / 32,

        // defined for pcie interface
    parameter          DMA_HEAD_WIDTH                 = 128      ,
    parameter          UPPER_HEAD_WIDTH               = 64 , 
    parameter          DOWN_HEAD_WIDTH                = 64 ,
    parameter          AXIL_DATA_WIDTH                = 32       ,
    parameter          AXIL_ADDR_WIDTH                = 24       ,
    parameter          ETH_BASE                     = 20'h1000    ,
    parameter          ETH_LEN                      = 20'h1000 ,
    parameter          P2P_BASE                     = 20'h2000 ,
    parameter          P2P_LEN                      = 20'h8000 , // 8KB is default
    parameter          DB_BASE                        = 12'h0    ,
    parameter          HCR_BASE                       = 20'h0,

    parameter          AXIL_STRB_WIDTH                = (AXIL_DATA_WIDTH/8),

    parameter 			ENGINE_NIC_DATA_WIDTH 					= 256,
    parameter 			ENGINE_NIC_KEEP_WIDTH 					= 32,
    parameter 			ENGINE_LINK_LAYER_USER_WIDTH 			= 7,

    parameter 			RW_REG_NUM 						= 128,
    parameter 			RO_REG_NUM 						= 128,
    //HOSTROUTE PARAMETERS
    parameter PORT_NUM_LOG_2 = 32'd4,
    parameter PORT_INDEX = 32'd0,
    parameter PORT_NUM = 32'd16,
    parameter QUEUE_DEPTH_LOG_2 = 10, 	//Maximum depth of one output queue is (1 << QUEUE_DEPTH)

        //Route Cfg Parameter
    parameter ROUTE_RO_REG_NUM = 32,
    parameter ROUTE_RW_REG_NUM = 32,

        //NIC Cfg Parameter
    parameter NIC_RO_REG_NUM = 128,
    parameter NIC_RW_REG_NUM = 128,

        //Link Cfg Parameter
    parameter LINK_RO_REG_NUM = 10,
    parameter LINK_RW_REG_NUM = 13,

        //Cfg Node Parameter
    parameter CFG_NODE_REG_BASE_ADDR  = 24'h10_0000,//
    parameter CFG_NODE_RW_REG_NUM = ROUTE_RW_REG_NUM + NIC_RW_REG_NUM + LINK_RW_REG_NUM + 32'd1,//read-writer register number,register data witdh is 32bit,
    parameter CFG_NODE_RO_BASE_ADDR  = 24'h30_0000,//configuration read only register base address  //
    parameter CFG_NODE_RO_REG_NUM = ROUTE_RO_REG_NUM + NIC_RO_REG_NUM + LINK_RO_REG_NUM + 32'd3, //read-only register number,register data witdh is 32bit, SUM max is 14'h3fff-3
    parameter CFG_NODE_BUS_BASE_ADDR  = 24'h70_0000, ////configuration bus base address	 //
    parameter CFG_NODE_BUS_ADDR_WIDTH = 0,

        //Phy cfg parameter
    parameter APB_SEL = 1'b0,
//PCIE_SUBSYS PARAMETERS 
    parameter G_NUM_FUNC             = 1,
    parameter G_NUM_LANES            = 8,
    parameter G_PIPE_WIDTH           = 'h44222,
    parameter G_PIPE_INTF            = 0,
    parameter G_RXBUF_LATENCY        = 11,
    parameter G_TXBUF_LATENCY        = 11,
    parameter G_NPBUF_SIZE           = 1,
    parameter G_NPBUF_WIDTH          = 4,
    parameter G_MAX_VF               = 0,
    parameter G_DATA_PROT            = 0,
    parameter G_DL_DATAPATH          = 8,
    parameter G_TL_DATAPATH          = 8,
    parameter PCIE_DATA_WIDTH             = 32,
    parameter PCIE_ADDR_WIDTH             = 18  
)(
        input                       nic_rst_n  ,
        input                       nic_clk    ,
        input                       mgmt_clk   ,
        input                       mgmt_rst_n ,
        input                       link_clk   ,
        input                       link_rst_n ,
        input                       cpu_clk_i  ,
        input                       sys_npor,

        output                      axis_clk_0,
        output                      axis_rst_n_0,
        output                      axis_clk_1,
        output                      axis_rst_n_1,


    //----------------------------------------------------------
    //  Host A RDMA Interface                           
    //----------------------------------------------------------
    input                                        a_sys_clk,
    input                                        a_pcie_clk,
    input                                        a_rdma_clk,
    input                                        a_user_reset,
    input                                        a_user_lnk_up,
    output                                       a_cmd_rst,

    input                              [2:0]     a_cfg_max_payload,
    input                              [2:0]     a_cfg_max_read_req,

    output                                       a_s_axis_rq_tlast,
    output                 [C_DATA_WIDTH-1:0]    a_s_axis_rq_tdata,
    output                             [59:0]    a_s_axis_rq_tuser,
    output                   [KEEP_WIDTH-1:0]    a_s_axis_rq_tkeep,
    input                                        a_s_axis_rq_tready,
    output                                       a_s_axis_rq_tvalid,

    input                  [C_DATA_WIDTH-1:0]    a_m_axis_rc_tdata,
    input                              [74:0]    a_m_axis_rc_tuser,
    input                                        a_m_axis_rc_tlast,
    input                    [KEEP_WIDTH-1:0]    a_m_axis_rc_tkeep,
    input                                        a_m_axis_rc_tvalid,
    output                                       a_m_axis_rc_tready,

    input                  [C_DATA_WIDTH-1:0]    a_m_axis_cq_tdata,
    input                              [84:0]    a_m_axis_cq_tuser,
    input                                        a_m_axis_cq_tlast,
    input                    [KEEP_WIDTH-1:0]    a_m_axis_cq_tkeep,
    input                                        a_m_axis_cq_tvalid,
    output                                       a_m_axis_cq_tready,

    output                 [C_DATA_WIDTH-1:0]    a_s_axis_cc_tdata,
    output                             [32:0]    a_s_axis_cc_tuser,
    output                                       a_s_axis_cc_tlast,
    output                   [KEEP_WIDTH-1:0]    a_s_axis_cc_tkeep,
    output                                       a_s_axis_cc_tvalid,
    input                                        a_s_axis_cc_tready,

    //----------------------------------------------------------
    //  Host B RDMA Interface                           
    //----------------------------------------------------------
    input                                        b_sys_clk,
    input                                        b_pcie_clk,
    input                                        b_rdma_clk,
    input                                        b_user_reset,
    input                                        b_user_lnk_up,
    output                                       b_cmd_rst,

    input                              [2:0]     b_cfg_max_payload,
    input                              [2:0]     b_cfg_max_read_req,

    output                                       b_s_axis_rq_tlast,
    output                 [C_DATA_WIDTH-1:0]    b_s_axis_rq_tdata,
    output                             [59:0]    b_s_axis_rq_tuser,
    output                   [KEEP_WIDTH-1:0]    b_s_axis_rq_tkeep,
    input                                        b_s_axis_rq_tready,
    output                                       b_s_axis_rq_tvalid,

    input                  [C_DATA_WIDTH-1:0]    b_m_axis_rc_tdata,
    input                              [74:0]    b_m_axis_rc_tuser,
    input                                        b_m_axis_rc_tlast,
    input                    [KEEP_WIDTH-1:0]    b_m_axis_rc_tkeep,
    input                                        b_m_axis_rc_tvalid,
    output                                       b_m_axis_rc_tready,

    input                  [C_DATA_WIDTH-1:0]    b_m_axis_cq_tdata,
    input                              [84:0]    b_m_axis_cq_tuser,
    input                                        b_m_axis_cq_tlast,
    input                    [KEEP_WIDTH-1:0]    b_m_axis_cq_tkeep,
    input                                        b_m_axis_cq_tvalid,
    output                                       b_m_axis_cq_tready,

    output                 [C_DATA_WIDTH-1:0]    b_s_axis_cc_tdata,
    output                             [32:0]    b_s_axis_cc_tuser,
    output                                       b_s_axis_cc_tlast,
    output                   [KEEP_WIDTH-1:0]    b_s_axis_cc_tkeep,
    output                                       b_s_axis_cc_tvalid,
    input                                        b_s_axis_cc_tready


);
    import uvm_pkg::*;
    //HPC Traffic in
       wire												    i_link_hpc_pkt_valid_0;
       wire 												i_link_hpc_pkt_start_0;
       wire 												i_link_hpc_pkt_end_0;
       wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			i_link_hpc_pkt_user_0;
       wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			i_link_hpc_pkt_keep_0;
       wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			    i_link_hpc_pkt_data_0;	
       wire 												i_link_hpc_pkt_ready_0;

        wire												o_link_hpc_pkt_valid_0;
        wire 												o_link_hpc_pkt_start_0;
        wire 												o_link_hpc_pkt_end_0;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			o_link_hpc_pkt_user_0;
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			o_link_hpc_pkt_keep_0;
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			o_link_hpc_pkt_data_0;	
        wire 												o_link_hpc_pkt_ready_0;

        //ETH Traffic in、			
        wire												link_eth_tx_pkt_valid_0;                            
        wire 												link_eth_tx_pkt_start_0;                            
        wire 												link_eth_tx_pkt_end_0  ;                            
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			link_eth_tx_pkt_user_0;                            
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			link_eth_tx_pkt_keep_0;                            
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			link_eth_tx_pkt_data_0;                            
        wire 												link_eth_tx_pkt_ready_0;

        wire												link_eth_rx_pkt_valid_0;
        wire 												link_eth_rx_pkt_start_0;
        wire 												link_eth_rx_pkt_end_0  ;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			link_eth_rx_pkt_user_0; 
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			link_eth_rx_pkt_keep_0; 
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			link_eth_rx_pkt_data_0; 
        wire 												link_eth_rx_pkt_ready_0;                            

        //HPC Traffic out
        wire												i_link_hpc_pkt_valid_1;
        wire 												i_link_hpc_pkt_start_1;
        wire 												i_link_hpc_pkt_end_1;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			i_link_hpc_pkt_user_1;
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			i_link_hpc_pkt_keep_1;
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			i_link_hpc_pkt_data_1;	
        wire 												i_link_hpc_pkt_ready_1;

        wire												o_link_hpc_pkt_valid_1;
        wire 												o_link_hpc_pkt_start_1;
        wire 												o_link_hpc_pkt_end_1;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			o_link_hpc_pkt_user_1;
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			o_link_hpc_pkt_keep_1;
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			o_link_hpc_pkt_data_1;	
        wire 												o_link_hpc_pkt_ready_1;
        //ETH Traffic out、			
        wire												link_eth_tx_pkt_valid_1;
        wire 												link_eth_tx_pkt_start_1;
        wire 												link_eth_tx_pkt_end_1;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			link_eth_tx_pkt_user_1;
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			link_eth_tx_pkt_keep_1;
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			link_eth_tx_pkt_data_1;
        wire 												link_eth_tx_pkt_ready_1;

        wire												link_eth_rx_pkt_valid_1;
        wire 												link_eth_rx_pkt_start_1;
        wire 												link_eth_rx_pkt_end_1;
        wire 	[`HOST_ROUTE_USER_WIDTH - 1 : 0]			link_eth_rx_pkt_user_1;
        wire 	[`HOST_ROUTE_KEEP_WIDTH - 1 : 0]			link_eth_rx_pkt_keep_1;
        wire	[`HOST_ROUTE_DATA_WIDTH - 1 : 0]			link_eth_rx_pkt_data_1;
        wire 												link_eth_rx_pkt_ready_1;

        parameter NIC_PERFORMACNE_REGS = 10;
        parameter NIC_CTRL_WIDTH       = 32;
        parameter NIC_USER_WIDTH       = 8;
        parameter DEMUX_QUEUE_WIDTH      = 135;
        parameter DEMUX_QUEUE_DEPTH_ADDR = 10;
        parameter LINK_LAYER_DATA_WIDTH = 128;
        parameter LINK_LAYER_CTRL_WIDTH = 16;

        wire  [4*11 -1 : 0]                                          u0_pkt_crdt_m;
        wire      [79+(NIC_PERFORMACNE_REGS*32):0]                   u0_iv_link_rw_data;
        wire      [79+(NIC_PERFORMACNE_REGS*32):0]                   u0_ov_link_init_rw_data;
        wire      [(NIC_PERFORMACNE_REGS*32)-1 :0]                   u0_ov_link_ro_data;              
        wire                                                         u0_o_nic_hpc_tx_rdy           ;
        wire   [ENGINE_NIC_DATA_WIDTH-1:0]                                  u0_iv_nic_hpc_tx_axis_data    ;
        wire   [NIC_CTRL_WIDTH-1:0]                                  u0_iv_nic_hpc_tx_axis_keep    ;
        wire                                                         u0_i_nic_hpc_tx_axis_start    ;
        wire                                                         u0_i_nic_hpc_tx_axis_end      ;
        wire                                                         u0_i_nic_hpc_tx_axis_valid    ;
        wire   [NIC_USER_WIDTH-1:0]                                  u0_iv_nic_hpc_tx_axis_user     ;
        wire                                                         u0_o_nic_eth_tx_rdy         ;
        wire     [ENGINE_NIC_DATA_WIDTH-1:0]                                u0_iv_nic_eth_tx_axis_data  ;
        wire     [NIC_CTRL_WIDTH-1:0]                                u0_iv_nic_eth_tx_axis_keep  ;
        wire                                                         u0_i_nic_eth_tx_axis_start  ;
        wire                                                         u0_i_nic_eth_tx_axis_end    ;
        wire                                                         u0_i_nic_eth_tx_axis_valid  ;
        wire     [NIC_USER_WIDTH-1:0]                                u0_iv_nic_eth_tx_axis_user   ;
        wire                                                         u0_i_nic_hpc_rx_rdy           ;
        wire    [ENGINE_NIC_DATA_WIDTH-1:0]                                 u0_ov_nic_hpc_rx_axis_data    ;
        wire    [NIC_CTRL_WIDTH-1:0]                                 u0_ov_nic_hpc_rx_axis_keep    ;
        wire                                                         u0_o_nic_hpc_rx_axis_start    ;
        wire                                                         u0_o_nic_hpc_rx_axis_end      ;
        wire                                                         u0_o_nic_hpc_rx_axis_valid    ;
        wire    [NIC_USER_WIDTH-2:0]                                 u0_ov_nic_hpc_rx_axis_user     ;
        wire                                                         u0_i_nic_eth_rx_rdy         ;
        wire      [ENGINE_NIC_DATA_WIDTH-1:0]                               u0_ov_nic_eth_rx_axis_data  ;
        wire      [NIC_CTRL_WIDTH-1:0]                               u0_ov_nic_eth_rx_axis_keep  ;
        wire                                                         u0_o_nic_eth_rx_axis_start  ;
        wire                                                         u0_o_nic_eth_rx_axis_end    ;
        wire                                                         u0_o_nic_eth_rx_axis_valid  ;
        wire      [NIC_USER_WIDTH-2:0]                               u0_ov_nic_eth_rx_axis_user   ;
        wire  											                                  u0_i_eth_pkt_valid;
        wire  											                                  u0_i_eth_pkt_start;
        wire  											                                  u0_i_eth_pkt_end;
        wire  [`LINK_LAYER_USER_WIDTH - 1 : 0]		                   	u0_iv_eth_pkt_user;
        wire  [`LINK_LAYER_KEEP_WIDTH - 1 : 0]		                   	u0_iv_eth_pkt_keep;
        wire  [`LINK_LAYER_DATA_WIDTH - 1: 0]		                   	u0_iv_eth_pkt_data;
        wire  										                                   	u0_o_eth_pkt_ready;
        wire  [66:0]                                                 u0_route_cfg_pkt_in;
        wire                                                         u0_route_cfg_pkt_in_vld;
        wire                                                         u0_route_cfg_pkt_in_rdy;
        wire  [66:0]                                                 u0_phy_cfg_pkt_out;
        wire                                                         u0_phy_cfg_pkt_out_vld;
        wire                                                         u0_phy_cfg_pkt_out_rdy;
        wire                                                         u0_psel_i;
        wire       [21:0]                                            u0_paddr_i;
        wire                                                         u0_pwrite_i;
        wire                                                         u0_penable_i;
        wire       [31:0]                                            u0_pwdata_i;
        wire       [31:0]                                            u0_prdata_o;
        wire                                                         u0_pready_o;
        wire                                                         u0_pslverr_o;
        wire [5:0]                                                   u0_ib_id;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u0_ovBuffer_VL0_eth_tx_data ;
        wire                                                         u0_oBuffer_VL0_eth_tx_empty ;
        wire                                                         u0_iBuffer_VL0_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u0_ovBuffer_VL1_eth_tx_data ;
        wire                                                         u0_oBuffer_VL1_eth_tx_empty ;
        wire                                                         u0_iBuffer_VL1_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u0_ovBuffer_VL2_eth_tx_data ;
        wire                                                         u0_oBuffer_VL2_eth_tx_empty ;
        wire                                                         u0_iBuffer_VL2_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u0_ovBuffer_VL3_eth_tx_data ;
        wire                                                         u0_oBuffer_VL3_eth_tx_empty ;
        wire                                                         u0_iBuffer_VL3_eth_tx_rden  ;
        wire                                                         u0_oTail_VL0_eth_tx_empty   ;
        wire                                                         u0_iTail_VL0_eth_tx_rden    ;
        wire                                                         u0_oTail_VL1_eth_tx_empty   ;
        wire                                                         u0_iTail_VL1_eth_tx_rden    ;
        wire                                                         u0_oTail_VL2_eth_tx_empty   ;
        wire                                                         u0_iTail_VL2_eth_tx_rden    ;
        wire                                                         u0_oTail_VL3_eth_tx_empty   ;
        wire                                                         u0_iTail_VL3_eth_tx_rden    ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u0_ov_queue0_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u0_ov_queue1_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u0_ov_queue2_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u0_ov_queue3_eth_length     ;
        wire                                                         u0_iVL0StallState_eth       ;
        wire                                                         u0_iVL1StallState_eth       ;
        wire                                                         u0_iVL2StallState_eth       ;
        wire                                                         u0_iVL3StallState_eth       ;
        wire                                                         u0_i_link_mode_sel          ; //1'b1:eth 0:hpc
        wire [LINK_LAYER_DATA_WIDTH-1:0]                             u0_i_xlgmii_rxd  ;   // XLGMII DDW/DDR/SDR Rx Data
        wire [LINK_LAYER_CTRL_WIDTH-1:0]                             u0_i_xlgmii_rxc  ;   // XLGMII DDW/DDR/SDR Rx Control
        wire                                                         u0_i_xlgmii_valid; // Signal to indicate RxMac that the data on i
        wire  [LINK_LAYER_DATA_WIDTH-1:0]                            u0_o_xlgmii_txd  ;   // xlgmii transmit data (DWCXL_DATAWIDTH=128)
        wire  [LINK_LAYER_CTRL_WIDTH-1:0]                            u0_o_xlgmii_txc  ;   // xlgmii transmit lane control (XLGMII_CTRL_WIDTH=16)  
        wire                                                         u0_i_pcs_rdy     ;      // Back pressure from PCS
        wire                                                         u0_hpc_rdy_phy_state;
        wire                                                         u0_i_active_trigger;
        wire                                                         u0_o_active_trigger; 
        wire                                                         u0_anti_starv_en;
        wire [5:0]                                                   u0_starv_cycles ;
        wire        [6:0]                                            u0_sram_pin_ctrl;
        wire      [7:0]                                              u0_dbg_sel; 
        wire      [31:0]                                             u0_dbg_bus;   


        wire  [4*11 -1 : 0]                                          u1_pkt_crdt_m;
        wire      [79+(NIC_PERFORMACNE_REGS*32):0]                   u1_iv_link_rw_data;
        wire      [79+(NIC_PERFORMACNE_REGS*32):0]                   u1_ov_link_init_rw_data;
        wire      [(NIC_PERFORMACNE_REGS*32)-1 :0]                   u1_ov_link_ro_data;              
        wire                                                         u1_o_nic_hpc_tx_rdy           ;
        wire   [ENGINE_NIC_DATA_WIDTH-1:0]                                  u1_iv_nic_hpc_tx_axis_data    ;
        wire   [NIC_CTRL_WIDTH-1:0]                                  u1_iv_nic_hpc_tx_axis_keep    ;
        wire                                                         u1_i_nic_hpc_tx_axis_start    ;
        wire                                                         u1_i_nic_hpc_tx_axis_end      ;
        wire                                                         u1_i_nic_hpc_tx_axis_valid    ;
        wire   [NIC_USER_WIDTH-1:0]                                  u1_iv_nic_hpc_tx_axis_user     ;
        wire                                                         u1_o_nic_eth_tx_rdy         ;
        wire     [ENGINE_NIC_DATA_WIDTH-1:0]                                u1_iv_nic_eth_tx_axis_data  ;
        wire     [NIC_CTRL_WIDTH-1:0]                                u1_iv_nic_eth_tx_axis_keep  ;
        wire                                                         u1_i_nic_eth_tx_axis_start  ;
        wire                                                         u1_i_nic_eth_tx_axis_end    ;
        wire                                                         u1_i_nic_eth_tx_axis_valid  ;
        wire     [NIC_USER_WIDTH-1:0]                                u1_iv_nic_eth_tx_axis_user   ;
        wire                                                         u1_i_nic_hpc_rx_rdy           ;
        wire    [ENGINE_NIC_DATA_WIDTH-1:0]                                 u1_ov_nic_hpc_rx_axis_data    ;
        wire    [NIC_CTRL_WIDTH-1:0]                                 u1_ov_nic_hpc_rx_axis_keep    ;
        wire                                                         u1_o_nic_hpc_rx_axis_start    ;
        wire                                                         u1_o_nic_hpc_rx_axis_end      ;
        wire                                                         u1_o_nic_hpc_rx_axis_valid    ;
        wire    [NIC_USER_WIDTH-2:0]                                 u1_ov_nic_hpc_rx_axis_user     ;
        wire                                                         u1_i_nic_eth_rx_rdy         ;
        wire      [ENGINE_NIC_DATA_WIDTH-1:0]                               u1_ov_nic_eth_rx_axis_data  ;
        wire      [NIC_CTRL_WIDTH-1:0]                               u1_ov_nic_eth_rx_axis_keep  ;
        wire                                                         u1_o_nic_eth_rx_axis_start  ;
        wire                                                         u1_o_nic_eth_rx_axis_end    ;
        wire                                                         u1_o_nic_eth_rx_axis_valid  ;
        wire      [NIC_USER_WIDTH-2:0]                               u1_ov_nic_eth_rx_axis_user   ;
        wire  											                                  u1_i_eth_pkt_valid;
        wire  											                                  u1_i_eth_pkt_start;
        wire  											                                  u1_i_eth_pkt_end;
        wire  [`LINK_LAYER_USER_WIDTH - 1 : 0]		                   	u1_iv_eth_pkt_user;
        wire  [`LINK_LAYER_KEEP_WIDTH - 1 : 0]		                   	u1_iv_eth_pkt_keep;
        wire  [`LINK_LAYER_DATA_WIDTH - 1: 0]		                   	u1_iv_eth_pkt_data;
        wire  										                                   	u1_o_eth_pkt_ready;
        wire  [66:0]                                                 u1_route_cfg_pkt_in;
        wire                                                         u1_route_cfg_pkt_in_vld;
        wire                                                         u1_route_cfg_pkt_in_rdy;
        wire  [66:0]                                                 u1_phy_cfg_pkt_out;
        wire                                                         u1_phy_cfg_pkt_out_vld;
        wire                                                         u1_phy_cfg_pkt_out_rdy;
        wire                                                         u1_psel_i;
        wire       [21:0]                                            u1_paddr_i;
        wire                                                         u1_pwrite_i;
        wire                                                         u1_penable_i;
        wire       [31:0]                                            u1_pwdata_i;
        wire       [31:0]                                            u1_prdata_o;
        wire                                                         u1_pready_o;
        wire                                                         u1_pslverr_o;
        wire [5:0]                                                   u1_ib_id;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u1_ovBuffer_VL0_eth_tx_data ;
        wire                                                         u1_oBuffer_VL0_eth_tx_empty ;
        wire                                                         u1_iBuffer_VL0_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u1_ovBuffer_VL1_eth_tx_data ;
        wire                                                         u1_oBuffer_VL1_eth_tx_empty ;
        wire                                                         u1_iBuffer_VL1_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u1_ovBuffer_VL2_eth_tx_data ;
        wire                                                         u1_oBuffer_VL2_eth_tx_empty ;
        wire                                                         u1_iBuffer_VL2_eth_tx_rden  ;
        wire      [DEMUX_QUEUE_WIDTH-1:0]                            u1_ovBuffer_VL3_eth_tx_data ;
        wire                                                         u1_oBuffer_VL3_eth_tx_empty ;
        wire                                                         u1_iBuffer_VL3_eth_tx_rden  ;
        wire                                                         u1_oTail_VL0_eth_tx_empty   ;
        wire                                                         u1_iTail_VL0_eth_tx_rden    ;
        wire                                                         u1_oTail_VL1_eth_tx_empty   ;
        wire                                                         u1_iTail_VL1_eth_tx_rden    ;
        wire                                                         u1_oTail_VL2_eth_tx_empty   ;
        wire                                                         u1_iTail_VL2_eth_tx_rden    ;
        wire                                                         u1_oTail_VL3_eth_tx_empty   ;
        wire                                                         u1_iTail_VL3_eth_tx_rden    ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u1_ov_queue0_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u1_ov_queue1_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u1_ov_queue2_eth_length     ;
        wire  [DEMUX_QUEUE_DEPTH_ADDR-1:0]                           u1_ov_queue3_eth_length     ;
        wire                                                         u1_iVL0StallState_eth       ;
        wire                                                         u1_iVL1StallState_eth       ;
        wire                                                         u1_iVL2StallState_eth       ;
        wire                                                         u1_iVL3StallState_eth       ;
        wire                                                         u1_i_link_mode_sel          ; //1'b1:eth 0:hpc
        wire [LINK_LAYER_DATA_WIDTH-1:0]                             u1_i_xlgmii_rxd  ;   // XLGMII DDW/DDR/SDR Rx Data
        wire [LINK_LAYER_CTRL_WIDTH-1:0]                             u1_i_xlgmii_rxc  ;   // XLGMII DDW/DDR/SDR Rx Control
        wire                                                         u1_i_xlgmii_valid; // Signal to indicate RxMac that the data on i
        wire  [LINK_LAYER_DATA_WIDTH-1:0]                            u1_o_xlgmii_txd  ;   // xlgmii transmit data (DWCXL_DATAWIDTH=128)
        wire  [LINK_LAYER_CTRL_WIDTH-1:0]                            u1_o_xlgmii_txc  ;   // xlgmii transmit lane control (XLGMII_CTRL_WIDTH=16)  
        wire                                                         u1_i_pcs_rdy     ;      // Back pressure from PCS
        wire                                                         u1_hpc_rdy_phy_state;
        wire                                                         u1_i_active_trigger;
        wire                                                         u1_o_active_trigger; 
        wire                                                         u1_anti_starv_en;
        wire [5:0]                                                   u1_starv_cycles ;
        wire        [6:0]                                            u1_sram_pin_ctrl;
        wire      [7:0]                                              u1_dbg_sel; 
        wire      [31:0]                                             u1_dbg_bus; 

        reg                                                          mac_pcie_syn_rst  ;
        wire                                                         app_clk;//900MHZ


        // assign cc_tdata_0   =  s_axis_cc_tdata_0;   
        // assign cc_tkeep_0   =  s_axis_cc_tkeep_0 ;   
        // assign cc_tuser_0   =  s_axis_cc_tuser_0 ;   
        // assign cc_tvalid_0  =  s_axis_cc_tvalid_0 ;   
        // assign cc_tlast_0   =  s_axis_cc_tlast_0 ;   
        // assign s_axis_cc_tready_0 = cc_tready_0; 

        // assign rq_tdata_0   = s_axis_rq_tdata_0;
        // assign rq_tkeep_0   = s_axis_rq_tkeep_0 ;
        // assign rq_tuser_0   = s_axis_rq_tuser_0 ;
        // assign rq_tvalid_0  = s_axis_rq_tvalid_0 ;
        // assign rq_tlast_0   = s_axis_rq_tlast_0 ;
        // assign s_axis_rq_tready_0 = rq_tready_0;

        // assign m_axis_cq_tvalid_0 =  cq_tvalid_0  ;
        // assign m_axis_cq_tlast_0  =  cq_tlast_0  ;
        // assign m_axis_cq_tkeep_0  =  cq_tkeep_0  ;
        // assign m_axis_cq_tuser_0  =  cq_tuser_0 ;
        // assign m_axis_cq_tdata_0  =  cq_tdata_0  ;
        // assign cq_tready_0 = m_axis_cq_tready_0;

        // assign m_axis_rc_tvalid_0  = rc_tvalid_0 ;
        // assign m_axis_rc_tlast_0   = rc_tlast_0 ;
        // assign m_axis_rc_tkeep_0   = rc_tkeep_0 ;
        // assign m_axis_rc_tuser_0   = rc_tuser_0;
        // assign m_axis_rc_tdata_0   = rc_tdata_0 ;
        // assign rc_tready_0 = m_axis_rc_tready_0;


        // assign axis_rq_tvalid_obsv_0  =  s_axis_rq_tvalid_0;
        // assign axis_rq_tlast_obsv_0   =  s_axis_rq_tlast_0 ;
        // assign axis_rq_tkeep_obsv_0   =  s_axis_rq_tkeep_0 ;
        // assign axis_rq_tuser_obsv_0   =  s_axis_rq_tuser_0 ;
        // assign axis_rq_tdata_obsv_0   =  s_axis_rq_tdata_0 ;
        // assign axis_rq_tready_obsv_0  =  rq_tready_0;
        // assign axis_rc_tvalid_obsv_0  =  rc_tvalid_0 ;
        // assign axis_rc_tlast_obsv_0   =  rc_tlast_0 ;
        // assign axis_rc_tkeep_obsv_0   =  rc_tkeep_0 ;
        // assign axis_rc_tuser_obsv_0   =  rc_tuser_0;
        // assign axis_rc_tdata_obsv_0   =  rc_tdata_0 ;
        // assign axis_rc_tready_obsv_0  =  m_axis_rc_tready_0;
        // assign axis_cq_tvalid_obsv_0  =  cq_tvalid_0;
        // assign axis_cq_tlast_obsv_0   =  cq_tlast_0 ;
        // assign axis_cq_tkeep_obsv_0   =  cq_tkeep_0 ;
        // assign axis_cq_tuser_obsv_0   =  cq_tuser_0 ;
        // assign axis_cq_tdata_obsv_0   =  cq_tdata_0 ;
        // assign axis_cq_tready_obsv_0  =  m_axis_cq_tready_0;
        // assign axis_cc_tvalid_obsv_0  =  s_axis_cc_tvalid_0 ;
        // assign axis_cc_tlast_obsv_0   =  s_axis_cc_tlast_0 ;
        // assign axis_cc_tkeep_obsv_0   =  s_axis_cc_tkeep_0 ;
        // assign axis_cc_tuser_obsv_0   =  s_axis_cc_tuser_0;
        // assign axis_cc_tdata_obsv_0   =  s_axis_cc_tdata_0 ;
        // assign axis_cc_tready_obsv_0  =  cc_tready_0;

        // assign axis_clk_0 = axis_m_clk_0;
        // assign axis_rst_n_0 = axis_m_rstn_0;

        // assign cc_tdata_1   =  s_axis_cc_tdata_1;   
        // assign cc_tkeep_1   =  s_axis_cc_tkeep_1 ;   
        // assign cc_tuser_1   =  s_axis_cc_tuser_1 ;   
        // assign cc_tvalid_1  =  s_axis_cc_tvalid_1 ;   
        // assign cc_tlast_1   =  s_axis_cc_tlast_1 ;   
        // assign s_axis_cc_tready_1 = cc_tready_1; 

        // assign rq_tdata_1   = s_axis_rq_tdata_1;
        // assign rq_tkeep_1   = s_axis_rq_tkeep_1 ;
        // assign rq_tuser_1   = s_axis_rq_tuser_1 ;
        // assign rq_tvalid_1  = s_axis_rq_tvalid_1 ;
        // assign rq_tlast_1   = s_axis_rq_tlast_1 ;
        // assign s_axis_rq_tready_1 = rq_tready_1;

        // assign m_axis_cq_tvalid_1 =  cq_tvalid_1  ;
        // assign m_axis_cq_tlast_1  =  cq_tlast_1  ;
        // assign m_axis_cq_tkeep_1  =  cq_tkeep_1  ;
        // assign m_axis_cq_tuser_1  =  cq_tuser_1 ;
        // assign m_axis_cq_tdata_1  =  cq_tdata_1  ;
        // assign cq_tready_1 = m_axis_cq_tready_1;

        // assign m_axis_rc_tvalid_1  = rc_tvalid_1 ;
        // assign m_axis_rc_tlast_1   = rc_tlast_1 ;
        // assign m_axis_rc_tkeep_1   = rc_tkeep_1 ;
        // assign m_axis_rc_tuser_1   = rc_tuser_1;
        // assign m_axis_rc_tdata_1   = rc_tdata_1 ;
        // assign rc_tready_1 = m_axis_rc_tready_1;

        // assign axis_rq_tvalid_obsv_1  =  s_axis_rq_tvalid_1;
        // assign axis_rq_tlast_obsv_1   =  s_axis_rq_tlast_1 ;
        // assign axis_rq_tkeep_obsv_1   =  s_axis_rq_tkeep_1 ;
        // assign axis_rq_tuser_obsv_1   =  s_axis_rq_tuser_1 ;
        // assign axis_rq_tdata_obsv_1   =  s_axis_rq_tdata_1 ;
        // assign axis_rq_tready_obsv_1  =  rq_tready_1;
        // assign axis_rc_tvalid_obsv_1  =  rc_tvalid_1 ;
        // assign axis_rc_tlast_obsv_1   =  rc_tlast_1 ;
        // assign axis_rc_tkeep_obsv_1   =  rc_tkeep_1 ;
        // assign axis_rc_tuser_obsv_1   =  rc_tuser_1;
        // assign axis_rc_tdata_obsv_1   =  rc_tdata_1 ;
        // assign axis_rc_tready_obsv_1  =  m_axis_rc_tready_1;
        // assign axis_cq_tvalid_obsv_1  =  cq_tvalid_1;
        // assign axis_cq_tlast_obsv_1   =  cq_tlast_1 ;
        // assign axis_cq_tkeep_obsv_1   =  cq_tkeep_1 ;
        // assign axis_cq_tuser_obsv_1   =  cq_tuser_1 ;
        // assign axis_cq_tdata_obsv_1   =  cq_tdata_1 ;
        // assign axis_cq_tready_obsv_1  =  m_axis_cq_tready_1;
        // assign axis_cc_tvalid_obsv_1  =  s_axis_cc_tvalid_1 ;
        // assign axis_cc_tlast_obsv_1   =  s_axis_cc_tlast_1 ;
        // assign axis_cc_tkeep_obsv_1   =  s_axis_cc_tkeep_1 ;
        // assign axis_cc_tuser_obsv_1   =  s_axis_cc_tuser_1;
        // assign axis_cc_tdata_obsv_1   =  s_axis_cc_tdata_1 ;
        // assign axis_cc_tready_obsv_1  =  cc_tready_1;

        // assign axis_clk_1 = axis_m_clk_1;
        // assign axis_rst_n_1 = axis_m_rstn_1;



    NIC_Top #(
    //NIC_TOP PARAMETERS
        .C_DATA_WIDTH                        ( 256              ),   // RX/TX interface data width
        .KEEP_WIDTH                          ( 256 / 32),
        .DMA_HEAD_WIDTH                 ( 128)      ,
        .UPPER_HEAD_WIDTH               ( 64 ), 
        .DOWN_HEAD_WIDTH                ( 64 ),
        .AXIL_DATA_WIDTH                ( 32 )      ,
        .AXIL_ADDR_WIDTH                ( 24 )      ,
        // defined for pcie interface
        .ETH_BASE                       ( 20'h2_0000    ),
        // .ETH_LEN                        ( 24'h1000 ),
        .P2P_BASE                     ( 20'h2000 ),
        .P2P_CFG_BASE                 (20'h3_0000),
        .P2P_MEM_BASE                 (20'h4_0000),
        .P2P_LEN                      ( 20'hb_0000 ), 
        .DB_BASE                        ( 12'hff8    ),
        .HCR_BASE                       ( 20'hffc),
        // .AXIL_STRB_WIDTH                 (AXIL_DATA_WIDTH/8),
        .AXIL_STRB_WIDTH                 (32/8),
        .ENGINE_NIC_DATA_WIDTH 				( 256 		),
        .ENGINE_NIC_KEEP_WIDTH 				( 32 		),
        .ENGINE_LINK_LAYER_USER_WIDTH 			( 7 ),
        .RW_REG_NUM 						( 128),
        .RO_REG_NUM 						( 128),
    //HOSTROUTE PARAMETERS
        .PORT_NUM_LOG_2               ( 32'd4  ),
        .PORT_INDEX                   ( 32'd0  ),
        .PORT_NUM                     ( 32'd16 ),
        .QUEUE_DEPTH_LOG_2            ( 10     ), 	//Maximum depth of one output queue is (1 << QUEUE_DEPTH)
    //Route Cfg Parameter
        .ROUTE_RO_REG_NUM ( 32 ),
        .ROUTE_RW_REG_NUM ( 32 ),

        //NIC Cfg Parameter
        .NIC_RO_REG_NUM ( 128 ),
        .NIC_RW_REG_NUM ( 128 ),

        //Link Cfg Parameter
        .LINK_RO_REG_NUM ( 10 ),
        .LINK_RW_REG_NUM ( 13 ),
        //Cfg Node Parameter
        .CFG_NODE_REG_BASE_ADDR  ( 24'h10_0000                                                ),//
        // .CFG_NODE_RW_REG_NUM     ( ROUTE_RW_REG_NUM + NIC_RW_REG_NUM + LINK_RW_REG_NUM + 32'd1),//read-writer register number,register data witdh is 32bit,
        .CFG_NODE_RW_REG_NUM     ( 32 + 128 + 13 + 32'd1),//read-writer register number,register data witdh is 32bit,
        .CFG_NODE_RO_BASE_ADDR   ( 24'h30_0000                                                ),//configuration read only register base address  //
        // .CFG_NODE_RO_REG_NUM     ( ROUTE_RO_REG_NUM + NIC_RO_REG_NUM + LINK_RO_REG_NUM + 32'd3), //read-only register number,register data witdh is 32bit, SUM max is 14'h3fff-3
        .CFG_NODE_RO_REG_NUM     ( 32 + 128 + 10 + 32'd3), //read-only register number,register data witdh is 32bit, SUM max is 14'h3fff-3
        .CFG_NODE_BUS_BASE_ADDR  ( 24'h70_0000                                                ), ////configuration bus base address	 //
        .CFG_NODE_BUS_ADDR_WIDTH ( 0                                                          ),

        //Phy cfg parameter
        .APB_SEL ( 1'b0 )
    )u_engine_top_0(
        .rst           (nic_rst_n),
        .nic_clk             (nic_clk),
        // .mgmt_clk            (mgmt_clk),
        // .mgmt_rst_n          (mgmt_rst_n),
        .pcie_clk            (axis_m_clk_0),
        // .pipe_rst_n          (axis_m_rstn_0),
        // .link_clk            (link_clk),
        // .link_rst_n          (link_rst_n),
        // .ib_id               (6'd1),
        //NIC TOP interfaces
        /*Interface with PCIe Subsystem*/
        .s_axis_rq_tvalid           (a_s_axis_rq_tvalid),
        .s_axis_rq_tlast            (a_s_axis_rq_tlast ),
        .s_axis_rq_tkeep            (a_s_axis_rq_tkeep ),
        .s_axis_rq_tuser            (a_s_axis_rq_tuser ),
        .s_axis_rq_tdata            (a_s_axis_rq_tdata ),
        .s_axis_rq_tready           (a_s_axis_rq_tready),

        .m_axis_rc_tvalid           (a_m_axis_rc_tvalid),
        .m_axis_rc_tlast            (a_m_axis_rc_tlast ),
        .m_axis_rc_tkeep            (a_m_axis_rc_tkeep ),
        .m_axis_rc_tuser            (a_m_axis_rc_tuser ),
        .m_axis_rc_tdata            (a_m_axis_rc_tdata ),
        .m_axis_rc_tready           (a_m_axis_rc_tready),

        .m_axis_cq_tvalid           (a_m_axis_cq_tvalid),
        .m_axis_cq_tlast            (a_m_axis_cq_tlast ),
        .m_axis_cq_tkeep            (a_m_axis_cq_tkeep ),
        .m_axis_cq_tuser            (a_m_axis_cq_tuser ),
        .m_axis_cq_tdata            (a_m_axis_cq_tdata ),
        .m_axis_cq_tready           (a_m_axis_cq_tready),

        .s_axis_cc_tvalid           (a_s_axis_cc_tvalid),
        .s_axis_cc_tlast            (a_s_axis_cc_tlast ),
        .s_axis_cc_tkeep            (a_s_axis_cc_tkeep ),
        .s_axis_cc_tuser            (a_s_axis_cc_tuser ),
        .s_axis_cc_tdata            (a_s_axis_cc_tdata ),
        .s_axis_cc_tready           (a_s_axis_cc_tready),

        .cfg_max_payload            (a_cfg_max_payload ),
        .cfg_max_read_req           (a_cfg_max_read_req),

        //HostRoute interfaces
        //HPC Traffic in
        .nic_link_hpc_rx_pkt_valid                        (i_link_hpc_pkt_valid_0 ),
        .nic_link_hpc_rx_pkt_start                        (i_link_hpc_pkt_start_0 ),
        .nic_link_hpc_rx_pkt_end                          (i_link_hpc_pkt_end_0   ),
        .nic_link_hpc_rx_pkt_user                         (i_link_hpc_pkt_user_0 ),
        .nic_link_hpc_rx_pkt_keep                         (i_link_hpc_pkt_keep_0 ),
        .nic_link_hpc_rx_pkt_data                         (i_link_hpc_pkt_data_0 ),	
        .nic_link_hpc_rx_pkt_ready                        (o_link_hpc_pkt_ready_0 ),

        //ETH Traffic in、			
        .nic_link_eth_rx_pkt_valid                        (link_eth_rx_pkt_valid_0 ),                            
        .nic_link_eth_rx_pkt_start                        (link_eth_rx_pkt_start_0 ),                            
        .nic_link_eth_rx_pkt_end                          (link_eth_rx_pkt_end_0   ),                            
        .nic_link_eth_rx_pkt_user                         (link_eth_rx_pkt_user_0 ),                            
        .nic_link_eth_rx_pkt_keep                         (link_eth_rx_pkt_keep_0 ),                            
        .nic_link_eth_rx_pkt_data                         (link_eth_rx_pkt_data_0 ),                            
        .nic_link_eth_rx_pkt_ready                        (link_eth_rx_pkt_ready_0 ),                            

        //HPC Traffic out
        .nic_link_hpc_tx_pkt_valid                        (o_link_hpc_pkt_valid_0 ),
        .nic_link_hpc_tx_pkt_start                        (o_link_hpc_pkt_start_0 ),
        .nic_link_hpc_tx_pkt_end                          (o_link_hpc_pkt_end_0   ),
        .nic_link_hpc_tx_pkt_user                         (o_link_hpc_pkt_user_0 ),
        .nic_link_hpc_tx_pkt_keep                         (o_link_hpc_pkt_keep_0 ),
        .nic_link_hpc_tx_pkt_data                         (o_link_hpc_pkt_data_0 ),	
        .nic_link_hpc_tx_pkt_ready                        (i_link_hpc_pkt_ready_0 ),

        //ETH Traffic out、			
        .nic_link_eth_tx_pkt_valid                        (link_eth_tx_pkt_valid_0 ),
        .nic_link_eth_tx_pkt_start                        (link_eth_tx_pkt_start_0 ),
        .nic_link_eth_tx_pkt_end                          (link_eth_tx_pkt_end_0   ),
        .nic_link_eth_tx_pkt_user                         (link_eth_tx_pkt_user_0 ),
        .nic_link_eth_tx_pkt_keep                         (link_eth_tx_pkt_keep_0 ),
        .nic_link_eth_tx_pkt_data                         (link_eth_tx_pkt_data_0 ),
        .nic_link_eth_tx_pkt_ready                        (link_eth_tx_pkt_ready_0 ),
 /*-------------------------------Interface with Cfg_Subsystem(Begin)----------------------------------*/
        //connect with hpc_eth_mux 
        // .route_cfg_pkt_in                               (route_cfg_pkt_in_0     ),
        // .route_cfg_pkt_in_vld                           (route_cfg_pkt_in_vld_0 ),
        // .route_cfg_pkt_in_rdy                           (route_cfg_pkt_in_rdy_0 ),

        //Phy cfg node -- pcie subsys
        // .psel                                           (),
        // .penable                                        (),
        // .pwrite                                         (),
        // .paddr                                          (),
        // .pwdata                                         (),
        // .pready                                         (apb_pready_0),
        // .pslverr                                        (apb_pslverr_0),
        // .prdata                                         (apb_prdata_0),
        //connect with hpc_eth_mux 
        // .phy_cfg_pkt_out                                    (phy_cfg_pkt_out_0    ),
        // .phy_cfg_pkt_out_vld                                (phy_cfg_pkt_out_vld_0),
        // .phy_cfg_pkt_out_rdy                                (phy_cfg_pkt_out_rdy_0),

        //NIC and Link cfg signals connect with
        .PCIe_Interface_rw_data         (0) 
        // .iv_link_init_rw_data                               (iv_link_init_rw_data_0 ),
        // .ov_link_rw_data                                    (ov_link_rw_data_0      ),
        // .iv_link_ro_data                                    (iv_link_ro_data_0      ),
        // .ov_link_dbg_sel                                    ()  ,
        // .iv_link_dbg_bus                                    ()   
        /*-------------------------------Interface with Cfg_Subsystem(End)----------------------------------*/


    );

    NIC_Top #(
    //NIC_TOP PARAMETERS
        .C_DATA_WIDTH                        ( 256              ),   // RX/TX interface data width
        .KEEP_WIDTH                          ( 256 / 32),
        .DMA_HEAD_WIDTH                 ( 128)      ,
        .UPPER_HEAD_WIDTH               ( 64 ), 
        .DOWN_HEAD_WIDTH                ( 64 ),
        .AXIL_DATA_WIDTH                ( 32 )      ,
        .AXIL_ADDR_WIDTH                ( 24 )      ,
        // defined for pcie interface
        .ETH_BASE                       ( 20'h2_0000    ),
        // .ETH_LEN                        ( 24'h1000 ),
        .P2P_BASE                     ( 20'h2000 ),
        .P2P_CFG_BASE                 (20'h3_0000),
        .P2P_MEM_BASE                 (20'h4_0000),
        .P2P_LEN                      ( 20'hb_0000 ), 
        .DB_BASE                        ( 12'hff8    ),
        .HCR_BASE                       ( 20'hffc),
        // .AXIL_STRB_WIDTH                 (AXIL_DATA_WIDTH/8),
        .AXIL_STRB_WIDTH                 (32/8),
        .ENGINE_NIC_DATA_WIDTH 				( 256 		),
        .ENGINE_NIC_KEEP_WIDTH 				( 32 		),
        .ENGINE_LINK_LAYER_USER_WIDTH 			( 7 ),
        .RW_REG_NUM 						( 128),
        .RO_REG_NUM 						( 128),
    //HOSTROUTE PARAMETERS
        .PORT_NUM_LOG_2               ( 32'd4  ),
        .PORT_INDEX                   ( 32'd0  ),
        .PORT_NUM                     ( 32'd16 ),
        .QUEUE_DEPTH_LOG_2            ( 10     ), 	//Maximum depth of one output queue is (1 << QUEUE_DEPTH)
    //Route Cfg Parameter
        .ROUTE_RO_REG_NUM ( 32 ),
        .ROUTE_RW_REG_NUM ( 32 ),

        //NIC Cfg Parameter
        .NIC_RO_REG_NUM ( 128 ),
        .NIC_RW_REG_NUM ( 128 ),

        //Link Cfg Parameter
        .LINK_RO_REG_NUM ( 10 ),
        .LINK_RW_REG_NUM ( 13 ),
        //Cfg Node Parameter
        .CFG_NODE_REG_BASE_ADDR  ( 24'h10_0000                                                ),//
        // .CFG_NODE_RW_REG_NUM     ( ROUTE_RW_REG_NUM + NIC_RW_REG_NUM + LINK_RW_REG_NUM + 32'd1),//read-writer register number,register data witdh is 32bit,
        .CFG_NODE_RW_REG_NUM     ( 32 + 128 + 13 + 32'd1),//read-writer register number,register data witdh is 32bit,
        .CFG_NODE_RO_BASE_ADDR   ( 24'h30_0000                                                ),//configuration read only register base address  //
        // .CFG_NODE_RO_REG_NUM     ( ROUTE_RO_REG_NUM + NIC_RO_REG_NUM + LINK_RO_REG_NUM + 32'd3), //read-only register number,register data witdh is 32bit, SUM max is 14'h3fff-3
        .CFG_NODE_RO_REG_NUM     ( 32 + 128 + 10 + 32'd3), //read-only register number,register data witdh is 32bit, SUM max is 14'h3fff-3
        .CFG_NODE_BUS_BASE_ADDR  ( 24'h70_0000                                                ), ////configuration bus base address	 //
        .CFG_NODE_BUS_ADDR_WIDTH ( 0                                                          ),

        //Phy cfg parameter
        .APB_SEL ( 1'b0 )
    )u_engine_top_1(
        .rst           (nic_rst_n),
        .nic_clk             (nic_clk),
        // .mgmt_clk            (mgmt_clk),
        // .mgmt_rst_n          (mgmt_rst_n),
        .pcie_clk            (axis_m_clk_1),
        // .pipe_rst_n          (axis_m_rstn_1),
        // .link_clk            (link_clk),
        // .link_rst_n          (link_rst_n),
        // .ib_id               (6'd1),
        //NIC TOP interfaces
        /*Interface with PCIe Subsystem*/
        .s_axis_rq_tvalid           (b_s_axis_rq_tvalid),
        .s_axis_rq_tlast            (b_s_axis_rq_tlast ),
        .s_axis_rq_tkeep            (b_s_axis_rq_tkeep ),
        .s_axis_rq_tuser            (b_s_axis_rq_tuser ),
        .s_axis_rq_tdata            (b_s_axis_rq_tdata ),
        .s_axis_rq_tready           (b_s_axis_rq_tready),

        .m_axis_rc_tvalid           (b_m_axis_rc_tvalid),
        .m_axis_rc_tlast            (b_m_axis_rc_tlast ),
        .m_axis_rc_tkeep            (b_m_axis_rc_tkeep ),
        .m_axis_rc_tuser            (b_m_axis_rc_tuser ),
        .m_axis_rc_tdata            (b_m_axis_rc_tdata ),
        .m_axis_rc_tready           (b_m_axis_rc_tready),

        .m_axis_cq_tvalid           (b_m_axis_cq_tvalid),
        .m_axis_cq_tlast            (b_m_axis_cq_tlast ),
        .m_axis_cq_tkeep            (b_m_axis_cq_tkeep ),
        .m_axis_cq_tuser            (b_m_axis_cq_tuser ),
        .m_axis_cq_tdata            (b_m_axis_cq_tdata ),
        .m_axis_cq_tready           (b_m_axis_cq_tready),

        .s_axis_cc_tvalid           (b_s_axis_cc_tvalid),
        .s_axis_cc_tlast            (b_s_axis_cc_tlast ),
        .s_axis_cc_tkeep            (b_s_axis_cc_tkeep ),
        .s_axis_cc_tuser            (b_s_axis_cc_tuser ),
        .s_axis_cc_tdata            (b_s_axis_cc_tdata ),
        .s_axis_cc_tready           (b_s_axis_cc_tready),

        .cfg_max_payload            (b_cfg_max_payload ),
        .cfg_max_read_req           (b_cfg_max_read_req),

        //HostRoute interfaces
        //HPC Traffic in
        .nic_link_hpc_rx_pkt_valid                       (i_link_hpc_pkt_valid_1 ),
        .nic_link_hpc_rx_pkt_start                       (i_link_hpc_pkt_start_1 ),
        .nic_link_hpc_rx_pkt_end                         (i_link_hpc_pkt_end_1   ),
        .nic_link_hpc_rx_pkt_user                        (i_link_hpc_pkt_user_1 ),
        .nic_link_hpc_rx_pkt_keep                        (i_link_hpc_pkt_keep_1 ),
        .nic_link_hpc_rx_pkt_data                        (i_link_hpc_pkt_data_1 ),	
        .nic_link_hpc_rx_pkt_ready                       (o_link_hpc_pkt_ready_1 ),

        //ETH Traffic in、			
        .nic_link_eth_rx_pkt_valid                        (link_eth_rx_pkt_valid_1 ),                            
        .nic_link_eth_rx_pkt_start                        (link_eth_rx_pkt_start_1 ),                            
        .nic_link_eth_rx_pkt_end                          (link_eth_rx_pkt_end_1   ),                            
        .nic_link_eth_rx_pkt_user                         (link_eth_rx_pkt_user_1 ),                            
        .nic_link_eth_rx_pkt_keep                         (link_eth_rx_pkt_keep_1 ),                            
        .nic_link_eth_rx_pkt_data                         (link_eth_rx_pkt_data_1 ),                            
        .nic_link_eth_rx_pkt_ready                        (link_eth_rx_pkt_ready_1 ),                            

        //HPC Traffic out
        .nic_link_hpc_tx_pkt_valid                        (o_link_hpc_pkt_valid_1 ),
        .nic_link_hpc_tx_pkt_start                        (o_link_hpc_pkt_start_1 ),
        .nic_link_hpc_tx_pkt_end                          (o_link_hpc_pkt_end_1   ),
        .nic_link_hpc_tx_pkt_user                         (o_link_hpc_pkt_user_1 ),
        .nic_link_hpc_tx_pkt_keep                         (o_link_hpc_pkt_keep_1 ),
        .nic_link_hpc_tx_pkt_data                         (o_link_hpc_pkt_data_1 ),	
        .nic_link_hpc_tx_pkt_ready                        (i_link_hpc_pkt_ready_1 ),

        //ETH Traffic out、			
        .nic_link_eth_tx_pkt_valid                       (link_eth_tx_pkt_valid_1 ),
        .nic_link_eth_tx_pkt_start                       (link_eth_tx_pkt_start_1 ),
        .nic_link_eth_tx_pkt_end                         (link_eth_tx_pkt_end_1   ),
        .nic_link_eth_tx_pkt_user                        (link_eth_tx_pkt_user_1 ),
        .nic_link_eth_tx_pkt_keep                        (link_eth_tx_pkt_keep_1 ),
        .nic_link_eth_tx_pkt_data                        (link_eth_tx_pkt_data_1 ),
        .nic_link_eth_tx_pkt_ready                       (link_eth_tx_pkt_ready_1 ),
 /*-------------------------------Interface with Cfg_Subsystem(Begin)----------------------------------*/
        //connect with hpc_eth_mux 
        // .route_cfg_pkt_in                               (route_cfg_pkt_in_1     ),
        // .route_cfg_pkt_in_vld                           (route_cfg_pkt_in_vld_1 ),
        // .route_cfg_pkt_in_rdy                           (route_cfg_pkt_in_rdy_1 ),

        //Phy cfg node -- pcie subsys
        // .psel                                           (),
        // .penable                                        (),
        // .pwrite                                         (),
        // .paddr                                          (),
        // .pwdata                                         (),
        // .pready                                         (apb_pready_1),
        // .pslverr                                        (apb_pslverr_1),
        // .prdata                                         (apb_prdata_1),
        //connect with hpc_eth_mux 
        // .phy_cfg_pkt_out                                    (phy_cfg_pkt_out_1    ),
        // .phy_cfg_pkt_out_vld                                (phy_cfg_pkt_out_vld_1),
        // .phy_cfg_pkt_out_rdy                                (phy_cfg_pkt_out_rdy_1),

        //NIC and Link cfg signals connect with 
        .PCIe_Interface_rw_data         (0) 
        // .iv_link_init_rw_data                               (iv_link_init_rw_data_1 ),
        // .ov_link_rw_data                                    (ov_link_rw_data_1      ),
        // .iv_link_ro_data                                    (iv_link_ro_data_1      ),
        // .ov_link_dbg_sel                                    ()  ,
        // .iv_link_dbg_bus                                    ()   
        /*-------------------------------Interface with Cfg_Subsystem(End)----------------------------------*/


    );

    link_top_app u_link_top_0(
        .i_link_clk                         (link_clk),
        .i_link_rst_n                       (~link_rst_n), 
        .i_app_clk                          (app_clk),
        .i_app_rst_n                        (~link_rst_n),                                
    //Nic_Link_Top interfaces
        .i_nic_clk                          (nic_clk),
        .i_nic_rst_n                        (~nic_rst_n),
        .i_mgmt_clk                         (mgmt_clk),
        .i_mgmt_rst_n                       (~mgmt_rst_n),            
        //interface with nic tx hpc stream
        .o_nic_hpc_tx_rdy                   (i_link_hpc_pkt_ready_0),
        .iv_nic_hpc_tx_axis_data            (o_link_hpc_pkt_data_0 ),
        .iv_nic_hpc_tx_axis_keep            ( o_link_hpc_pkt_keep_0 ),
        .i_nic_hpc_tx_axis_start            (o_link_hpc_pkt_start_0 ), 
        .i_nic_hpc_tx_axis_end              ( o_link_hpc_pkt_end_0),
        .i_nic_hpc_tx_axis_valid            (o_link_hpc_pkt_valid_0),
        // .iv_nic_hpc_tx_axis_user            (o_link_hpc_pkt_user_0 ),
        .iv_nic_hpc_tx_axis_user            ({o_link_hpc_pkt_user_0,1'b1} ),
        //interface with nic tx ethernet stream
        .o_nic_eth_tx_rdy         (link_eth_tx_pkt_ready_0),
        .iv_nic_eth_tx_axis_data  (link_eth_tx_pkt_data_0) ,
        .iv_nic_eth_tx_axis_keep  (link_eth_tx_pkt_keep_0), 
        .i_nic_eth_tx_axis_start  (link_eth_tx_pkt_start_0),
        .i_nic_eth_tx_axis_end    (link_eth_tx_pkt_end_0),  
        .i_nic_eth_tx_axis_valid  (link_eth_tx_pkt_valid_0),
        // .iv_nic_eth_tx_axis_user  (link_eth_tx_pkt_user_0), 
        .iv_nic_eth_tx_axis_user  ({link_eth_tx_pkt_user_0,1'b1}), 
        //interface with nic rx hpc stream
        .i_nic_hpc_rx_rdy           (o_link_hpc_pkt_ready_0        ),
        .ov_nic_hpc_rx_axis_data    (i_link_hpc_pkt_data_0 ),
        .ov_nic_hpc_rx_axis_keep    (i_link_hpc_pkt_keep_0 ),  
        .o_nic_hpc_rx_axis_start    (i_link_hpc_pkt_start_0 ), 
        .o_nic_hpc_rx_axis_end      (i_link_hpc_pkt_end_0   ), 
        .o_nic_hpc_rx_axis_valid    (i_link_hpc_pkt_valid_0 ), 
        .ov_nic_hpc_rx_axis_user    (i_link_hpc_pkt_user_0 ),
        //interface with nic rx ethernet stream
        .i_nic_eth_rx_rdy           (link_eth_rx_pkt_ready_0       ),
        .ov_nic_eth_rx_axis_data    (link_eth_rx_pkt_data_0),
        .ov_nic_eth_rx_axis_keep    (link_eth_rx_pkt_keep_0),   
        .o_nic_eth_rx_axis_start    (link_eth_rx_pkt_start_0),  
        .o_nic_eth_rx_axis_end      (link_eth_rx_pkt_end_0  ), 
        .o_nic_eth_rx_axis_valid    (link_eth_rx_pkt_valid_0),  
        .ov_nic_eth_rx_axis_user    (link_eth_rx_pkt_user_0),
        
    //HPC_ETH_MUX interface
        //interfaces with eth link
        .i_eth_pkt_valid            (u0_i_eth_pkt_valid) ,
        .i_eth_pkt_start            (u0_i_eth_pkt_start) ,
        .i_eth_pkt_end              (u0_i_eth_pkt_end  ) ,
        .iv_eth_pkt_user            ({u0_iv_eth_pkt_user[`LINK_LAYER_USER_WIDTH-1:1],~u0_iv_eth_pkt_user[0]}) ,
        .iv_eth_pkt_keep            (u0_iv_eth_pkt_keep) ,
        .iv_eth_pkt_data            (u0_iv_eth_pkt_data) ,
        .o_eth_pkt_ready            (u0_o_eth_pkt_ready) ,
        //interfaces with cfg node
        .ib_id                      (u0_ib_id) , 
        // .cfg_pkt_in,
        // .cfg_pkt_in_vld,
        // .cfg_pkt_in_rdy,
        // .cfg_pkt_out,
        // .cfg_pkt_out_vld,
        // .cfg_pkt_out_rdy,
        // .o_link_mode_sel, //1'b1:eth 0:hpc
    // HPC_ETH_deMUX interface with to eth tx
        .pkt_crdt_m               (u0_pkt_crdt_m), 
        .ovBuffer_VL0_eth_tx_data (u0_ovBuffer_VL0_eth_tx_data ) ,
        .oBuffer_VL0_eth_tx_empty (u0_oBuffer_VL0_eth_tx_empty ) ,
        .iBuffer_VL0_eth_tx_rden  (u0_iBuffer_VL0_eth_tx_rden  ) ,
        .ovBuffer_VL1_eth_tx_data (u0_ovBuffer_VL1_eth_tx_data ) ,
        .oBuffer_VL1_eth_tx_empty (u0_oBuffer_VL1_eth_tx_empty ) ,
        .iBuffer_VL1_eth_tx_rden  (u0_iBuffer_VL1_eth_tx_rden  ) ,
        .ovBuffer_VL2_eth_tx_data (u0_ovBuffer_VL2_eth_tx_data ) ,
        .oBuffer_VL2_eth_tx_empty (u0_oBuffer_VL2_eth_tx_empty ) ,
        .iBuffer_VL2_eth_tx_rden  (u0_iBuffer_VL2_eth_tx_rden  ) ,
        .ovBuffer_VL3_eth_tx_data (u0_ovBuffer_VL3_eth_tx_data ) ,
        .oBuffer_VL3_eth_tx_empty (u0_oBuffer_VL3_eth_tx_empty ) ,
        .iBuffer_VL3_eth_tx_rden  (u0_iBuffer_VL3_eth_tx_rden  ) ,
        .oTail_VL0_eth_tx_empty   (u0_oTail_VL0_eth_tx_empty   ) ,
        .iTail_VL0_eth_tx_rden    (u0_iTail_VL0_eth_tx_rden    ) ,
        .oTail_VL1_eth_tx_empty   (u0_oTail_VL1_eth_tx_empty   ) ,
        .iTail_VL1_eth_tx_rden    (u0_iTail_VL1_eth_tx_rden    ) ,
        .oTail_VL2_eth_tx_empty   (u0_oTail_VL2_eth_tx_empty   ) ,
        .iTail_VL2_eth_tx_rden    (u0_iTail_VL2_eth_tx_rden    ) ,
        .oTail_VL3_eth_tx_empty   (u0_oTail_VL3_eth_tx_empty   ) ,
        .iTail_VL3_eth_tx_rden    (u0_iTail_VL3_eth_tx_rden    ) ,
        .ov_queue0_eth_length     (u0_ov_queue0_eth_length     ) ,
        .ov_queue1_eth_length     (u0_ov_queue1_eth_length     ) ,
        .ov_queue2_eth_length     (u0_ov_queue2_eth_length     ) ,
        .ov_queue3_eth_length     (u0_ov_queue3_eth_length     ) ,
        .iVL0StallState_eth       (u0_iVL0StallState_eth       ) ,
        .iVL1StallState_eth       (u0_iVL1StallState_eth       ) ,
        .iVL2StallState_eth       (u0_iVL2StallState_eth       ) ,
        .iVL3StallState_eth       (u0_iVL3StallState_eth       ) ,
        .o_link_mode_sel          (u0_i_link_mode_sel          ) , //output
    
    // switch link interfaces with PHY:PCS Interface
        .i_xlgmii_rxd             (u0_i_xlgmii_rxd             ) , 
        .i_xlgmii_rxc             (u0_i_xlgmii_rxc             ) , 
        .i_xlgmii_valid           (u0_i_xlgmii_valid           ) , 
        .o_xlgmii_txd             (u0_o_xlgmii_txd             ) , 
        .o_xlgmii_txc             (u0_o_xlgmii_txc             ) ,  
        .i_pcs_rdy                (u0_i_pcs_rdy                ) , 
        .hpc_rdy_phy_state        (u0_hpc_rdy_phy_state) ,         
        .i_active_trigger         (u0_i_active_trigger ) ,         
        .o_active_trigger         (u0_o_active_trigger ) //,       
    );


    

    link_top_app u_link_top_1(  
        .i_link_clk                         (link_clk),
        .i_link_rst_n                       (~link_rst_n), 
        .i_app_clk                          (app_clk),
        .i_app_rst_n                        (~link_rst_n),                           
        .i_nic_clk                          (nic_clk),
        .i_nic_rst_n                        (~nic_rst_n),
        .i_mgmt_clk                         (mgmt_clk),
        .i_mgmt_rst_n                       (~mgmt_rst_n),                                      
        .o_nic_hpc_tx_rdy         (i_link_hpc_pkt_ready_1),                               
        .iv_nic_hpc_tx_axis_data  (o_link_hpc_pkt_data_1 ),                               
        .iv_nic_hpc_tx_axis_keep  (o_link_hpc_pkt_keep_1  ),                               
        .i_nic_hpc_tx_axis_start  (o_link_hpc_pkt_start_1 ),                                
        .i_nic_hpc_tx_axis_end    (o_link_hpc_pkt_end_1 ),                               
        .i_nic_hpc_tx_axis_valid  (o_link_hpc_pkt_valid_1),                               
        //   .iv_nic_hpc_tx_axis_user  (o_link_hpc_pkt_user_1 ), 
        .iv_nic_hpc_tx_axis_user  ({o_link_hpc_pkt_user_1,1'b1} ),                                 
        .o_nic_eth_tx_rdy         (link_eth_tx_pkt_ready_1),                             
        .iv_nic_eth_tx_axis_data  (link_eth_tx_pkt_data_1) ,                             
        .iv_nic_eth_tx_axis_keep  (link_eth_tx_pkt_keep_1),                              
        .i_nic_eth_tx_axis_start  (link_eth_tx_pkt_start_1),                             
        .i_nic_eth_tx_axis_end    (link_eth_tx_pkt_end_1),                               
        .i_nic_eth_tx_axis_valid  (link_eth_tx_pkt_valid_1),                             
        //   .iv_nic_eth_tx_axis_user  (link_eth_tx_pkt_user_1), 
        .iv_nic_eth_tx_axis_user  ({link_eth_tx_pkt_user_1,1'b1}),                                
        .i_nic_hpc_rx_rdy         (o_link_hpc_pkt_ready_1        ),                               
        .ov_nic_hpc_rx_axis_data  (i_link_hpc_pkt_data_1 ),                               
        .ov_nic_hpc_rx_axis_keep  (i_link_hpc_pkt_keep_1 ),                                 
        .o_nic_hpc_rx_axis_start  (i_link_hpc_pkt_start_1 ),                                
        .o_nic_hpc_rx_axis_end    (i_link_hpc_pkt_end_1   ),                                
        .o_nic_hpc_rx_axis_valid  (i_link_hpc_pkt_valid_1 ),                                
        .ov_nic_hpc_rx_axis_user  (i_link_hpc_pkt_user_1 ),                                
        .i_nic_eth_rx_rdy         (link_eth_rx_pkt_ready_1       ),                             
        .ov_nic_eth_rx_axis_data  (link_eth_rx_pkt_data_1),                             
        .ov_nic_eth_rx_axis_keep  (link_eth_rx_pkt_keep_1),                                
        .o_nic_eth_rx_axis_start  (link_eth_rx_pkt_start_1),                               
        .o_nic_eth_rx_axis_end    (link_eth_rx_pkt_end_1  ),                              
        .o_nic_eth_rx_axis_valid  (link_eth_rx_pkt_valid_1),                               
        .ov_nic_eth_rx_axis_user  (link_eth_rx_pkt_user_1),                               
        .i_eth_pkt_valid          (u1_i_eth_pkt_valid) ,                    
        .i_eth_pkt_start          (u1_i_eth_pkt_start) ,                    
        .i_eth_pkt_end            (u1_i_eth_pkt_end) ,                  
        .iv_eth_pkt_user          ({u1_iv_eth_pkt_user[`LINK_LAYER_USER_WIDTH-1:1],~u1_iv_eth_pkt_user[0]}) ,                    
        .iv_eth_pkt_keep          (u1_iv_eth_pkt_keep) ,                    
        .iv_eth_pkt_data          (u1_iv_eth_pkt_data) ,                    
        .o_eth_pkt_ready          (u1_o_eth_pkt_ready) ,                    
        // .route_cfg_pkt_in         (u1_route_cfg_pkt_in) ,                     
        // .route_cfg_pkt_in_vld     (u1_route_cfg_pkt_in_vld) ,                         
        // .route_cfg_pkt_in_rdy     (u1_route_cfg_pkt_in_rdy) ,                         
        // .phy_cfg_pkt_out          (u1_phy_cfg_pkt_out) ,                    
        // .phy_cfg_pkt_out_vld      (u1_phy_cfg_pkt_out_vld) ,                        
        // .phy_cfg_pkt_out_rdy      (u1_phy_cfg_pkt_out_rdy) ,                        
        // .psel_i                   (u1_psel_i) ,           
        // .paddr_i                  (u1_paddr_i) ,            
        // .pwrite_i                 (u1_pwrite_i) ,             
        // .penable_i                (u1_penable_i) ,              
        // .pwdata_i                 (u1_pwdata_i) ,             
        // .prdata_o                 (u1_prdata_o) ,             
        // .pready_o                 (u1_pready_o) ,             
        // .pslverr_o                (u1_pslverr_o ) ,              
        .ib_id                    (u1_ib_id     ) ,          
        .pkt_crdt_m               (u1_pkt_crdt_m), 
        .ovBuffer_VL0_eth_tx_data (u1_ovBuffer_VL0_eth_tx_data ) ,                              
        .oBuffer_VL0_eth_tx_empty (u1_oBuffer_VL0_eth_tx_empty ) ,                              
        .iBuffer_VL0_eth_tx_rden  (u1_iBuffer_VL0_eth_tx_rden  ) ,                              
        .ovBuffer_VL1_eth_tx_data (u1_ovBuffer_VL1_eth_tx_data ) ,                              
        .oBuffer_VL1_eth_tx_empty (u1_oBuffer_VL1_eth_tx_empty ) ,                              
        .iBuffer_VL1_eth_tx_rden  (u1_iBuffer_VL1_eth_tx_rden  ) ,                              
        .ovBuffer_VL2_eth_tx_data (u1_ovBuffer_VL2_eth_tx_data ) ,                              
        .oBuffer_VL2_eth_tx_empty (u1_oBuffer_VL2_eth_tx_empty ) ,                              
        .iBuffer_VL2_eth_tx_rden  (u1_iBuffer_VL2_eth_tx_rden  ) ,                              
        .ovBuffer_VL3_eth_tx_data (u1_ovBuffer_VL3_eth_tx_data ) ,                              
        .oBuffer_VL3_eth_tx_empty (u1_oBuffer_VL3_eth_tx_empty ) ,                              
        .iBuffer_VL3_eth_tx_rden  (u1_iBuffer_VL3_eth_tx_rden  ) ,                              
        .oTail_VL0_eth_tx_empty   (u1_oTail_VL0_eth_tx_empty   ) ,                              
        .iTail_VL0_eth_tx_rden    (u1_iTail_VL0_eth_tx_rden    ) ,                              
        .oTail_VL1_eth_tx_empty   (u1_oTail_VL1_eth_tx_empty   ) ,                              
        .iTail_VL1_eth_tx_rden    (u1_iTail_VL1_eth_tx_rden    ) ,                              
        .oTail_VL2_eth_tx_empty   (u1_oTail_VL2_eth_tx_empty   ) ,                              
        .iTail_VL2_eth_tx_rden    (u1_iTail_VL2_eth_tx_rden    ) ,                              
        .oTail_VL3_eth_tx_empty   (u1_oTail_VL3_eth_tx_empty   ) ,                              
        .iTail_VL3_eth_tx_rden    (u1_iTail_VL3_eth_tx_rden    ) ,                              
        .ov_queue0_eth_length     (u1_ov_queue0_eth_length     ) ,                              
        .ov_queue1_eth_length     (u1_ov_queue1_eth_length     ) ,                              
        .ov_queue2_eth_length     (u1_ov_queue2_eth_length     ) ,                              
        .ov_queue3_eth_length     (u1_ov_queue3_eth_length     ) ,                              
        .iVL0StallState_eth       (u1_iVL0StallState_eth       ) ,                              
        .iVL1StallState_eth       (u1_iVL1StallState_eth       ) ,                              
        .iVL2StallState_eth       (u1_iVL2StallState_eth       ) ,                              
        .iVL3StallState_eth       (u1_iVL3StallState_eth       ) ,                              
        .o_link_mode_sel          (u1_i_link_mode_sel           ) ,    //output                               
        .i_xlgmii_rxd             (u1_i_xlgmii_rxd              ) ,                               
        .i_xlgmii_rxc             (u1_i_xlgmii_rxc              ) ,                               
        .i_xlgmii_valid           (u1_i_xlgmii_valid            ) ,                               
        .o_xlgmii_txd             (u1_o_xlgmii_txd              ) ,                               
        .o_xlgmii_txc             (u1_o_xlgmii_txc              ) ,                               
        .i_pcs_rdy                (u1_i_pcs_rdy                 ) ,                               
        .hpc_rdy_phy_state        (u1_hpc_rdy_phy_state) ,                      
        .i_active_trigger         (u1_i_active_trigger ) ,                      
        .o_active_trigger         (u1_o_active_trigger  ) //,                       
        // .anti_starv_en            (u1_anti_starv_en    ) ,                      
        // .starv_cycles             (u1_starv_cycles     ) //,                      
        // .sram_pin_ctrl            (u1_sram_pin_ctrl    ) ,                      
        // .dbg_sel                  (           ) ,                       
        // .dbg_bus                  (            )                      
);

`ifdef DUMMY_NET_PHY
    generate;
        assign u1_i_xlgmii_rxd = u0_o_xlgmii_txd;
        assign u1_i_xlgmii_rxc = u0_o_xlgmii_txc;
        assign u1_i_xlgmii_valid = 1;
        assign u0_i_pcs_rdy = 1;
        assign u0_i_xlgmii_rxd = u1_o_xlgmii_txd;
        assign u0_i_xlgmii_rxc = u1_o_xlgmii_txc;
        assign u0_i_xlgmii_valid = 1;
        assign u1_i_pcs_rdy = 1;
    endgenerate 
`else
    generate;

 // PHY Program Memory Selecion
 //   input                               phy_prog_mem_sel,           // 1'b1-RAM; 1'b0-ROM 
    // Analog Interface signals
    wire                              u0_eth_ln0_rxp_i;                  // Lane 0 Receive Differential Input
    wire                              u0_eth_ln0_rxm_i;                  // Lane 0 Receive Differential Input
    wire                              u0_eth_ln0_txp_o;                  // Lane 0 Transmit Differential Output
    wire                              u0_eth_ln0_txm_o;                  // Lane 0 Transmit Differential Output
    wire                              u0_eth_ln1_rxp_i;
    wire                              u0_eth_ln1_rxm_i;
    wire                              u0_eth_ln1_txp_o;
    wire                              u0_eth_ln1_txm_o;
    wire                              u0_eth_ln2_rxp_i;
    wire                              u0_eth_ln2_rxm_i;
    wire                              u0_eth_ln2_txp_o;
    wire                              u0_eth_ln2_txm_o;
    wire                              u0_eth_ln3_rxp_i;
    wire                              u0_eth_ln3_rxm_i;
    wire                              u0_eth_ln3_txp_o;
    wire                              u0_eth_ln3_txm_o;

    wire                              u1_eth_ln0_rxp_i;                  // Lane 0 Receive Differential Input
    wire                              u1_eth_ln0_rxm_i;                  // Lane 0 Receive Differential Input
    wire                              u1_eth_ln0_txp_o;                  // Lane 0 Transmit Differential Output
    wire                              u1_eth_ln0_txm_o;                  // Lane 0 Transmit Differential Output
    wire                              u1_eth_ln1_rxp_i;
    wire                              u1_eth_ln1_rxm_i;
    wire                              u1_eth_ln1_txp_o;
    wire                              u1_eth_ln1_txm_o;
    wire                              u1_eth_ln2_rxp_i;
    wire                              u1_eth_ln2_rxm_i;
    wire                              u1_eth_ln2_txp_o;
    wire                              u1_eth_ln2_txm_o;
    wire                              u1_eth_ln3_rxp_i;
    wire                              u1_eth_ln3_rxm_i;
    wire                              u1_eth_ln3_txp_o;
    wire                              u1_eth_ln3_txm_o;

`define XMAC    top.x_top.u_eth_mac_core
`define XPHY    top.x_top.u_eth_phy
`define XHAR    top.x_top.u_eth_tx_harness
reg ref_clk_m  ;
reg ref_clk_p  ;
reg xlgmii_tx_100g_clk;
reg xlgmii_rx_100g_clk;
reg xlgmii_tx_40g_clk;
reg xlgmii_rx_40g_clk;
reg mac_csr_clk;

reg prog_mem_sel ;
wire xlgmii_tx_clk_hpc;
wire pll_lock;
wire pll_ref_clk;

svt_apb_if      apb_mst_if();
apb_reset_if    apb_rst_if();

assign apb_mst_if.pclk = mgmt_clk;
assign apb_mst_if.presetn = apb_rst_if.presetn;

enum bit {XLGMII_100G,XLGMII_40G} speed_select;   //0--100Gbp/s, 1--40Gbp/s

initial begin
    prog_mem_sel=0;
    ref_clk_m   =1;
    ref_clk_p   =0;
    
end

initial begin
    // force top.dut.u_pcie_subsys0.repair_test_mode = 0;
    // force top.dut.u_pcie_subsys1.repair_test_mode = 0;
    force u0_net_top.repair_test_mode = 0;
    force u1_net_top.repair_test_mode = 0;
    force u0_net_top.u_eth_phy.phy_25g_inst.i_dpl.i_phy_top_registers.rw_sim_ctrl__sim_1b_model_o=1;
    force u1_net_top.u_eth_phy.phy_25g_inst.i_dpl.i_phy_top_registers.rw_sim_ctrl__sim_1b_model_o=1;
    if($test$plusargs("INIT_ROM")) prog_mem_sel=0;
    else prog_mem_sel=1;
    ref_clk_m=1;
    ref_clk_p=0;
    mac_pcie_syn_rst = 0;
end

`ifdef TEST_HPC_AND_MAC
wire w_link_mode_sel;
//   generate;
        initial begin 
    `ifdef MAC_VRF
        force u_link_top_0.w_link_mode_sel = 1'b1;
        force u_link_top_1.w_link_mode_sel = 1'b1;
    `else
        force u_link_top_0.w_link_mode_sel = 0;
        force u_link_top_1.w_link_mode_sel = 0;
    `endif 
        
        force u_link_top_0.u_Nic_Link_Top.ov_link_init_rw_data[72:71] = 2'b01;
        force u_link_top_1.u_Nic_Link_Top.ov_link_init_rw_data[72:71] = 2'b01;
        end 
        reg [3:0] sl2vl_waddr;
        always @(posedge link_clk or negedge ~link_rst_n) begin 
            if(link_rst_n) begin
              sl2vl_waddr <= 4'h0;
            end 
            else if(sl2vl_waddr <= 3'd7) begin 
              sl2vl_waddr <= #0.1 sl2vl_waddr + 1;
            end 
            else if(sl2vl_waddr > 3'd7) begin 
                 sl2vl_waddr <= #0.1  sl2vl_waddr;//
            end 
        end 
        always @(posedge link_clk or negedge ~link_rst_n) begin 
             if(link_rst_n) begin
             end 
             else if(sl2vl_waddr <= 4'd7) begin 
                force  u_link_top_0.U_VLmap.i_sv2vl_wren        = 1'b1;
                force  u_link_top_0.U_VLmap.iv_sv2vl_waddr[2:0] = sl2vl_waddr[2:0];
                force  u_link_top_0.U_VLmap.iv_sl2vl_wdata[1:0] = sl2vl_waddr[2:1];
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.i_sl2vl_wren        =  1'b1; 
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_waddr[2:0] =  sl2vl_waddr[2:0];
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_wdata[1:0] =  sl2vl_waddr[2:1];

                force  u_link_top_1.U_VLmap.i_sv2vl_wren        = 1'b1;
                force  u_link_top_1.U_VLmap.iv_sv2vl_waddr[2:0] = sl2vl_waddr[2:0];
                force  u_link_top_1.U_VLmap.iv_sl2vl_wdata[1:0] = sl2vl_waddr[2:1];
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.i_sl2vl_wren        =  1'b1; 
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_waddr[2:0] =  sl2vl_waddr[2:0];
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_wdata[1:0] =  sl2vl_waddr[2:1];
            end
            else if(sl2vl_waddr > 4'd7) begin 
               //  sl2vl_waddr <= #0.1  sl2vl_waddr;
                force  u_link_top_0.U_VLmap.i_sv2vl_wren        = 1'b0;
                force  u_link_top_0.U_VLmap.iv_sv2vl_waddr[2:0] = 3'd0;
                force  u_link_top_0.U_VLmap.iv_sl2vl_wdata[1:0] = 2'd0;
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.i_sl2vl_wren        = 1'b0;  
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_waddr[2:0] = 3'd0; 
                force  u_link_top_0.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_wdata[1:0] = 2'd0; 

                force  u_link_top_1.U_VLmap.i_sv2vl_wren        = 1'b0;
                force  u_link_top_1.U_VLmap.iv_sv2vl_waddr[2:0] = 3'd0;
                force  u_link_top_1.U_VLmap.iv_sl2vl_wdata[1:0] = 2'd0;
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.i_sl2vl_wren        = 1'b0;  
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_waddr[2:0] = 3'd0; 
                force  u_link_top_1.u_Nic_Link_Top.U_NicLinkTxTop.U_SL2VLlookUp.iv_sl2vl_wdata[1:0] = 2'd0; 
            end 
        end
    // endgenerate
`endif 

initial begin
    xlgmii_tx_100g_clk  = 0;
    xlgmii_rx_100g_clk  = 0;
    xlgmii_tx_40g_clk   = 0;
    xlgmii_rx_40g_clk   = 0;
    mac_csr_clk         = 0;
    // pclk                = 0;
    // app_clk             = 0;
    speed_select        = XLGMII_100G;
end

initial begin
    if($test$plusargs("MAC_LOOPBACK")) begin
        if($test$plusargs("XLGMII40")) begin
            force u0_net_top.xlgmii_clk = xlgmii_tx_40g_clk; 
            force u1_net_top.xlgmii_clk = xlgmii_tx_40g_clk;   
        end 
        else begin
            force u0_net_top.xlgmii_clk = xlgmii_tx_100g_clk;
            force u1_net_top.xlgmii_clk = xlgmii_tx_100g_clk;   
        end 
    end
end

initial begin
    forever begin
        @(negedge ~mgmt_rst_n);
            speed_select <= ~speed_select;
    end
end

initial begin
    uvm_config_db#(virtual svt_apb_if)::set(uvm_root::get(), "uvm_test_top.env.m_mac_env.apb_master", "vif", apb_mst_if); 
    uvm_config_db#(virtual apb_reset_if.apb_reset_modport)::set(uvm_root::get(), "uvm_test_top.env*", "reset_mp_apb", apb_rst_if.apb_reset_modport);
    // uvm_config_db#(virtual axi4_stream_if)::set(uvm_root::get(), "uvm_test_top.env", "axi4_stream_vif", axi4_stream_vif);
    // uvm_config_db#(virtual axi4_stream_if)::set(uvm_root::get(), "uvm_test_top.env.rbuf_agt.mon", "axi4_stream_vif", axi4_stream_vif);
    uvm_config_db#(virtual svt_apb_if)::set(uvm_root::get(), "uvm_test_top.env.rbuf_agt.mon", "apb_vif", apb_mst_if);
end

// always #(`SVT_ETHERNET_XLGMII_100G_CLOCK)   xlgmii_tx_100g_clk  = ~xlgmii_tx_100g_clk;
// always #(`SVT_ETHERNET_XLGMII_100G_CLOCK)   xlgmii_rx_100g_clk  = ~xlgmii_rx_100g_clk;
// always #(`SVT_ETHERNET_XLGMII_40G_CLOCK)    xlgmii_tx_40g_clk   = ~xlgmii_tx_40g_clk;
// always #(`SVT_ETHERNET_XLGMII_40G_CLOCK)    xlgmii_rx_40g_clk   = ~xlgmii_rx_40g_clk;
// always #(`SVT_ETHERNET_MAC_CFG_CLOCK)       mac_csr_clk         = ~mac_csr_clk;

always #(0.64ns)   xlgmii_tx_100g_clk  = ~xlgmii_tx_100g_clk;
always #(0.64ns)   xlgmii_rx_100g_clk  = ~xlgmii_rx_100g_clk;
always #(1.6ns)    xlgmii_tx_40g_clk   = ~xlgmii_tx_40g_clk;
always #(1.6ns)    xlgmii_rx_40g_clk   = ~xlgmii_rx_40g_clk;
always #(2ns)       mac_csr_clk         = ~mac_csr_clk;
// always #(`SVT_ETHERNET_CFG_CLOCK)           pclk                = ~pclk;


always #1.6ns ref_clk_m=~ref_clk_m;
always #1.6ns ref_clk_p=~ref_clk_p;

assign apb_rst_if.presetn = u0_net_top.presetn;

assign u_link_top_0.sram_pin_ctrl = 0;
assign u_link_top_1.sram_pin_ctrl = 0;
assign u0_i_active_trigger = 0;
assign u1_i_active_trigger = 0;
assign u0_iVL0StallState_eth = 0;
assign u0_iVL1StallState_eth = 0;
assign u0_iVL2StallState_eth = 0;
assign u0_iVL3StallState_eth = 0;
assign u1_iVL0StallState_eth = 0;
assign u1_iVL1StallState_eth = 0;
assign u1_iVL2StallState_eth = 0;
assign u1_iVL3StallState_eth = 0;


  net_top_wo_phy u0_net_top(
    // -------------------------------------- CLK and RST ---------------------------------------// 
        .por_rstn          (~mgmt_rst_n), // Power on reset. Active low
        .pclk_i            (mgmt_clk  ),   // Main CSR clock
        .mac_csr_clk       (mac_csr_clk),  //250Mhz
        .xlgmii_clk        (xlgmii_clk&pll_lock),
        // .xlgmii_tx_clk_hpc          (xlgmii_tx_clk_hpc),
        // .xlgmii_rx_clk_hpc          (xlgmii_rx_clk_hpc),
        .app_clk                    (app_clk) ,
        .app_rstn                   (~link_rst_n),
        // --------------------------------- XLGMII Sel for HPC/ MAC ----------------------------------//  
        .xlgmii_mode_sel           (u0_i_link_mode_sel),            // 1- Eth_mac; 0- HPC
        // XLGMII Interface
        .xlgmii_rxd_hpc           (u0_i_xlgmii_rxd),
        .xlgmii_rxc_hpc           (u0_i_xlgmii_rxc),
        .xlgmii_rx_valid_hpc      (u0_i_xlgmii_valid),
        .xlgmii_txd_hpc           (u0_o_xlgmii_txd),
        .xlgmii_txc_hpc           (u0_o_xlgmii_txc),
        .xlgmii_tx_rdy_hpc        (u0_i_pcs_rdy),
        // -------------------------------------- TOP-LEVEL APB ---------------------------------------// 
        .psel_i                      (apb_mst_if.psel                ),
        .paddr_i                     (apb_mst_if.paddr               ),
        .pwrite_i                    (apb_mst_if.pwrite              ),
        .penable_i                   (apb_mst_if.penable             ),
        .pwdata_i                    (apb_mst_if.pwdata              ),
        .prdata_o                    (apb_mst_if.slave_if[0].prdata  ),
        .pready_o                    (apb_mst_if.slave_if[0].pready  ),
        .pslverr_o                   (apb_mst_if.slave_if[0].pslverr ),
        // --------------------------------------- APP Interface --------------------------------------//
        // 4 Virtual lanes for MAC to arbitrate
        .queue0_length                  (u0_ov_queue0_eth_length     ),      // Indicating the depth of VL0
        .queue1_length                  (u0_ov_queue1_eth_length     ),      // Indicating the depth of VL1
        .queue2_length                  (u0_ov_queue2_eth_length     ),      // Indicating the depth of VL2
        .queue3_length                  (u0_ov_queue3_eth_length     ),      // Indicating the depth of VL3
        .ivBuffer_VL0_tx_data           ({u0_ovBuffer_VL0_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u0_ovBuffer_VL0_eth_tx_data[130],u0_ovBuffer_VL0_eth_tx_data[129:0]}),       // Indicating VL0 data id valid
        .iBuffer_VL0_tx_empty           (u0_oBuffer_VL0_eth_tx_empty ),       // VL0 is empty
        .oBuffer_VL0_tx_rden            (u0_iBuffer_VL0_eth_tx_rden  ),       // VL0 read enable
        .ivBuffer_VL1_tx_data           ({u0_ovBuffer_VL1_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u0_ovBuffer_VL1_eth_tx_data[130],u0_ovBuffer_VL1_eth_tx_data[129:0]} ),
        .iBuffer_VL1_tx_empty           (u0_oBuffer_VL1_eth_tx_empty ),
        .oBuffer_VL1_tx_rden            (u0_iBuffer_VL1_eth_tx_rden  ),
        .ivBuffer_VL2_tx_data           ({u0_ovBuffer_VL2_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u0_ovBuffer_VL2_eth_tx_data[130],u0_ovBuffer_VL2_eth_tx_data[129:0]} ),
        .iBuffer_VL2_tx_empty           (u0_oBuffer_VL2_eth_tx_empty ),
        .oBuffer_VL2_tx_rden            (u0_iBuffer_VL2_eth_tx_rden  ),
        .ivBuffer_VL3_tx_data           ({u0_ovBuffer_VL3_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u0_ovBuffer_VL3_eth_tx_data[130],u0_ovBuffer_VL3_eth_tx_data[129:0]} ),
        .iBuffer_VL3_tx_empty           (u0_oBuffer_VL3_eth_tx_empty ),
        .oBuffer_VL3_tx_rden            (u0_iBuffer_VL3_eth_tx_rden  ),
        .iTail_VL0_tx_empty             (u0_oTail_VL0_eth_tx_empty   ),         // Active low when VL0 has complete pkts
        .oTail_VL0_tx_rden              (u0_iTail_VL0_eth_tx_rden    ),          // Read enable. High when each complete pkt is read
        .iTail_VL1_tx_empty             (u0_oTail_VL1_eth_tx_empty   ),
        .oTail_VL1_tx_rden              (u0_iTail_VL1_eth_tx_rden    ),
        .iTail_VL2_tx_empty             (u0_oTail_VL2_eth_tx_empty   ),
        .oTail_VL2_tx_rden              (u0_iTail_VL2_eth_tx_rden    ),
        .iTail_VL3_tx_empty             (u0_oTail_VL3_eth_tx_empty   ),
        .oTail_VL3_tx_rden              (u0_iTail_VL3_eth_tx_rden    ),
        // App Receiving AXI4 Stream
        .pkt_crdt_m                   (u0_pkt_crdt_m),
        .m_axis_route_tvalid          (u0_i_eth_pkt_valid),
        .m_axis_route_tstart          (u0_i_eth_pkt_start),
        .m_axis_route_tlast           (u0_i_eth_pkt_end  ),
        .m_axis_route_tuser           (u0_iv_eth_pkt_user),
        .m_axis_route_tkeep           (u0_iv_eth_pkt_keep),
        .m_axis_route_tdata           (u0_iv_eth_pkt_data),
        .m_axis_route_tready          (u0_o_eth_pkt_ready),
        // ------------------------------------------- PHY ------------------------------------
        // Analog Interface signals
        // .eth_rdy_phy_state   (eth_rdy_phy_state),
        .phy_prog_mem_sel        (prog_mem_sel           ),
        .ln0_rxp_i               (u0_eth_ln0_rxp_i       ),                  // Lane 0 Receive Differential Input
        .ln0_rxm_i               (u0_eth_ln0_rxm_i       ),                  // Lane 0 Receive Differential Input
        .ln0_txp_o               (u0_eth_ln0_txp_o       ),                  // Lane 0 Transmit Differential Output
        .ln0_txm_o               (u0_eth_ln0_txm_o       ),                  // Lane 0 Transmit Differential Output
        .ln1_rxp_i               (u0_eth_ln1_rxp_i       ),
        .ln1_rxm_i               (u0_eth_ln1_rxm_i       ),
        .ln1_txp_o               (u0_eth_ln1_txp_o       ),
        .ln1_txm_o               (u0_eth_ln1_txm_o       ),
        .ln2_rxp_i               (u0_eth_ln2_rxp_i       ),
        .ln2_rxm_i               (u0_eth_ln2_rxm_i       ),
        .ln2_txp_o               (u0_eth_ln2_txp_o       ),
        .ln2_txm_o               (u0_eth_ln2_txm_o       ),
        .ln3_rxp_i               (u0_eth_ln3_rxp_i       ),
        .ln3_rxm_i               (u0_eth_ln3_rxm_i       ),
        .ln3_txp_o               (u0_eth_ln3_txp_o       ),
        .ln3_txm_o               (u0_eth_ln3_txm_o       ),
        .atest1_o                (          ),                   // Analog DC test output1
        .atest2_o                (          ),                   // Analog DC test output2
        .soc_atest1_i            (1'b0      ),               // SoC analog test bus input1 at the AFE boundary
        .soc_atest2_i            (1'b0      ),               // SoC analog test bus input2 ~
        .refclkp_i               (ref_clk_p ),                  // High-speed Bump. Differential CML reference clock i
        .refclkm_i               (ref_clk_m ),                  // high-speed Bump. Differential CML reference clock i
        .refclk_left_i           (ref_clk_p ),              // Single-Ended CMOS Inter-macro reference clock input
        .refclk_right_i          (ref_clk_m ),             // Single-Ended CMOS Inter-macro reference clock input
        .refclk_left_o           (  ),              // ~ output ~ left
        .refclk_right_o          (  ),             // ~ output ~ right
        // Digital - Common Interface Pins
        .refres_i           (1'b1  ),                   // Low-speed Bump;  Reference resistor, 3k ohm +/-1%
        .xlgmac_sbd_intr_o  (      ),     
        .xlgpcs_sbd_intr_o  (      ),               // Interrupt output of CL73 events:1)Page received(AN) 2)AN is completed 3)For incompatible link partner           (),this interrupt generation is disabled by default
        .xlgpcs_tx_lane_sts (      ), 
        .xlgpcs_rx_lane_sts (      ), 
        .cpu_debug_tdo      (      ),     
        .cpu_debug_tdo_en   (      ),     
        .cpu_debug_tck      (1'b0  ),     
        .cpu_debug_trst     (1'b0  ),     
        .cpu_debug_tms      (1'b0  ),     
        .cpu_debug_tdi      (1'b0  )     
    );




    net_top_wo_phy u1_net_top(
    // -------------------------------------- CLK and RST ---------------------------------------// 
        .por_rstn          (~mgmt_rst_n), // Power on reset. Active low
        .pclk_i            (mgmt_clk  ),   // Main CSR clock
        .mac_csr_clk       (mac_csr_clk),  //250Mhz
        .xlgmii_clk        (xlgmii_clk&pll_lock),
        // .xlgmii_tx_clk_hpc          (xlgmii_tx_clk_hpc),
        // .xlgmii_rx_clk_hpc          (xlgmii_rx_clk_hpc),
        .app_clk                    (app_clk) ,
        .app_rstn                   (~link_rst_n),
        // --------------------------------- XLGMII Sel for HPC/ MAC ----------------------------------//  
        .xlgmii_mode_sel           (u1_i_link_mode_sel),            // 1- Eth_mac; 0- HPC
        // XLGMII Interface
        .xlgmii_rxd_hpc           (u1_i_xlgmii_rxd),
        .xlgmii_rxc_hpc           (u1_i_xlgmii_rxc),
        .xlgmii_rx_valid_hpc      (u1_i_xlgmii_valid),
        .xlgmii_txd_hpc           (u1_o_xlgmii_txd),
        .xlgmii_txc_hpc           (u1_o_xlgmii_txc),
        .xlgmii_tx_rdy_hpc        (u1_i_pcs_rdy),
        // -------------------------------------- TOP-LEVEL APB ---------------------------------------// 
        .psel_i                      (apb_mst_if.psel                ),
        .paddr_i                     (apb_mst_if.paddr               ),
        .pwrite_i                    (apb_mst_if.pwrite              ),
        .penable_i                   (apb_mst_if.penable             ),
        .pwdata_i                    (apb_mst_if.pwdata              ),
        .prdata_o                    (apb_mst_if.slave_if[1].prdata  ),
        .pready_o                    (apb_mst_if.slave_if[1].pready  ),
        .pslverr_o                   (apb_mst_if.slave_if[1].pslverr ),
        // --------------------------------------- APP Interface --------------------------------------//
        // 4 Virtual lanes for MAC to arbitrate
        .queue0_length                  (u1_ov_queue0_eth_length     ),      // Indicating the depth of VL0
        .queue1_length                  (u1_ov_queue1_eth_length     ),      // Indicating the depth of VL1
        .queue2_length                  (u1_ov_queue2_eth_length     ),      // Indicating the depth of VL2
        .queue3_length                  (u1_ov_queue3_eth_length     ),      // Indicating the depth of VL3
        .ivBuffer_VL0_tx_data           ({u1_ovBuffer_VL0_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u1_ovBuffer_VL0_eth_tx_data[130],u1_ovBuffer_VL0_eth_tx_data[129:0]} ),       // Indicating VL0 data id valid
        .iBuffer_VL0_tx_empty           (u1_oBuffer_VL0_eth_tx_empty ),       // VL0 is empty
        .oBuffer_VL0_tx_rden            (u1_iBuffer_VL0_eth_tx_rden  ),       // VL0 read enable
        .ivBuffer_VL1_tx_data           ({u1_ovBuffer_VL1_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u1_ovBuffer_VL1_eth_tx_data[130],u1_ovBuffer_VL1_eth_tx_data[129:0]} ),
        .iBuffer_VL1_tx_empty           (u1_oBuffer_VL1_eth_tx_empty ),
        .oBuffer_VL1_tx_rden            (u1_iBuffer_VL1_eth_tx_rden  ),
        .ivBuffer_VL2_tx_data           ({u1_ovBuffer_VL2_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u1_ovBuffer_VL2_eth_tx_data[130],u1_ovBuffer_VL2_eth_tx_data[129:0]} ),
        .iBuffer_VL2_tx_empty           (u1_oBuffer_VL2_eth_tx_empty ),
        .oBuffer_VL2_tx_rden            (u1_iBuffer_VL2_eth_tx_rden  ),
        .ivBuffer_VL3_tx_data           ({u1_ovBuffer_VL3_eth_tx_data[DEMUX_QUEUE_WIDTH-1:131], ~u1_ovBuffer_VL3_eth_tx_data[130],u1_ovBuffer_VL3_eth_tx_data[129:0]} ),
        .iBuffer_VL3_tx_empty           (u1_oBuffer_VL3_eth_tx_empty ),
        .oBuffer_VL3_tx_rden            (u1_iBuffer_VL3_eth_tx_rden  ),
        .iTail_VL0_tx_empty             (u1_oTail_VL0_eth_tx_empty   ),         // Active low when VL0 has complete pkts
        .oTail_VL0_tx_rden              (u1_iTail_VL0_eth_tx_rden    ),          // Read enable. High when each complete pkt is read
        .iTail_VL1_tx_empty             (u1_oTail_VL1_eth_tx_empty   ),
        .oTail_VL1_tx_rden              (u1_iTail_VL1_eth_tx_rden    ),
        .iTail_VL2_tx_empty             (u1_oTail_VL2_eth_tx_empty   ),
        .oTail_VL2_tx_rden              (u1_iTail_VL2_eth_tx_rden    ),
        .iTail_VL3_tx_empty             (u1_oTail_VL3_eth_tx_empty   ),
        .oTail_VL3_tx_rden              (u1_iTail_VL3_eth_tx_rden    ),
        // App Receiving AXI4 Stream
        .pkt_crdt_m                   (u1_pkt_crdt_m),
        .m_axis_route_tvalid          (u1_i_eth_pkt_valid),
        .m_axis_route_tstart          (u1_i_eth_pkt_start),
        .m_axis_route_tlast           (u1_i_eth_pkt_end  ),
        .m_axis_route_tuser           (u1_iv_eth_pkt_user),
        .m_axis_route_tkeep           (u1_iv_eth_pkt_keep),
        .m_axis_route_tdata           (u1_iv_eth_pkt_data),
        .m_axis_route_tready          (u1_o_eth_pkt_ready),
        // ------------------------------------------- PHY ------------------------------------
        // Analog Interface signals
        // .eth_rdy_phy_state   (eth_rdy_phy_state),
        .phy_prog_mem_sel        (prog_mem_sel),
        .ln0_rxp_i               (u1_eth_ln0_rxp_i       ),                  // Lane 0 Receive Differential Input
        .ln0_rxm_i               (u1_eth_ln0_rxm_i       ),                  // Lane 0 Receive Differential Input
        .ln0_txp_o               (u1_eth_ln0_txp_o       ),                  // Lane 0 Transmit Differential Output
        .ln0_txm_o               (u1_eth_ln0_txm_o       ),                  // Lane 0 Transmit Differential Output
        .ln1_rxp_i               (u1_eth_ln1_rxp_i       ),
        .ln1_rxm_i               (u1_eth_ln1_rxm_i       ),
        .ln1_txp_o               (u1_eth_ln1_txp_o       ),
        .ln1_txm_o               (u1_eth_ln1_txm_o       ),
        .ln2_rxp_i               (u1_eth_ln2_rxp_i       ),
        .ln2_rxm_i               (u1_eth_ln2_rxm_i       ),
        .ln2_txp_o               (u1_eth_ln2_txp_o       ),
        .ln2_txm_o               (u1_eth_ln2_txm_o       ),
        .ln3_rxp_i               (u1_eth_ln3_rxp_i       ),
        .ln3_rxm_i               (u1_eth_ln3_rxm_i       ),
        .ln3_txp_o               (u1_eth_ln3_txp_o       ),
        .ln3_txm_o               (u1_eth_ln3_txm_o       ),
        .atest1_o                (        ),                   // Analog DC test output1
        .atest2_o                (        ),                   // Analog DC test output2
        .soc_atest1_i            (1'b0    ),               // SoC analog test bus input1 at the AFE boundary
        .soc_atest2_i            (1'b0    ),               // SoC analog test bus input2 ~
        .refclkp_i               (ref_clk_p ),                  // High-speed Bump. Differential CML reference clock i
        .refclkm_i               (ref_clk_m ),                  // high-speed Bump. Differential CML reference clock i
        .refclk_left_i           (ref_clk_p ),              // Single-Ended CMOS Inter-macro reference clock input
        .refclk_right_i          (ref_clk_m ),             // Single-Ended CMOS Inter-macro reference clock input
        .refclk_left_o           (  ),              // ~ output ~ left
        .refclk_right_o          (  ),             // ~ output ~ right
        // Digital - Common Interface Pins
        .refres_i           (1'b1  ),                   // Low-speed Bump;  Reference resistor, 3k ohm +/-1%
        .xlgmac_sbd_intr_o  (      ),     
        .xlgpcs_sbd_intr_o  (      ),               // Interrupt output of CL73 events:1)Page received(AN) 2)AN is completed 3)For incompatible link partner           (),this interrupt generation is disabled by default
        .xlgpcs_tx_lane_sts (      ), 
        .xlgpcs_rx_lane_sts (      ), 
        .cpu_debug_tdo      (      ),     
        .cpu_debug_tdo_en   (      ),     
        .cpu_debug_tck      (1'b0  ),     
        .cpu_debug_trst     (1'b0  ),     
        .cpu_debug_tms      (1'b0  ),     
        .cpu_debug_tdi      (1'b0  )     
    );
    assign   pll_lcok = 1'b1;
    assign  u0_net_top.u_eth_mac_core.xlgmii_rxd_i =  u1_net_top.u_eth_mac_core.xlgmii_txd_o;
    assign  u0_net_top.u_eth_mac_core.xlgmii_rxc_i =  u1_net_top.u_eth_mac_core.xlgmii_txc_o;
    assign  u1_net_top.u_eth_mac_core.xlgmii_rxd_i =  u0_net_top.u_eth_mac_core.xlgmii_txd_o;
    assign  u1_net_top.u_eth_mac_core.xlgmii_rxc_i =  u0_net_top.u_eth_mac_core.xlgmii_txc_o;
    assign  u0_net_top.u_eth_mac_core.xlgmii_trdy_i = 1;
    assign  u1_net_top.u_eth_mac_core.xlgmii_trdy_i = 1;
    assign  u0_net_top.u_eth_mac_core.xlgmii_valid_i = 1;
    assign  u1_net_top.u_eth_mac_core.xlgmii_valid_i = 1;
    clk_gen_mdl #(781.25)   U_xlgmii_tx_clk_hpc_clk_gen_mdl(xlgmii_clk);
    clk_gen_mdl #(900)   U_app_clk_gen_mdl(app_clk);
    assign u0_net_top.u_eth_mac_core.xlgmac_clk_tx_i = xlgmii_clk;
    assign u0_net_top.u_eth_mac_core.xlgmac_clk_rx_i = xlgmii_clk;
    assign u0_net_top.u_eth_mac_core.xlgmac_clk_aux_i = xlgmii_clk;
    assign u0_net_top.u_eth_mac_core.xlgmac_clk_csr_i = mac_csr_clk;

    assign u1_net_top.u_eth_mac_core.xlgmac_clk_tx_i = xlgmii_clk;
    assign u1_net_top.u_eth_mac_core.xlgmac_clk_rx_i = xlgmii_clk;
    assign u1_net_top.u_eth_mac_core.xlgmac_clk_aux_i = xlgmii_clk;
    assign u1_net_top.u_eth_mac_core.xlgmac_clk_csr_i = mac_csr_clk;
    // PLL_WRAP2 u_pll1(
    //      .REFCLK(mgmt_clk),   
    //      .PD(~u1_net_top.cm0_ok_o),
    //      .FBDIV('d40),
    //      .POSTDIV0('d2),
    //      .REFDIV('d11),
    //      .CLKOUT(xlgmii_clk),   
    //      .LOCK (pll_lock)
    // );

    assign pll_ref_clk = u0_net_top.pma_pll_output_clk;

assign u1_eth_ln0_rxp_i = u0_eth_ln0_txp_o;
assign u1_eth_ln0_rxm_i = u0_eth_ln0_txm_o;
assign u0_eth_ln0_rxp_i = u1_eth_ln0_txp_o;
assign u0_eth_ln0_rxm_i = u1_eth_ln0_txm_o;
assign u1_eth_ln1_rxp_i = u0_eth_ln1_txp_o;
assign u1_eth_ln1_rxm_i = u0_eth_ln1_txm_o;
assign u0_eth_ln1_rxp_i = u1_eth_ln1_txp_o;
assign u0_eth_ln1_rxm_i = u1_eth_ln1_txm_o;
assign u1_eth_ln2_rxp_i = u0_eth_ln2_txp_o;
assign u1_eth_ln2_rxm_i = u0_eth_ln2_txm_o;
assign u0_eth_ln2_rxp_i = u1_eth_ln2_txp_o;
assign u0_eth_ln2_rxm_i = u1_eth_ln2_txm_o;
assign u1_eth_ln3_rxp_i = u0_eth_ln3_txp_o;
assign u1_eth_ln3_rxm_i = u0_eth_ln3_txm_o;
assign u0_eth_ln3_rxp_i = u1_eth_ln3_txp_o;
assign u0_eth_ln3_rxm_i = u1_eth_ln3_txm_o;

    endgenerate
`endif
    

//    pcie_subsys_wo_phy#(
//        .G_NUM_FUNC             (G_NUM_FUNC     ),
//        .G_NUM_LANES            (G_NUM_LANES    ),
//        .G_PIPE_WIDTH           (G_PIPE_WIDTH   ),
//        .G_PIPE_INTF            (G_PIPE_INTF    ),
//        .G_RXBUF_LATENCY        (G_RXBUF_LATENCY),
//        .G_TXBUF_LATENCY        (G_TXBUF_LATENCY),
//        .G_NPBUF_SIZE           (G_NPBUF_SIZE   ),
//        .G_NPBUF_WIDTH          (G_NPBUF_WIDTH  ),
//        .G_MAX_VF               (G_MAX_VF       ),
//        .G_DATA_PROT            (G_DATA_PROT    ),
//        .G_DL_DATAPATH          (G_DL_DATAPATH  ),
//        .G_TL_DATAPATH          (G_TL_DATAPATH  ),
//        .DATA_WIDTH             (PCIE_DATA_WIDTH),
//        .ADDR_WIDTH             (PCIE_ADDR_WIDTH)
//    ) u_pcie_subsys0(
//        //axis_tx
//        .phy_prog_mem_sel                           (phy_prog_mem_sel_0),
//        .cc_tdata                                   (cc_tdata_0 ),
//        .cc_tkeep                                   (cc_tkeep_0 ),
//        .cc_tuser                                   (cc_tuser_0 ),
//        .cc_tvalid                                  (cc_tvalid_0),
//        .cc_tlast                                   (cc_tlast_0 ),
//        .cc_tready                                  (cc_tready_0),
//        .rq_tdata                                   (rq_tdata_0  ),
//        .rq_tkeep                                   (rq_tkeep_0  ),
//        .rq_tuser                                   (rq_tuser_0  ),
//        .rq_tvalid                                  (rq_tvalid_0 ),
//        .rq_tlast                                   (rq_tlast_0  ),
//        .rq_tready                                  (rq_tready_0 ),
//        //axis rx 
//        .axis_m_clk                                 (axis_m_clk_0 ),
//        .axis_m_rstn                                (axis_m_rstn_0),
//        .cq_tdata                                   (cq_tdata_0 ),            
//        .cq_tkeep                                   (cq_tkeep_0 ),            
//        .cq_tuser                                   (cq_tuser_0 ),            
//        .cq_tvalid                                  (cq_tvalid_0),            
//        .cq_tlast                                   (cq_tlast_0 ),            
//        .cq_tready                                  (cq_tready_0),            
//        .rc_tdata                                   (rc_tdata_0 ),            
//        .rc_tkeep                                   (rc_tkeep_0 ),            
//        .rc_tuser                                   (rc_tuser_0 ),            
//        .rc_tvalid                                  (rc_tvalid_0),            
//        .rc_tlast                                   (rc_tlast_0 ),            
//        .rc_tready                                  (rc_tready_0),          
//        // .ln0_txm_o                                  (pcie_ln0_txm_o),       
//        // .ln0_txp_o                                  (pcie_ln0_txp_o),       
//        // .ln1_txm_o                                  (pcie_ln1_txm_o),       
//        // .ln1_txp_o                                  (pcie_ln1_txp_o),       
//        // .ln2_txm_o                                  (pcie_ln2_txm_o),       
//        // .ln2_txp_o                                  (pcie_ln2_txp_o),       
//        // .ln3_txm_o                                  (pcie_ln3_txm_o),       
//        // .ln3_txp_o                                  (pcie_ln3_txp_o),       
//        // .ln4_txm_o                                  (pcie_ln4_txm_o),       
//        // .ln4_txp_o                                  (pcie_ln4_txp_o),       
//        // .ln5_txm_o                                  (pcie_ln5_txm_o),       
//        // .ln5_txp_o                                  (pcie_ln5_txp_o),       
//        // .ln6_txm_o                                  (pcie_ln6_txm_o),       
//        // .ln6_txp_o                                  (pcie_ln6_txp_o),       
//        // .ln7_txm_o                                  (pcie_ln7_txm_o),       
//        // .ln7_txp_o                                  (pcie_ln7_txp_o),       
//        // .ln0_rxm_i                                  (pcie_ln0_rxm_i),       
//        // .ln0_rxp_i                                  (pcie_ln0_rxp_i),       
//        // .ln1_rxm_i                                  (pcie_ln1_rxm_i),       
//        // .ln1_rxp_i                                  (pcie_ln1_rxp_i),       
//        // .ln2_rxm_i                                  (pcie_ln2_rxm_i),       
//        // .ln2_rxp_i                                  (pcie_ln2_rxp_i),       
//        // .ln3_rxm_i                                  (pcie_ln3_rxm_i),       
//        // .ln3_rxp_i                                  (pcie_ln3_rxp_i),       
//        // .ln4_rxm_i                                  (pcie_ln4_rxm_i),       
//        // .ln4_rxp_i                                  (pcie_ln4_rxp_i),       
//        // .ln5_rxm_i                                  (pcie_ln5_rxm_i),       
//        // .ln5_rxp_i                                  (pcie_ln5_rxp_i),       
//        // .ln6_rxm_i                                  (pcie_ln6_rxm_i),       
//        // .ln6_rxp_i                                  (pcie_ln6_rxp_i),       
//        // .ln7_rxm_i                                  (pcie_ln7_rxm_i),       
//        // .ln7_rxp_i                                  (pcie_ln7_rxp_i),
//        .refres                                   (refres_0),
//        // .refres_1                                   (pcie_refres_1),       
//        .pma0_refclkm                               (pcie_pma0_refclkm_0),
//        .pma0_refclkp                               (pcie_pma0_refclkp_0),
//        .apb_prdata                                 (apb_prdata_0 ), 
//        .apb_pready                                 (apb_pready_0 ), 
//        .apb_pslverr                                (apb_pslverr_0), 
//        .apb_pclk                                   (mgmt_clk   ),//50MHz 
//        `ifdef TEST_HPC_AND_MAC
//        .apb_prstn                                  ( (~mgmt_rst_n) & mac_pcie_syn_rst ),// !!! ~FOR HCA TEST
//        `else
//        .apb_prstn                                  ( ~mgmt_rst_n ),// !!! ~FOR HCA TEST
//        `endif
//        .apb_penable                                (apb_penable_0), 
//        .apb_psel                                   (apb_psel_0   ), 
//        .apb_pwrite                                 (apb_pwrite_0 ), 
//        .apb_paddr                                  (apb_paddr_0  ), 
//        .apb_pwdata                                 (apb_pwdata_0 ),
//        //sideband
//        .pl_ltssm                                   (     ),
//        .max_pyld_sz                                (max_pyld_sz_0  ),
//        .max_rd_req_sz                              (max_rd_req_sz_0),
//        .user_clk                                   ( user_clk_0   ),
//        .user_rst                                   ( user_rst_0   ),
//        .aux_clk                                    (mgmt_clk    ),//50MHz
//        .cpu_clk_i                                  (cpu_clk_i),
//        //.aux_rstn                                   (mgmt_rst_n   ),
//        .pl_wake_in                                 (pl_wake_in_0 ),
//        .pl_wake_oen                                (pl_wake_oen_0),
//        .sys_npor                                   (sys_npor),
//        // .scan_mode                                  (scan_mode_0),
//        // .scan_clk                                   (scan_clk_0 ),
//        .tdo_en                                     (tdo_en_0),
//        .tdo                                        (tdo_0      ),
//        .tdi                                        (tdi_0       ),
//        .tms                                        (tms_0       ),
//        .trst                                       (trst_0     ),
//        .tck                                        (tck_0       )
//    );
//
//    pcie_subsys_wo_phy#(
//        .G_NUM_FUNC             (G_NUM_FUNC     ),
//        .G_NUM_LANES            (G_NUM_LANES    ),
//        .G_PIPE_WIDTH           (G_PIPE_WIDTH   ),
//        .G_PIPE_INTF            (G_PIPE_INTF    ),
//        .G_RXBUF_LATENCY        (G_RXBUF_LATENCY),
//        .G_TXBUF_LATENCY        (G_TXBUF_LATENCY),
//        .G_NPBUF_SIZE           (G_NPBUF_SIZE   ),
//        .G_NPBUF_WIDTH          (G_NPBUF_WIDTH  ),
//        .G_MAX_VF               (G_MAX_VF       ),
//        .G_DATA_PROT            (G_DATA_PROT    ),
//        .G_DL_DATAPATH          (G_DL_DATAPATH  ),
//        .G_TL_DATAPATH          (G_TL_DATAPATH  ),
//        .DATA_WIDTH             (PCIE_DATA_WIDTH),
//        .ADDR_WIDTH             (PCIE_ADDR_WIDTH)
//    ) u_pcie_subsys1(
//        //axis_tx
//        .phy_prog_mem_sel                           (phy_prog_mem_sel_1),
//        .cc_tdata                                   (cc_tdata_1 ),
//        .cc_tkeep                                   (cc_tkeep_1 ),
//        .cc_tuser                                   (cc_tuser_1 ),
//        .cc_tvalid                                  (cc_tvalid_1),
//        .cc_tlast                                   (cc_tlast_1 ),
//        .cc_tready                                  (cc_tready_1),
//        .rq_tdata                                   (rq_tdata_1  ),
//        .rq_tkeep                                   (rq_tkeep_1  ),
//        .rq_tuser                                   (rq_tuser_1  ),
//        .rq_tvalid                                  (rq_tvalid_1 ),
//        .rq_tlast                                   (rq_tlast_1  ),
//        .rq_tready                                  (rq_tready_1 ),
//        //axis rx 
//        .axis_m_clk                                 (axis_m_clk_1 ),
//        .axis_m_rstn                                (axis_m_rstn_1),
//        .cq_tdata                                   (cq_tdata_1 ),            
//        .cq_tkeep                                   (cq_tkeep_1 ),            
//        .cq_tuser                                   (cq_tuser_1 ),            
//        .cq_tvalid                                  (cq_tvalid_1),            
//        .cq_tlast                                   (cq_tlast_1 ),            
//        .cq_tready                                  (cq_tready_1),            
//        .rc_tdata                                   (rc_tdata_1 ),            
//        .rc_tkeep                                   (rc_tkeep_1 ),            
//        .rc_tuser                                   (rc_tuser_1 ),            
//        .rc_tvalid                                  (rc_tvalid_1),            
//        .rc_tlast                                   (rc_tlast_1 ),            
//        .rc_tready                                  (rc_tready_1),          
//        // .ln0_txm_o                                  (pcie_ln0_txm_o),       
//        // .ln0_txp_o                                  (pcie_ln0_txp_o),       
//        // .ln1_txm_o                                  (pcie_ln1_txm_o),       
//        // .ln1_txp_o                                  (pcie_ln1_txp_o),       
//        // .ln2_txm_o                                  (pcie_ln2_txm_o),       
//        // .ln2_txp_o                                  (pcie_ln2_txp_o),       
//        // .ln3_txm_o                                  (pcie_ln3_txm_o),       
//        // .ln3_txp_o                                  (pcie_ln3_txp_o),       
//        // .ln4_txm_o                                  (pcie_ln4_txm_o),       
//        // .ln4_txp_o                                  (pcie_ln4_txp_o),       
//        // .ln5_txm_o                                  (pcie_ln5_txm_o),       
//        // .ln5_txp_o                                  (pcie_ln5_txp_o),       
//        // .ln6_txm_o                                  (pcie_ln6_txm_o),       
//        // .ln6_txp_o                                  (pcie_ln6_txp_o),       
//        // .ln7_txm_o                                  (pcie_ln7_txm_o),       
//        // .ln7_txp_o                                  (pcie_ln7_txp_o),       
//        // .ln0_rxm_i                                  (pcie_ln0_rxm_i),       
//        // .ln0_rxp_i                                  (pcie_ln0_rxp_i),       
//        // .ln1_rxm_i                                  (pcie_ln1_rxm_i),       
//        // .ln1_rxp_i                                  (pcie_ln1_rxp_i),       
//        // .ln2_rxm_i                                  (pcie_ln2_rxm_i),       
//        // .ln2_rxp_i                                  (pcie_ln2_rxp_i),       
//        // .ln3_rxm_i                                  (pcie_ln3_rxm_i),       
//        // .ln3_rxp_i                                  (pcie_ln3_rxp_i),       
//        // .ln4_rxm_i                                  (pcie_ln4_rxm_i),       
//        // .ln4_rxp_i                                  (pcie_ln4_rxp_i),       
//        // .ln5_rxm_i                                  (pcie_ln5_rxm_i),       
//        // .ln5_rxp_i                                  (pcie_ln5_rxp_i),       
//        // .ln6_rxm_i                                  (pcie_ln6_rxm_i),       
//        // .ln6_rxp_i                                  (pcie_ln6_rxp_i),       
//        // .ln7_rxm_i                                  (pcie_ln7_rxm_i),       
//        // .ln7_rxp_i                                  (pcie_ln7_rxp_i),
//        .refres                                   (refres_1),
//        // .refres_1                                   (pcie_refres_1),       
//        .pma0_refclkm                               (pcie_pma0_refclkm_1),
//        .pma0_refclkp                               (pcie_pma0_refclkp_1),
//        .apb_prdata                                 (apb_prdata_1 ), 
//        .apb_pready                                 (apb_pready_1 ), 
//        .apb_pslverr                                (apb_pslverr_1), 
//        .apb_pclk                                   (mgmt_clk   ),//50MHz 
//        `ifdef TEST_HPC_AND_MAC
//        .apb_prstn                                  ( (~mgmt_rst_n) & mac_pcie_syn_rst ),// !!! ~FOR HCA TEST
//        `else
//        .apb_prstn                                  ( ~mgmt_rst_n ),// !!! ~FOR HCA TEST
//        `endif
//        .apb_penable                                (apb_penable_1), 
//        .apb_psel                                   (apb_psel_1   ), 
//        .apb_pwrite                                 (apb_pwrite_1 ), 
//        .apb_paddr                                  (apb_paddr_1  ), 
//        .apb_pwdata                                 (apb_pwdata_1 ),
//        //sideband
//        .pl_ltssm                                   (     ),
//        .max_pyld_sz                                (max_pyld_sz_1  ),
//        .max_rd_req_sz                              (max_rd_req_sz_1),
//        .user_clk                                   ( user_clk_1   ),
//        .user_rst                                   ( user_rst_1   ),
//        .aux_clk                                    (mgmt_clk    ),//50MHz
//        .cpu_clk_i                                  (cpu_clk_i),
//        //.aux_rstn                                   (mgmt_rst_n   ),
//        .pl_wake_in                                 (pl_wake_in_1 ),
//        .pl_wake_oen                                (pl_wake_oen_1),
//        .sys_npor                                   (sys_npor),
//        // .scan_mode                                  (scan_mode_1),
//        // .scan_clk                                   (scan_clk_1 ),
//        .tdo_en                                     (tdo_en_1),
//        .tdo                                        (tdo_1      ),
//        .tdi                                        (tdi_1       ),
//        .tms                                        (tms_1       ),
//        .trst                                       (trst_1     ),
//        .tck                                        (tck_1       )
//    );


endmodule
