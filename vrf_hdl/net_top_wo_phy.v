
module net_top_wo_phy(
    input                               repair_test_mode,
    // -------------------------------------- CLK and RST ---------------------------------------// 
    input                               por_rstn,                   // Power on reset. Active low
    input                               pclk_i,                     // Main CSR clock.50MHz
    input                               xlgmii_clk,
    input                               app_clk,
    input                               app_rstn,
    input                               mac_csr_clk,                // XLGMAC CSR clock. 100-500MHz
    output                              pma_pll_obs_clk_out,        // To PAD. For ppm observation. Around 80M
    output                              pma_pll_output_clk,         // 644M in 100G mode; 257M in 40G mode 
    // --------------------------------- XLGMII Sel for HPC/ MAC ----------------------------------//  
    input                               xlgmii_mode_sel,            // 1- Eth_mac; 0- HPC
    // XLGMII Interface
    output      reg [127:0]             xlgmii_rxd_hpc,
    output      reg [15:0]              xlgmii_rxc_hpc,
    output      reg                     xlgmii_rx_valid_hpc,
    input       [127:0]                 xlgmii_txd_hpc,
    input       [15:0]                  xlgmii_txc_hpc,
    output      reg                     xlgmii_tx_rdy_hpc,
    // -------------------------------------- TOP-LEVEL APB ---------------------------------------// 
    input                               psel_i,
    input       [21:0]                  paddr_i,
    input                               pwrite_i,
    input                               penable_i,
    input       [31:0]                  pwdata_i,
    output      [31:0]                  prdata_o,
    output                              pready_o,
    output                              pslverr_o,
    // --------------------------------------- APP Interface --------------------------------------//
    // 4 Virtual lanes for MAC to arbitrate
    input       [9:0]                   queue0_length,              // Indicating the depth of VL0
    input       [9:0]                   queue1_length,              // Indicating the depth of VL1
    input       [9:0]                   queue2_length,              // Indicating the depth of VL2
    input       [9:0]                   queue3_length,              // Indicating the depth of VL3
  
    input       [141:0]                 ivBuffer_VL0_tx_data,       // Indicating VL0 data id valid
    input                               iBuffer_VL0_tx_empty,       // VL0 is empty
    output                              oBuffer_VL0_tx_rden,        // VL0 read enable
    input       [141:0]                 ivBuffer_VL1_tx_data,
    input                               iBuffer_VL1_tx_empty,
    output                              oBuffer_VL1_tx_rden,
    input       [141:0]                 ivBuffer_VL2_tx_data,
    input                               iBuffer_VL2_tx_empty,
    output                              oBuffer_VL2_tx_rden,
    input       [141:0]                 ivBuffer_VL3_tx_data,
    input                               iBuffer_VL3_tx_empty,
    output                              oBuffer_VL3_tx_rden,
  
    input                               iTail_VL0_tx_empty,         // Active low when VL0 has complete pkts
    output                              oTail_VL0_tx_rden,          // Read enable. High when each complete pkt is read
    input                               iTail_VL1_tx_empty,
    output                              oTail_VL1_tx_rden,
    input                               iTail_VL2_tx_empty,
    output                              oTail_VL2_tx_rden,
    input                               iTail_VL3_tx_empty,
    output                              oTail_VL3_tx_rden,
    // App Receiving AXI4 Stream
    input       [43:0]                  pkt_crdt_m,
    output                              m_axis_route_tvalid,
    output                              m_axis_route_tstart,
    output                              m_axis_route_tlast,
    output      [7:0]                   m_axis_route_tuser,
    output      [15:0]                  m_axis_route_tkeep,
    output      [127:0]                 m_axis_route_tdata,
    input                               m_axis_route_tready,
    // ------------------------------------------- PHY --------------------------------------------//
    // PHY Program Memory Selecion
    input                               phy_prog_mem_sel,           // 1'b1-RAM; 1'b0-ROM 
    // Analog Interface signals
    input                               ln0_rxp_i,                  // Lane 0 Receive Differential Input
    input                               ln0_rxm_i,                  // Lane 0 Receive Differential Input
    output                              ln0_txp_o,                  // Lane 0 Transmit Differential Output
    output                              ln0_txm_o,                  // Lane 0 Transmit Differential Output

    input                               ln1_rxp_i,
    input                               ln1_rxm_i,
    output                              ln1_txp_o,
    output                              ln1_txm_o,

    input                               ln2_rxp_i,
    input                               ln2_rxm_i,
    output                              ln2_txp_o,
    output                              ln2_txm_o,

    input                               ln3_rxp_i,
    input                               ln3_rxm_i,
    output                              ln3_txp_o,
    output                              ln3_txm_o,

    input                               scan_clk_i,                 // 644.53125MHz at 100Gbps.Input clock for DFT
    output                              atest1_o,                   // Analog DC test output1
    output                              atest2_o,                   // Analog DC test output2
    input                               soc_atest1_i,               // SoC analog test bus input1 at the AFE boundary
    input                               soc_atest2_i,               // SoC analog test bus input2 ~

    input                               refclkp_i,                  // High-speed Bump. Differential CML reference clock input to PHY
    input                               refclkm_i,                  // high-speed Bump. Differential CML reference clock input to PHY
    input                               refclk_left_i,              // Single-Ended CMOS Inter-macro reference clock input from the left
    input                               refclk_right_i,             // Single-Ended CMOS Inter-macro reference clock input from the right
    output                              refclk_left_o,              // ~ output ~ left
    output                              refclk_right_o,             // ~ output ~ right
    // Digital - Common Interface Pins
    input                               refres_i,                   // Low-speed Bump;  Reference resistor, 3k ohm +/-1%
    // Interrupts
    output                              xlgmac_sbd_intr_o,
    output                              xlgpcs_sbd_intr_o,          // Interrupt output of CL73 events:1)Page received(AN) 2)AN is completed 3)For incompatible link partner,this interrupt generation is disabled by default
    output                              xlgpcs_tx_lane_sts,         // Transmit Link Status Signal
    output                              xlgpcs_rx_lane_sts,         // Receive Link Status Indicator
    // JTAG Debug Test Interface
    output                              cpu_debug_tdo,
    output                              cpu_debug_tdo_en,
    input                               cpu_debug_tck,
    input                               cpu_debug_trst,
    input                               cpu_debug_tms,
    input                               cpu_debug_tdi
);

  // XLGMII Connections
reg     [127:0]         xlgmii_txd_i;
reg     [15:0]          xlgmii_txc_i;
wire                    xlgmii_tx_rdy_o;
wire    [127:0]         xlgmii_rxd_o;
wire    [15:0]          xlgmii_rxc_o;
wire                    xlgmii_rx_valid_o;
    
wire    [127:0]         xlgmii_txd_mac2pcs;
wire    [15:0]          xlgmii_txc_mac2pcs;
reg                     xlgmii_trdy_pcs2mac;
reg     [127:0]         xlgmii_rxd_pcs2mac;
reg     [15:0]          xlgmii_rxc_pcs2mac;
reg                     xlgmii_valid_pcs2mac;
wire    [1:0]           xlgmac_speed_o;
wire                    xlgmac_loopback_mode_o;

wire    [1:0]           cfg_arb_type_val;
wire    [9:0]           cfg_q0_th;
wire    [9:0]           cfg_q1_th;
wire    [9:0]           cfg_q2_th;
wire    [9:0]           cfg_q3_th;

wire    [20:0]          cfg_is_wt3;                     // Weight/ credit config signal 
wire    [20:0]          cfg_is_wt2;                     // Weight/ credit config signal 
wire    [20:0]          cfg_is_wt1;
wire    [20:0]          cfg_is_wt0;
wire    [7:0]           cfg_sch_tsa;
wire    [31:0]          cfg_sch_txq_sts3;               // Status of config Tx queue 3
wire    [31:0]          cfg_sch_txq_sts2;               // Status of config Tx queue 2
wire    [31:0]          cfg_sch_txq_sts1;
wire    [31:0]          cfg_sch_txq_sts0;
wire    [3:0]           sch_txq_sts_val;
wire    [3:0]           cfg_sch_txq_sts_req;

wire    [7:0]           cpu_memdata_m2brg;
wire    [7:0]           cpu_memdata_brg2m;
wire    [22:0]          cpu_memaddr_brg2m;
wire                    cpu_mempsrd_brg2m;
wire                    cpu_mempswr_brg2m;

wire    [1:0]           cm0_pd_i;
wire                    cm0_rst_pd_ready_o;
wire                    cm0_ok_o;                       // Indicating CMU0 PLL has locked to the reference clock and all output clocks are at the correct frequency
  
wire                    ln0_rst_n_i;
wire    [1:0]           ln0_pd_i;                       // Lane 0 power down control    
wire                    ln0_rst_pd_ready_o;             // 0x0-PHY is not ready to respond to lnX_rst_n_i and lnX_pd_i
wire                    ln1_rst_n_i;
wire    [1:0]           ln1_pd_i;
wire                    ln1_rst_pd_ready_o;
wire                    ln2_rst_n_i;
wire    [1:0]           ln2_pd_i;
wire                    ln2_rst_pd_ready_o;
wire                    ln3_rst_n_i;
wire    [1:0]           ln3_pd_i;
wire                    ln3_rst_pd_ready_o;
  
wire                    cm0_refclk_o;                   // Copy of reference clock used in the AFE
  
wire    [4:0]           phy_ctrl_refclk_i;              // 0x6- refclk = 312.5MHz
wire    [5:0]           phy_ctrl_rate1_i;
wire    [5:0]           phy_ctrl_rate2_i;
  
wire    [1:0]           refclk_input_sel_i;
wire    [1:0]           refclk_left_sel_i;
wire    [1:0]           refclk_right_sel_i;
    // Lane Control Interface
wire    [2:0]           ln0_ctrl_data_width_i;
wire    [1:0]           ln0_ctrl_data_rate_i;
wire                    ln0_ctrl_rxpolarity_i;
wire                    ln0_ctrl_tx_en_i;
wire                    ln0_ctrl_los_eii_en_i;
wire                    ln0_ctrl_los_eii_value_i;
    
wire    [2:0]           ln1_ctrl_data_width_i;
wire    [1:0]           ln1_ctrl_data_rate_i;
wire                    ln1_ctrl_rxpolarity_i;
wire                    ln1_ctrl_tx_en_i;
wire                    ln1_ctrl_los_eii_en_i;
wire                    ln1_ctrl_los_eii_value_i;
    
wire    [2:0]           ln2_ctrl_data_width_i;
wire    [1:0]           ln2_ctrl_data_rate_i;
wire                    ln2_ctrl_rxpolarity_i;
wire                    ln2_ctrl_tx_en_i;
wire                    ln2_ctrl_los_eii_en_i;
wire                    ln2_ctrl_los_eii_value_i;
    
wire    [2:0]           ln3_ctrl_data_width_i;
wire    [1:0]           ln3_ctrl_data_rate_i;
wire                    ln3_ctrl_rxpolarity_i;
wire                    ln3_ctrl_tx_en_i;
wire                    ln3_ctrl_los_eii_en_i;
wire                    ln3_ctrl_los_eii_value_i;
  
wire                    ln0_stat_ok_o;
wire                    ln1_stat_ok_o;
wire                    ln2_stat_ok_o;
wire                    ln3_stat_ok_o;
  
wire                    ln0_stat_los_deglitch_o;        // Not used so far
wire                    ln1_stat_los_deglitch_o;        // Not used so far
wire                    ln2_stat_los_deglitch_o;        // Not used so far
wire                    ln3_stat_los_deglitch_o;        // Not used so far
    
wire                    ln0_stat_lt_sigdet_o;
wire                    ln1_stat_lt_sigdet_o;
wire                    ln2_stat_lt_sigdet_o;
wire                    ln3_stat_lt_sigdet_o;
  
    // Digital Test bus
wire    [11:0]          tbus_data_o;
wire                    ln0_burn_in_toggle_o;           // When asserted, indicating activity on the AFE parallel receive edge data 
wire                    ln1_burn_in_toggle_o;
wire                    ln2_burn_in_toggle_o;
wire                    ln3_burn_in_toggle_o;
  
    // APB3 Connections
wire                    cfg_psel;
wire    [13:0]          cfg_paddr;
wire                    cfg_pwrite;
wire                    cfg_penable;
wire    [31:0]          cfg_pwdata;
wire    [31:0]          cfg_prdata;
wire                    cfg_pready;
wire                    cfg_pslverr;
  
wire                    xlgmac_psel;
wire    [15:0]          xlgmac_paddr;
wire                    xlgmac_pwrite;
wire                    xlgmac_penable;
wire    [31:0]          xlgmac_pwdata;
wire    [31:0]          xlgmac_prdata;
wire                    xlgmac_pready;
  
wire                    xlgpcs_psel;
wire    [20:0]          xlgpcs_paddr;
wire                    xlgpcs_pwrite;
wire                    xlgpcs_penable;
wire    [15:0]          xlgpcs_pwdata;
wire    [15:0]          xlgpcs_prdata;
wire                    xlgpcs_pready;
  
wire                    phy_psel;
wire    [14:0]          phy_paddr;
wire                    phy_pwrite;
wire    [7:0]           phy_pwr_bit_en;
wire    [7:0]           phy_pwdata;
wire    [7:0]           phy_prdata;
wire                    phy_pready;
wire                    phy_pslverr;
  
wire                    xlgpcs_xlgmii_lb_en;                // Rx to Tx XLGMII Loopback enable  
  
wire                    xlgpcs_lt_ctrl_rpcs_rx_trained0;
wire                    xlgpcs_lt_ctrl_rpcs_rx_trained1;
wire                    xlgpcs_lt_ctrl_rpcs_rx_trained2;
wire                    xlgpcs_lt_ctrl_rpcs_rx_trained3;
  
wire                    xlgpcs_lt_stat_rpcs_ktr_en0;                // Link training enable control - lane 0,1,2,3
wire                    xlgpcs_lt_stat_rpcs_ktr_en1;
wire                    xlgpcs_lt_stat_rpcs_ktr_en2;
wire                    xlgpcs_lt_stat_rpcs_ktr_en3;
wire                    xlgpcs_lt_stat_rpcs_ktr_train_on0;          // Asserted when the host has enabled the Link Training process and
wire                    xlgpcs_lt_stat_rpcs_ktr_train_on1;          // the training process is not yet complete lane 0,1,2,3
wire                    xlgpcs_lt_stat_rpcs_ktr_train_on2;
wire                    xlgpcs_lt_stat_rpcs_ktr_train_on3;
wire                    xlgpcs_lt_stat_rpcs_ktr_train_fail0;        // Asserted when the link training process fails
wire                    xlgpcs_lt_stat_rpcs_ktr_train_fail1;
wire                    xlgpcs_lt_stat_rpcs_ktr_train_fail2;
wire                    xlgpcs_lt_stat_rpcs_ktr_train_fail3;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_rcvd0;        // Indicating new training frame is received
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_rcvd1;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_rcvd2;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_rcvd3;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_lock0;        // Asserted when the received training frame sync is successful
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_lock1;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_lock2;
wire                    xlgpcs_lt_stat_rpcs_ktr_frame_lock3;
wire                    xlgpcs_lt_stat_rpcs_ktr_restart0;           // Asserted when the host restarts the Link Training by programming
wire                    xlgpcs_lt_stat_rpcs_ktr_restart1;           // Bit 0 of SR PMA MMD BASE-KR PMD register
wire                    xlgpcs_lt_stat_rpcs_ktr_restart2;
wire                    xlgpcs_lt_stat_rpcs_ktr_restart3;
wire                    xlgpcs_lt_stat_rpcs_ktr_prbs_good0;         // Link training received frame's PRBS is GOOD -lane 0,1,2,3
wire                    xlgpcs_lt_stat_rpcs_ktr_prbs_good1;
wire                    xlgpcs_lt_stat_rpcs_ktr_prbs_good2;
wire                    xlgpcs_lt_stat_rpcs_ktr_prbs_good3;
    
wire                    xlgpcs_loopback_en_o;                       // The host programmed the xlgpcs to enable loopback mode in the PHY
wire                    xlgpcs_pdown;                               // Synchronous to clk_csr_i. TODO: could be connected to PHY
wire    [2:0]           xlgpcs_speed_ctrl;                          // For switching to 25G/40G100G mode. 100G-3'b100.
  
wire                    mac_clk_tx;                                 // 781.25MHz. XLGMAC Transmit reference
wire                    mac_rstn_tx;
wire                    mac_clk_rx;                                 // 781.25MHz. XLGMAC Receive reference
wire                    mac_rstn_rx;
wire                    mac_clk_aux;                                // 781.25MHz. XLGMAC Aux reference 
wire                    mac_rstn_aux;
wire                    mac_clk_csr;
wire                    mac_rstn_csr;

wire                    pcs_pwr_on_rst_n;
wire                    pcs_clk_xlgmii_tx;                          // XLGPCS XLGMII Tx clock
wire                    pcs_clk_xlgmii_rx;                          // XLGPCS XLGMII Rx clock
wire                    pcs_clk_rpcs_tx;                            // RPCS Datapath clock. 390.625MHz 
wire                    pcs_clk_rpcs_rx0;
wire                    pcs_clk_rpcs_rx1;
wire                    pcs_clk_rpcs_rx2;
wire                    pcs_clk_rpcs_rx3;
wire                    pcs_clk_xsbi_tx;                            // RPCS Tx Serdes interface clock. Drive rpcs_tx_data0/1/2/3_o; 100G:644.53125MHz 
wire                    pcs_clk_xsbi_rx0;                           // Lane 0 Rx clock from PHY. 644.63125MHz
wire                    pcs_clk_xsbi_rx1;                           // Lane 1 Rx clock from PHY. 644.63125MHz 
wire                    pcs_clk_xsbi_rx2;                           // Lane 2 Rx clock from PHY. 644.63125MHz
wire                    pcs_clk_xsbi_rx3;                           // Lane 3 Rx clock from PHY. 644.63125MHz
wire                    pcs_clk_csr;

wire                    phy_apb_clk;
wire                    phy_apb_rstn;
wire                    phy_cpu_clk;                                // Used as both the clock to internal cpu and also the core clock for reg bus backbone. Supports from 250MHz to 500MHz
wire                    phy_cpu_rstn;
wire                    phy_ln0_txclk;
wire                    phy_ln0_rst_n;
wire                    phy_ln1_txclk;
wire                    phy_ln1_rst_n;
wire                    phy_ln2_txclk;
wire                    phy_ln2_rst_n;
wire                    phy_ln3_txclk;
wire                    phy_ln3_rst_n;
wire                    phy_p_iram_clk;
wire                    phy_p_iram_rstn;
wire                    phy_irom_clk;

wire                    cfg_eth_mac_en;                             // Connected to reg map
wire                    cfg_eth_pcs_en;                             // Connected to reg map
wire                    cfg_eth_phy_en;                             // Connected to reg map
wire                    cfg_eth_mac_rstn;                           // Connected to reg map
wire                    cfg_eth_pcs_rstn;                           // Connected to reg map
wire                    cfg_eth_phy_rstn;                           // Connected to reg map
wire					cfg_eth_phy_apb_rstn;                       // Connected to reg map
wire					cfg_eth_cpu_rstn;                           // Connected to reg map 
wire					cfg_eth_phy_cmu_rstn;                       // Connected to reg map
wire					cfg_eth_ln0_rstn;                           // Connected to reg map
wire					cfg_eth_ln1_rstn;                           // Connected to reg map
wire					cfg_eth_ln2_rstn;                           // Connected to reg map
wire					cfg_eth_ln3_rstn;                           // Connected to reg map

wire                    gb_tx_clk;
wire                    main_rx_clk;                                // 781.25MHz/ 312.5MHz
wire                    cm0_clk_pll_o;
wire                    cm0_clk_plldiv_o;
wire                    cfg_cm0_ok_bypass;
wire                    phy_ln0_rxclk;
wire                    phy_ln1_rxclk;
wire                    phy_ln2_rxclk;
wire                    phy_ln3_rxclk;
wire                    phy_ln0_gbclk;
wire                    phy_ln1_gbclk;
wire                    phy_ln2_gbclk;
wire                    phy_ln3_gbclk;
wire                    presetn;
wire                    tx_afifo_pop_en;
wire    [141:0]         tx_afifo_data;
wire                    tx_afifo_empty;
wire                    tick_125us;
wire    [31:0]          mti_txstatus;
wire                    mti_txstatus_val;
wire    [10:0]          rx_fc_vl0_th;
wire    [10:0]          rx_fc_vl1_th;
wire    [10:0]          rx_fc_vl2_th;
wire    [10:0]          rx_fc_vl3_th;

wire    [1:0]           mti_vlan_ctrl;        
wire    [15:0]          mti_vlan_tag;         
wire    [1:0]           mti_inner_vlan_ctrl;  
wire    [15:0]          mti_inner_vlan_tag;   
wire    [2:0]           mti_sa_ctrl;          
wire    [1:0]           mti_crc_pad_ctrl;   
wire                    scan_mode;
wire                    scan_clk_0;
wire                    scan_clk_1;
wire                    scan_clk_2;
wire                    scan_clk_2_div;
wire                    scan_clk_3;
wire                    scan_clk_4;
wire                    scan_clk_5;

assign main_rx_clk             = xlgmii_clk;
assign main_tx_clk             = xlgmii_clk;

  // Mux for xlgmii selection
always @*
    if(xlgmii_mode_sel) begin   // ETH_MAC Mode
        xlgmii_txd_i            = xlgmii_txd_mac2pcs;
        xlgmii_txc_i            = xlgmii_txc_mac2pcs;
        xlgmii_rxd_hpc          = 128'b0;
        xlgmii_rxc_hpc          = 16'b0;
        xlgmii_rx_valid_hpc     = 1'b0;
        xlgmii_tx_rdy_hpc       = 1'b0;
        xlgmii_trdy_pcs2mac     = xlgmii_tx_rdy_o;
        xlgmii_rxd_pcs2mac      = xlgmii_rxd_o;
        xlgmii_rxc_pcs2mac      = xlgmii_rxc_o;
        xlgmii_valid_pcs2mac    = xlgmii_rx_valid_o;
    end else begin              // HPC mode
        xlgmii_txd_i            = xlgmii_txd_hpc;
        xlgmii_txc_i            = xlgmii_txc_hpc;
        xlgmii_rxd_hpc          = xlgmii_rxd_o;
        xlgmii_rxc_hpc          = xlgmii_rxc_o;
        xlgmii_rx_valid_hpc     = xlgmii_rx_valid_o;
        xlgmii_tx_rdy_hpc       = xlgmii_tx_rdy_o;
        xlgmii_trdy_pcs2mac     = 1'b0;
        xlgmii_rxd_pcs2mac      = 128'b0;
        xlgmii_rxc_pcs2mac      = 16'b0;
        xlgmii_valid_pcs2mac    = 1'b0;
    end

// ------------------------------------------ INSTANCES -------------------------------------------//
macro_dftbox u_switch_box(
    .scan_mode_i            (repair_test_mode        ),
    .scan_en_i              (1'b0                    ),
    .scan_mode_o            (scan_mode               ),
    .test_en_o              (test_en                 ),
    .scan_en_o              (scan_en_i               )
);  

scan_clk_gen u_scan_clk_gen(
    .scan_clk_644_i         (scan_clk_i              ),
    .scan_clk_50_i          (pclk_i                  ),
    .resetn_i               (por_rstn                ),
	.scan_clk_644_o         (scan_clk_644            ),
	.scan_clk_322_o         (scan_clk_322            ),
    .scan_clk_50_o          (scan_clk_50             ),
    .scan_clk_2_div_o       (scan_clk_2_div          )
);

macro_buf u_scan_clk_0_buf(
    .a						(scan_clk_644           ),
    .o						(scan_clk_0             )
);

macro_buf u_scan_clk_1_buf(
    .a						(scan_clk_644           ),
    .o						(scan_clk_1             )
);

macro_buf u_scan_clk_2_buf(
    .a						(scan_clk_322           ),
    .o						(scan_clk_2             )
);

macro_buf u_scan_clk_3_buf(
    .a						(scan_clk_50            ),
    .o						(scan_clk_3             )
);

macro_buf u_scan_clk_4_buf(
    .a						(scan_clk_644           ),
    .o						(scan_clk_4             )
);

macro_buf u_scan_clk_5_buf(
    .a						(scan_clk_644           ),
    .o						(scan_clk_5             )
);

macro_clk_div2 u_main_tx_clk_div2(
    .rstn                   (pcs_xlgmii_tx_por_syn   ),
    .clk_in                 (main_tx_clk             ),
    .rstn_sync              (                        ),
    .clk_out                (main_tx_clk_div2        )
); 


eth_apb_mux u_eth_apb_mux(
    .pclk_i                 (pclk_i                  ),
    .presetn_i              (presetn                 ),
    .psel_i                 (psel_i                  ),
    .paddr_i                (paddr_i[21:0]           ),
    .pwrite_i               (pwrite_i                ),
    .penable_i              (penable_i               ),
    .pwdata_i               (pwdata_i[31:0]          ),
    .prdata_o               (prdata_o[31:0]          ),
    .pready_o               (pready_o                ),
    .pslverr_o              (pslverr_o               ),

    .cfg_psel_o             (cfg_psel                ),
    .cfg_paddr_o            (cfg_paddr[13:0]         ),
    .cfg_pwrite_o           (cfg_pwrite              ),
    .cfg_penable_o          (cfg_penable             ),
    .cfg_pwdata_o           (cfg_pwdata[31:0]        ),
    .cfg_prdata_i           (cfg_prdata[31:0]        ),
    .cfg_pready_i           (cfg_pready              ),
    .cfg_pslverr_i          (cfg_pslverr             ),

    .xlgmac_clk_csr_i       (mac_clk_csr             ),
    .xlgmac_rst_clk_csr_n   (mac_rstn_csr            ),
    .xlgmac_psel_o          (xlgmac_psel             ),
    .xlgmac_paddr_o         (xlgmac_paddr[15:0]      ),
    .xlgmac_pwrite_o        (xlgmac_pwrite           ),
    .xlgmac_penable_o       (xlgmac_penable          ),
    .xlgmac_pwdata_o        (xlgmac_pwdata[31:0]     ),
    .xlgmac_prdata_i        (xlgmac_prdata[31:0]     ),
    .xlgmac_pready_i        (xlgmac_pready           ),

    .xlgpcs_psel_o          (xlgpcs_psel             ),
    .xlgpcs_paddr_o         (xlgpcs_paddr[20:0]      ),
    .xlgpcs_pwrite_o        (xlgpcs_pwrite           ),
    .xlgpcs_penable_o       (xlgpcs_penable          ),
    .xlgpcs_pwdata_o        (xlgpcs_pwdata[15:0]     ),
    .xlgpcs_prdata_i        (xlgpcs_prdata[15:0]     ),
    .xlgpcs_pready_i        (xlgpcs_pready           ),

    .phy_psel_o             (phy_psel                ),
    .phy_paddr_o            (phy_paddr[14:0]         ),
    .phy_pwrite_o           (phy_pwrite              ),
    .phy_pwr_bit_en_o       (phy_pwr_bit_en[7:0]     ),
    .phy_pwdata_o           (phy_pwdata[7:0]         ),
    .phy_prdata_i           (phy_prdata[7:0]         ),
    .phy_pready_i           (phy_pready              ),
    .phy_pslverr_i          (phy_pslverr             ),

    .apb_ctrl_iram_en_i     (is_apb_ctrl             ),
    .cpu_memdata_i          (cpu_memdata_m2brg[7:0]  ),
    .cpu_mempsrd_o          (cpu_mempsrd_brg2m       ),
    .cpu_mempswr_o          (cpu_mempswr_brg2m       ),
    .cpu_memaddr_o          (cpu_memaddr_brg2m[22:0] ),
    .cpu_memdata_o          (cpu_memdata_brg2m[7:0]  )
);
                                                                               

eth_clkrst u_clkrst(                                                         
    // Outputs                                                               
    .mac_clk_tx_o           (mac_clk_tx              ),
    .mac_rstn_tx_o          (mac_rstn_tx             ),
    .mac_clk_rx_o           (mac_clk_rx              ),
    .mac_rstn_rx_o          (mac_rstn_rx             ),
    .mac_clk_aux_o          (mac_clk_aux             ),
    .mac_rstn_aux_o         (mac_rstn_aux            ),
    .mac_clk_csr_o          (mac_clk_csr             ),
    .mac_rstn_csr_o         (mac_rstn_csr            ),
                                                                               
    .pcs_pwr_on_rst_n_o     (pcs_pwr_on_rst_n        ),
    .pcs_xlgmii_tx_por_syn  (pcs_xlgmii_tx_por_syn   ),
    .pcs_clk_xlgmii_tx_o    (pcs_clk_xlgmii_tx       ), //to pcs     
    .pcs_clk_xlgmii_rx_o    (pcs_clk_xlgmii_rx       ),
    .pcs_clk_rpcs_tx_o      (pcs_clk_rpcs_tx         ),
    .pcs_clk_rpcs_rx0_o     (pcs_clk_rpcs_rx0        ),              
    .pcs_clk_rpcs_rx1_o     (pcs_clk_rpcs_rx1        ),              
    .pcs_clk_rpcs_rx2_o     (pcs_clk_rpcs_rx2        ),              
    .pcs_clk_rpcs_rx3_o     (pcs_clk_rpcs_rx3        ),              
    .pcs_clk_xsbi_tx_o      (pcs_clk_xsbi_tx         ),              
    .pcs_clk_xsbi_rx0_o     (pcs_clk_xsbi_rx0        ),              
    .pcs_clk_xsbi_rx1_o     (pcs_clk_xsbi_rx1        ),              
    .pcs_clk_xsbi_rx2_o     (pcs_clk_xsbi_rx2        ),              
    .pcs_clk_xsbi_rx3_o     (pcs_clk_xsbi_rx3        ),              
    .pcs_clk_csr_o          (pcs_clk_csr             ),  
                                                                               
    .phy_apb_clk_o          (phy_apb_clk             ),              
    .phy_apb_rstn_o         (phy_apb_rstn            ),              
    .phy_cpu_clk_o          (phy_cpu_clk             ),              
    .phy_cpu_rstn_o         (phy_cpu_rstn            ),              
    .phy_ln0_txclk_o        (phy_ln0_txclk           ),              
    .phy_ln0_rst_n_o        (phy_ln0_rst_n           ),              
    .phy_ln1_txclk_o        (phy_ln1_txclk           ),              
    .phy_ln1_rst_n_o        (phy_ln1_rst_n           ),              
    .phy_ln2_txclk_o        (phy_ln2_txclk           ),              
    .phy_ln2_rst_n_o        (phy_ln2_rst_n           ),              
    .phy_ln3_txclk_o        (phy_ln3_txclk           ),              
    .phy_ln3_rst_n_o        (phy_ln3_rst_n           ),
    .cm0_clk_pll_div8_o     (pma_pll_obs_clk_out     ),
    .pll_output_clk_o       (pma_pll_output_clk      ),
    .phy_iram_clk_o         (phy_p_iram_clk          ),
    .phy_iram_rstn_o        (phy_p_iram_rstn         ),
    .phy_irom_clk_o         (phy_irom_clk            ),
    // Inputs                                                                
    .test_en                (test_en                 ),              
    .main_clk_csr_i         (mac_csr_clk             ), 
	.main_tx_clk_div2       (main_tx_clk_div2        ),
    .pclk                   (pclk_i                  ),
    .presetn_o              (presetn                 ),
    .cfg_eth_mac_en         (cfg_eth_mac_en          ),
    .cfg_eth_pcs_en         (cfg_eth_pcs_en          ),
    .cfg_eth_phy_en         (cfg_eth_phy_en          ),
    .cfg_eth_mac_rstn       (cfg_eth_mac_rstn        ),
    .cfg_eth_pcs_rstn       (cfg_eth_pcs_rstn        ),
    .cfg_eth_phy_rstn       (cfg_eth_phy_rstn        ),
    .cfg_phy_cpu_rstn       (cfg_eth_cpu_rstn        ),
    .cfg_phy_apb_rstn       (cfg_eth_phy_apb_rstn    ),
    .cfg_phy_ln0_rstn       (cfg_eth_ln0_rstn        ),
    .cfg_phy_ln1_rstn       (cfg_eth_ln1_rstn        ),
    .cfg_phy_ln2_rstn       (cfg_eth_ln2_rstn        ),
    .cfg_phy_ln3_rstn       (cfg_eth_ln3_rstn        ),
    .cm0_ok                 (cm0_ok_o                ),
    .cfg_cm0_ok_bypass      (cfg_cm0_ok_bypass       ),
    .cfg_phy_apb_ctrl_iram_en(is_apb_ctrl            ),
    .phy_prog_mem_sel       (phy_prog_mem_sel        ),

    .por_rstn               (por_rstn                ),
    .main_tx_clk            (main_tx_clk             ),   
    .gb_tx_clk              (gb_tx_clk               ),   // phy: cm0_clk_o,644.53125MHz
    .main_rx_clk            (main_rx_clk             ),   // same as main_tx_clk
    .xlgpcs_xlgmii_lb_en_i  (xlgpcs_xlgmii_lb_en     ),   
    .phy_ln0_rxclk_i        (phy_ln0_rxclk           ),   // phy_lnX_rxclk,390.625MHz
    .phy_ln1_rxclk_i        (phy_ln1_rxclk           ),
    .phy_ln2_rxclk_i        (phy_ln2_rxclk           ),
    .phy_ln3_rxclk_i        (phy_ln3_rxclk           ),
    .phy_ln0_gbclk_i        (phy_ln0_gbclk           ),   // phy_lnX_gbclk,644.53125MHz 
    .phy_ln1_gbclk_i        (phy_ln1_gbclk           ),
    .phy_ln2_gbclk_i        (phy_ln2_gbclk           ),
    .phy_ln3_gbclk_i        (phy_ln3_gbclk           )                       
  );

eth_cfg_if #(
    .DATA_WIDTH             (32                      ),
    .ADDR_WIDTH             (14                      )
    )
    u_eth_cfg_if(
    .apb_pready             (cfg_pready              ),      
    .apb_prdata             (cfg_prdata[31:0]        ), 
    .apb_pclk               (pclk_i                  ),        
    .apb_presetn            (presetn                 ),         
    .apb_psel               (cfg_psel                ),        
    .apb_penable            (cfg_penable             ),         
    .apb_pwrite             (cfg_pwrite              ),      
    .apb_paddr              (cfg_paddr[13:0]         ), 
    .apb_pwdata             (cfg_pwdata[31:0]        ), 
    .apb_pslverr            (cfg_pslverr             ),
    .sch_txq_sts_val        (sch_txq_sts_val         ),
    .cfg_sch_txq_sts_req    (cfg_sch_txq_sts_req     ),

    .o_cfg_eth_mac_en_rw    (cfg_eth_mac_en          ),   
    .o_cfg_eth_pcs_en_rw    (cfg_eth_pcs_en          ),
    .o_cfg_eth_phy_en_rw    (cfg_eth_phy_en          ),
    .o_cfg_eth_mac_rstn_rw  (cfg_eth_mac_rstn        ),
    .o_cfg_eth_pcs_rstn_rw  (cfg_eth_pcs_rstn        ),
    .o_cfg_eth_phy_rstn_rw  (cfg_eth_phy_rstn        ),
    .o_cfg_eth_phy_apb_rstn_rw (cfg_eth_phy_apb_rstn ),
	.o_cfg_eth_cpu_rstn_rw  (cfg_eth_cpu_rstn        ),
	.o_cfg_eth_phy_cmu_rstn_rw (cfg_eth_phy_cmu_rstn ),
	.o_cfg_eth_ln0_rstn_rw  (cfg_eth_ln0_rstn        ),
	.o_cfg_eth_ln1_rstn_rw  (cfg_eth_ln1_rstn        ),
	.o_cfg_eth_ln2_rstn_rw  (cfg_eth_ln2_rstn        ),
	.o_cfg_eth_ln3_rstn_rw  (cfg_eth_ln3_rstn        ),

    .o_cfg_arb_type_val_rw  (cfg_arb_type_val[1:0]   ),
    .o_cfg_q0_th_rw         (cfg_q0_th[9:0]          ),
    .o_cfg_q1_th_rw         (cfg_q1_th[9:0]          ),
    .o_cfg_q2_th_rw         (cfg_q2_th[9:0]          ),
    .o_cfg_q3_th_rw         (cfg_q3_th[9:0]          ),

    .o_cfg_is_wt0_rw        (cfg_is_wt0[20:0]        ),
    .o_cfg_is_wt1_rw        (cfg_is_wt1[20:0]        ),
    .o_cfg_is_wt2_rw        (cfg_is_wt2[20:0]        ),
    .o_cfg_is_wt3_rw        (cfg_is_wt3[20:0]        ),
    .o_cfg_sch_tsa_rw       (cfg_sch_tsa[7:0]        ),
    .i_cfg_sch_txq_sts0_ro  (cfg_sch_txq_sts0[31:0]  ),
    .i_cfg_sch_txq_sts1_ro  (cfg_sch_txq_sts1[31:0]  ),
    .i_cfg_sch_txq_sts2_ro  (cfg_sch_txq_sts2[31:0]  ),
    .i_cfg_sch_txq_sts3_ro  (cfg_sch_txq_sts3[31:0]  ),

    .o_rx_flow_ctrl_vl0_th_rw	(rx_fc_vl0_th[10:0]      ),
    .o_rx_flow_ctrl_vl1_th_rw	(rx_fc_vl1_th[10:0]      ),
    .o_rx_flow_ctrl_vl2_th_rw	(rx_fc_vl2_th[10:0]      ),
    .o_rx_flow_ctrl_vl3_th_rw	(rx_fc_vl3_th[10:0]      ),

    .o_mti_vlan_ctrl_rw			(mti_vlan_ctrl[1:0]      ),
    .o_mti_vlan_tag_rw			(mti_vlan_tag[15:0]      ),
    .o_mti_inner_vlan_ctrl_rw	(mti_inner_vlan_ctrl[1:0]),
    .o_mti_inner_vlan_tag_rw	(mti_inner_vlan_tag[15:0]),
    .o_mti_sa_ctrl_rw			(mti_sa_ctrl[2:0]        ),
    .o_mti_crc_pad_ctrl_rw		(mti_crc_pad_ctrl[1:0]   ),

    .i_xlgmac_speed_ro			(xlgmac_speed_o[1:0]     ), 
    .i_xlgmac_lb_mode_ro		(xlgmac_loopback_mode_o  ),    
  
    .i_xlgpcs_lb_xlgmii_lb_en_ro(xlgpcs_xlgmii_lb_en     ),  
    .i_xlgpcs_pdown_reg_ro		(xlgpcs_pdown            ),   
    .i_xlgpcs_speed_ctrl_ro		(xlgpcs_speed_ctrl[2:0]  ),  
  
    .o_xlgpcs_lt_rpcs_rx_trained0_rw(xlgpcs_lt_ctrl_rpcs_rx_trained0),
    .o_xlgpcs_lt_rpcs_rx_trained1_rw(xlgpcs_lt_ctrl_rpcs_rx_trained1),  
    .o_xlgpcs_lt_rpcs_rx_trained2_rw(xlgpcs_lt_ctrl_rpcs_rx_trained2),  
    .o_xlgpcs_lt_rpcs_rx_trained3_rw(xlgpcs_lt_ctrl_rpcs_rx_trained3),
    .i_xlgpcs_lt_stat_rpcs_ktr_en0_ro(xlgpcs_lt_stat_rpcs_ktr_en0), 
    .i_xlgpcs_lt_stat_rpcs_ktr_en1_ro(xlgpcs_lt_stat_rpcs_ktr_en1),
    .i_xlgpcs_lt_stat_rpcs_ktr_en2_ro(xlgpcs_lt_stat_rpcs_ktr_en2),
    .i_xlgpcs_lt_stat_rpcs_ktr_en3_ro(xlgpcs_lt_stat_rpcs_ktr_en3),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_on0_ro(xlgpcs_lt_stat_rpcs_ktr_train_on0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_on1_ro(xlgpcs_lt_stat_rpcs_ktr_train_on1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_on2_ro(xlgpcs_lt_stat_rpcs_ktr_train_on2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_on3_ro(xlgpcs_lt_stat_rpcs_ktr_train_on3 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_fail0_ro(xlgpcs_lt_stat_rpcs_ktr_train_fail0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_fail1_ro(xlgpcs_lt_stat_rpcs_ktr_train_fail1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_fail2_ro(xlgpcs_lt_stat_rpcs_ktr_train_fail2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_train_fail3_ro(xlgpcs_lt_stat_rpcs_ktr_train_fail3 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_restart0_ro(xlgpcs_lt_stat_rpcs_ktr_restart0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_restart1_ro(xlgpcs_lt_stat_rpcs_ktr_restart1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_restart2_ro(xlgpcs_lt_stat_rpcs_ktr_restart2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_restart3_ro(xlgpcs_lt_stat_rpcs_ktr_restart3 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_rcvd0_ro(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_rcvd1_ro(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_rcvd2_ro(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_rcvd3_ro(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd3 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_lock0_ro(xlgpcs_lt_stat_rpcs_ktr_frame_lock0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_lock1_ro(xlgpcs_lt_stat_rpcs_ktr_frame_lock1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_lock2_ro(xlgpcs_lt_stat_rpcs_ktr_frame_lock2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_frame_lock3_ro(xlgpcs_lt_stat_rpcs_ktr_frame_lock3 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_prbs_good0_ro(xlgpcs_lt_stat_rpcs_ktr_prbs_good0 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_prbs_good1_ro(xlgpcs_lt_stat_rpcs_ktr_prbs_good1 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_prbs_good2_ro(xlgpcs_lt_stat_rpcs_ktr_prbs_good2 ),  
    .i_xlgpcs_lt_stat_rpcs_ktr_prbs_good3_ro(xlgpcs_lt_stat_rpcs_ktr_prbs_good3 ), 
    
	.o_is_apb_ctrl_rw       (is_apb_ctrl             ),
    .o_phy_refclk_input_sel_rw(refclk_input_sel_i[1:0] ),  
    .o_phy_refclk_left_sel_rw(refclk_left_sel_i[1:0]  ),  
    .o_phy_refclk_right_sel_rw(refclk_right_sel_i[1:0] ),  
    .o_phy_ctrl_refclk_rw   (phy_ctrl_refclk_i[4:0]  ),  
    .o_phy_ctrl_rate1_rw    (phy_ctrl_rate1_i[5:0]   ),  
    .o_phy_ctrl_rate2_rw    (phy_ctrl_rate2_i[5:0]   ),
  
    .o_ln0_ctrl_data_width_rw(ln0_ctrl_data_width_i[2:0]),  
    .o_ln0_ctrl_data_rate_rw(ln0_ctrl_data_rate_i[1:0]),  
    .o_ln0_ctrl_rxpolarity_rw(ln0_ctrl_rxpolarity_i   ),  
    .o_ln0_ctrl_tx_en_rw    (ln0_ctrl_tx_en_i        ),   
    .o_ln0_ctrl_los_eii_en_rw(ln0_ctrl_los_eii_en_i   ),  
    .o_ln0_ctrl_los_eii_value_rw(ln0_ctrl_los_eii_value_i),  
    .o_ln1_ctrl_data_width_rw(ln1_ctrl_data_width_i[2:0]),  
    .o_ln1_ctrl_data_rate_rw(ln1_ctrl_data_rate_i[1:0]),  
    .o_ln1_ctrl_rxpolarity_rw(ln1_ctrl_rxpolarity_i   ),  
    .o_ln1_ctrl_tx_en_rw    (ln1_ctrl_tx_en_i        ),   
    .o_ln1_ctrl_los_eii_en_rw(ln1_ctrl_los_eii_en_i   ),  
    .o_ln1_ctrl_los_eii_value_rw(ln1_ctrl_los_eii_value_i),  
    .o_ln2_ctrl_data_width_rw(ln2_ctrl_data_width_i[2:0]),  
    .o_ln2_ctrl_data_rate_rw(ln2_ctrl_data_rate_i[1:0]),  
    .o_ln2_ctrl_rxpolarity_rw(ln2_ctrl_rxpolarity_i   ),  
    .o_ln2_ctrl_tx_en_rw    (ln2_ctrl_tx_en_i        ),   
    .o_ln2_ctrl_los_eii_en_rw(ln2_ctrl_los_eii_en_i   ),  
    .o_ln2_ctrl_los_eii_value_rw(ln2_ctrl_los_eii_value_i),  
    .o_ln3_ctrl_data_width_rw(ln3_ctrl_data_width_i[2:0]),  
    .o_ln3_ctrl_data_rate_rw(ln3_ctrl_data_rate_i[1:0]),  
    .o_ln3_ctrl_rxpolarity_rw(ln3_ctrl_rxpolarity_i   ),  
    .o_ln3_ctrl_tx_en_rw    (ln3_ctrl_tx_en_i        ),   
    .o_ln3_ctrl_los_eii_en_rw(ln3_ctrl_los_eii_en_i   ),  
    .o_ln3_ctrl_los_eii_value_rw(ln3_ctrl_los_eii_value_i),
  
    .i_ln0_ctrl_stat_ok_ro  (ln0_stat_ok_o           ),      
    .i_ln0_ctrl_stat_los_ro (ln0_stat_los_o          ),     
    .i_ln0_ctrl_stat_lt_sigdet_ro(ln0_stat_lt_sigdet_o    ),  
    .i_ln1_ctrl_stat_ok_ro  (ln1_stat_ok_o           ),      
    .i_ln1_ctrl_stat_los_ro (ln1_stat_los_o          ),     
    .i_ln1_ctrl_stat_lt_sigdet_ro(ln1_stat_lt_sigdet_o    ),  
    .i_ln2_ctrl_stat_ok_ro  (ln2_stat_ok_o           ),      
    .i_ln2_ctrl_stat_los_ro (ln2_stat_los_o          ),     
    .i_ln2_ctrl_stat_lt_sigdet_ro(ln2_stat_lt_sigdet_o    ),  
    .i_ln3_ctrl_stat_ok_ro  (ln3_stat_ok_o           ),      
    .i_ln3_ctrl_stat_los_ro (ln3_stat_los_o          ),     
    .i_ln3_ctrl_stat_lt_sigdet_ro(ln3_stat_lt_sigdet_o    ),
 
    .i_phy_cmu_ok_ro        (cm0_ok_o                ),
    .o_phy_cmu_pd_ctrl_rw   (cm0_pd_i[1:0]           ),  
    .i_phy_cmu_rst_pd_ready_ro(cm0_rst_pd_ready_o      ),  
    .o_cfg_cm0_ok_bypass_rw (cfg_cm0_ok_bypass       ),
    .o_phy_ln_pd_ctrl_ln0_rw(ln0_pd_i[1:0]           ),  
    .o_phy_ln_pd_ctrl_ln1_rw(ln1_pd_i[1:0]           ),  
    .o_phy_ln_pd_ctrl_ln2_rw(ln2_pd_i[1:0]           ),  
    .o_phy_ln_pd_ctrl_ln3_rw(ln3_pd_i[1:0]           ),
    .i_phy_ln_rst_pd_ready_ln0_ro(ln0_rst_pd_ready_o      ),  
    .i_phy_ln_rst_pd_ready_ln1_ro(ln1_rst_pd_ready_o      ),  
    .i_phy_ln_rst_pd_ready_ln2_ro(ln2_rst_pd_ready_o      ),  
    .i_phy_ln_rst_pd_ready_ln3_ro(ln3_rst_pd_ready_o      ), 
    .i_phy_err_ro           (phy_err_o               ),
  
    .i_tbus_data_ro         (tbus_data_o[11:0]       ),      
    .i_burn_in_ln0_toggle_ro(ln0_burn_in_toggle_o    ),  
    .i_burn_in_ln1_toggle_ro(ln1_burn_in_toggle_o    ),  
    .i_burn_in_ln2_toggle_ro(ln2_burn_in_toggle_o    ),  
    .i_burn_in_ln3_toggle_ro(ln3_burn_in_toggle_o    )
  );

eth_tx_harness u_eth_tx_harness(
    .app_clk                (app_clk                 ),
    .app_rstn               (app_rstn                ),
    .tx_clk                 (mac_clk_tx              ),
    .tx_rstn                (mac_rstn_tx             ),

    .cfg_arb_type_val       (cfg_arb_type_val[1:0]   ),
    .cfg_q0_th              (cfg_q0_th[9:0]          ),
    .cfg_q1_th              (cfg_q1_th[9:0]          ),
    .cfg_q2_th              (cfg_q2_th[9:0]          ),
    .cfg_q3_th              (cfg_q3_th[9:0]          ),

    .cfg_is_wt0             (cfg_is_wt0[20:0]        ),
    .cfg_is_wt1             (cfg_is_wt1[20:0]        ),
    .cfg_is_wt2             (cfg_is_wt2[20:0]        ),
    .cfg_is_wt3             (cfg_is_wt3[20:0]        ),
    .cfg_sch_tsa            (cfg_sch_tsa[7:0]        ),
    .cfg_sch_txq_sts0_o     (cfg_sch_txq_sts0[31:0]  ),
    .cfg_sch_txq_sts1_o     (cfg_sch_txq_sts1[31:0]  ),
    .cfg_sch_txq_sts2_o     (cfg_sch_txq_sts2[31:0]  ),
    .cfg_sch_txq_sts3_o     (cfg_sch_txq_sts3[31:0]  ),
    .sch_txq_sts_val        (sch_txq_sts_val         ),
    .cfg_sch_txq_sts_req    (cfg_sch_txq_sts_req     ),
  
    .queue0_length          (queue0_length[9:0]      ),
    .queue1_length          (queue1_length[9:0]      ),
    .queue2_length          (queue2_length[9:0]      ),
    .queue3_length          (queue3_length[9:0]      ),
  
    .ivbuffer_vl0_tx_data   (ivBuffer_VL0_tx_data    ),
    .ibuffer_vl0_tx_empty   (iBuffer_VL0_tx_empty    ),
    .obuffer_vl0_tx_rden    (oBuffer_VL0_tx_rden     ),
    .ivbuffer_vl1_tx_data   (ivBuffer_VL1_tx_data    ),
    .ibuffer_vl1_tx_empty   (iBuffer_VL1_tx_empty    ),
    .obuffer_vl1_tx_rden    (oBuffer_VL1_tx_rden     ),
    .ivbuffer_vl2_tx_data   (ivBuffer_VL2_tx_data    ),
    .ibuffer_vl2_tx_empty   (iBuffer_VL2_tx_empty    ),
    .obuffer_vl2_tx_rden    (oBuffer_VL2_tx_rden     ),
    .ivbuffer_vl3_tx_data   (ivBuffer_VL3_tx_data    ),
    .ibuffer_vl3_tx_empty   (iBuffer_VL3_tx_empty    ),
    .obuffer_vl3_tx_rden    (oBuffer_VL3_tx_rden     ),
  
    .itail_vl0_tx_empty     (iTail_VL0_tx_empty      ),
    .otail_vl0_tx_rden      (oTail_VL0_tx_rden       ),
    .itail_vl1_tx_empty     (iTail_VL1_tx_empty      ),
    .otail_vl1_tx_rden      (oTail_VL1_tx_rden       ),
    .itail_vl2_tx_empty     (iTail_VL2_tx_empty      ),
    .otail_vl2_tx_rden      (oTail_VL2_tx_rden       ),
    .itail_vl3_tx_empty     (iTail_VL3_tx_empty      ),
    .otail_vl3_tx_rden      (oTail_VL3_tx_rden       ),
  
    .tick_125us_i           (tick_125us              ),
    .mti_txstatus_val_i     (mti_txstatus_val        ),
    .mti_txstatus_length    (mti_txstatus[26:13]     ),

    .tx_afifo_pop_en        (tx_afifo_pop_en         ),
    .tx_afifo_data          (tx_afifo_data           ),
    .tx_afifo_empty         (tx_afifo_empty          )

);
  // eth_mac_core = xlgmac_core + eth_core_axis converter
  eth_mac_core u_eth_mac_core(
    // .xlgmac_clk_tx_i        (mac_clk_tx              ),
    // .xlgmac_clk_rx_i        (mac_clk_rx              ),
    // .xlgmac_clk_aux_i       (mac_clk_aux             ),
    // .xlgmac_clk_csr_i       (mac_clk_csr             ),
  
    .rst_clk_tx_n           (mac_rstn_tx             ),
    .rst_clk_rx_n           (mac_rstn_rx             ),
    .rst_clk_aux_n          (mac_rstn_aux            ),
    .xlgmac_rst_clk_csr_n   (mac_rstn_csr            ),
  
    .xlgmac_prdata_o        (xlgmac_prdata[31:0]     ),
    .xlgmac_pready_o        (xlgmac_pready           ),
    .xlgmac_psel_i          (xlgmac_psel             ),
    .xlgmac_paddr_i         (xlgmac_paddr[15:0]      ),
    .xlgmac_penable_i       (xlgmac_penable          ),
    .xlgmac_pwrite_i        (xlgmac_pwrite           ),
    .xlgmac_pwdata_i        (xlgmac_pwdata[31:0]     ),

    .tick_125us_o           (tick_125us              ),
    .mti_txstatus_o         (mti_txstatus[31:0]      ),
    .mti_txstatus_val_o     (mti_txstatus_val        ),
    //mti fifo
    .tx_afifo_pop_en        (tx_afifo_pop_en         ),
    .tx_afifo_data          (tx_afifo_data           ),
    .tx_afifo_empty         (tx_afifo_empty          ),
    .pkt_crdt_m             (pkt_crdt_m[43:0]        ),
	.rx_flow_ctrl_th        ({rx_fc_vl3_th,rx_fc_vl2_th,rx_fc_vl1_th,rx_fc_vl0_th}),
    .m_axis_route_tvalid    (m_axis_route_tvalid     ),
    .m_axis_route_tstart    (m_axis_route_tstart     ),
    .m_axis_route_tlast     (m_axis_route_tlast      ),
    .m_axis_route_tuser     (m_axis_route_tuser[7:0] ),
    .m_axis_route_tkeep     (m_axis_route_tkeep[15:0]),
    .m_axis_route_tdata     (m_axis_route_tdata[127:0]),
    .m_axis_route_tready    (m_axis_route_tready     ),
  
    // .xlgmii_txd_o           (xlgmii_txd_mac2pcs[127:0]),
    // .xlgmii_txc_o           (xlgmii_txc_mac2pcs[15:0]),
    // .xlgmii_trdy_i          (xlgmii_trdy_pcs2mac     ),
    // .xlgmii_rxd_i           (xlgmii_rxd_pcs2mac[127:0]),
    // .xlgmii_rxc_i           (xlgmii_rxc_pcs2mac[15:0]),
    // .xlgmii_valid_i         (xlgmii_valid_pcs2mac    ),
    
    // Sideband
    .mti_vlan_ctrl_i        (mti_vlan_ctrl[1:0]      ),
    .mti_vlan_tag_i         (mti_vlan_tag[15:0]      ),
    .mti_inner_vlan_ctrl_i  (mti_inner_vlan_ctrl[1:0]),
    .mti_inner_vlan_tag_i	(mti_inner_vlan_tag[15:0]),
    .mti_sa_ctrl_i          (mti_sa_ctrl[2:0]        ),
    .mti_crc_pad_ctrl_i		(mti_crc_pad_ctrl[1:0]   ),

    .xlgmac_speed_o         (xlgmac_speed_o[1:0]     ),
    .xlgmac_loopback_mode_o (xlgmac_loopback_mode_o  ),
    .xlgmac_sbd_intr_o      (xlgmac_sbd_intr_o       )
  );

  // eth_phy = xlgpcs + fecerr mems + rsfec mem + deskew mems + phy + phy mems
eth_phy u_eth_phy(
      // XLGPCS signals
    .xlgpcs_clk_csr_i       (pcs_clk_csr             ),
    .xlgpcs_prdata_o        (xlgpcs_prdata[15:0]     ),
    .xlgpcs_pready_o        (xlgpcs_pready           ),
    .xlgpcs_psel_i          (xlgpcs_psel             ),
    .xlgpcs_paddr_i         (xlgpcs_paddr[20:0]      ),
    .xlgpcs_pwrite_i        (xlgpcs_pwrite           ),
    .xlgpcs_penable_i       (xlgpcs_penable          ),
    .xlgpcs_pwdata_i        (xlgpcs_pwdata[15:0]     ),
      // XLGPCS clk and Reset
    .pwr_on_rst_n           (pcs_pwr_on_rst_n        ),
    .xlgpcs_xlgmii_clk_tx_i (pcs_clk_xlgmii_tx       ),    
    .xlgpcs_xlgmii_clk_rx_i (pcs_clk_xlgmii_rx       ),  

    .xlgpcs_clk_xsbi_tx_i   (pcs_clk_xsbi_tx          ),
    .xlgpcs_clk_xsbi_rx0_i  (pcs_clk_xsbi_rx0         ),   // pcs_clk_xsbi_rxX = 644M from eth_clkrst  
    .xlgpcs_clk_xsbi_rx1_i  (pcs_clk_xsbi_rx1         ),
    .xlgpcs_clk_xsbi_rx2_i  (pcs_clk_xsbi_rx2         ),
    .xlgpcs_clk_xsbi_rx3_i  (pcs_clk_xsbi_rx3         ),

    .xlgpcs_clk_rpcs_tx_i   (pcs_clk_rpcs_tx         ),
    .xlgpcs_clk_rpcs_rx0_i  (pcs_clk_rpcs_rx0        ),    // pcs_clk_rpcs_rxX =390M from eth_clkrst 
    .xlgpcs_clk_rpcs_rx1_i  (pcs_clk_rpcs_rx1        ),
    .xlgpcs_clk_rpcs_rx2_i  (pcs_clk_rpcs_rx2        ),
    .xlgpcs_clk_rpcs_rx3_i  (pcs_clk_rpcs_rx3        ),

    .xlgmii_rxd_o           (xlgmii_rxd_o[127:0]     ),
    .xlgmii_rxc_o           (xlgmii_rxc_o[15:0]      ),
    .xlgmii_rx_valid_o      (xlgmii_rx_valid_o       ),
    .xlgmii_tx_rdy_o        (xlgmii_tx_rdy_o         ),
    .xlgmii_txd_i           (xlgmii_txd_i[127:0]     ),
    .xlgmii_txc_i           (xlgmii_txc_i[15:0]      ),
    .xlgpcs_sbd_intr_o      (xlgpcs_sbd_intr_o       ),
      // XLGPCS to registers
    .xlgpcs_lane_rx_en      (4'hf                    ),    // 4'b1111- for 100G/40G configuration
    .xlgpcs_lane_tx_en      (4'hf                    ),    // 4'b1111- for 100G/40G configuration
    .xlgpcs_xlgmii_lb_en    (xlgpcs_xlgmii_lb_en     ),
  
    .xlgpcs_lt_ctrl_rpcs_rx_trained0(xlgpcs_lt_ctrl_rpcs_rx_trained0),
    .xlgpcs_lt_ctrl_rpcs_rx_trained1(xlgpcs_lt_ctrl_rpcs_rx_trained1),
    .xlgpcs_lt_ctrl_rpcs_rx_trained2(xlgpcs_lt_ctrl_rpcs_rx_trained2),
    .xlgpcs_lt_ctrl_rpcs_rx_trained3(xlgpcs_lt_ctrl_rpcs_rx_trained3),
  
    .xlgpcs_lt_stat_rpcs_ktr_en0(xlgpcs_lt_stat_rpcs_ktr_en0),
    .xlgpcs_lt_stat_rpcs_ktr_en1(xlgpcs_lt_stat_rpcs_ktr_en1),
    .xlgpcs_lt_stat_rpcs_ktr_en2(xlgpcs_lt_stat_rpcs_ktr_en2),
    .xlgpcs_lt_stat_rpcs_ktr_en3(xlgpcs_lt_stat_rpcs_ktr_en3),
  
    .xlgpcs_lt_stat_rpcs_ktr_train_on0(xlgpcs_lt_stat_rpcs_ktr_train_on0),
    .xlgpcs_lt_stat_rpcs_ktr_train_on1(xlgpcs_lt_stat_rpcs_ktr_train_on1),
    .xlgpcs_lt_stat_rpcs_ktr_train_on2(xlgpcs_lt_stat_rpcs_ktr_train_on2),
    .xlgpcs_lt_stat_rpcs_ktr_train_on3(xlgpcs_lt_stat_rpcs_ktr_train_on3),
  
    .xlgpcs_lt_stat_rpcs_ktr_train_fail0(xlgpcs_lt_stat_rpcs_ktr_train_fail0),
    .xlgpcs_lt_stat_rpcs_ktr_train_fail1(xlgpcs_lt_stat_rpcs_ktr_train_fail1),
    .xlgpcs_lt_stat_rpcs_ktr_train_fail2(xlgpcs_lt_stat_rpcs_ktr_train_fail2),
    .xlgpcs_lt_stat_rpcs_ktr_train_fail3(xlgpcs_lt_stat_rpcs_ktr_train_fail3),
  
    .xlgpcs_lt_stat_rpcs_ktr_frame_rcvd0(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd0),
    .xlgpcs_lt_stat_rpcs_ktr_frame_rcvd1(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd1),
    .xlgpcs_lt_stat_rpcs_ktr_frame_rcvd2(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd2),
    .xlgpcs_lt_stat_rpcs_ktr_frame_rcvd3(xlgpcs_lt_stat_rpcs_ktr_frame_rcvd3),
  
    .xlgpcs_lt_stat_rpcs_ktr_frame_lock0(xlgpcs_lt_stat_rpcs_ktr_frame_lock0),
    .xlgpcs_lt_stat_rpcs_ktr_frame_lock1(xlgpcs_lt_stat_rpcs_ktr_frame_lock1),
    .xlgpcs_lt_stat_rpcs_ktr_frame_lock2(xlgpcs_lt_stat_rpcs_ktr_frame_lock2),
    .xlgpcs_lt_stat_rpcs_ktr_frame_lock3(xlgpcs_lt_stat_rpcs_ktr_frame_lock3),
  
    .xlgpcs_lt_stat_rpcs_ktr_restart0(xlgpcs_lt_stat_rpcs_ktr_restart0),
    .xlgpcs_lt_stat_rpcs_ktr_restart1(xlgpcs_lt_stat_rpcs_ktr_restart1),
    .xlgpcs_lt_stat_rpcs_ktr_restart2(xlgpcs_lt_stat_rpcs_ktr_restart2),
    .xlgpcs_lt_stat_rpcs_ktr_restart3(xlgpcs_lt_stat_rpcs_ktr_restart3),
  
    .xlgpcs_lt_stat_rpcs_ktr_prbs_good0(xlgpcs_lt_stat_rpcs_ktr_prbs_good0),
    .xlgpcs_lt_stat_rpcs_ktr_prbs_good1(xlgpcs_lt_stat_rpcs_ktr_prbs_good1),
    .xlgpcs_lt_stat_rpcs_ktr_prbs_good2(xlgpcs_lt_stat_rpcs_ktr_prbs_good2),
    .xlgpcs_lt_stat_rpcs_ktr_prbs_good3(xlgpcs_lt_stat_rpcs_ktr_prbs_good3),
  
    .xlgpcs_rx_lane_sts     (xlgpcs_rx_lane_sts      ),
    .xlgpcs_tx_lane_sts     (xlgpcs_tx_lane_sts      ),
    .xlgpcs_loopback_en_o   (xlgpcs_loopback_en_o    ),
    .xlgpcs_pdown           (xlgpcs_pdown            ),
    .xlgpcs_speed_ctrl      (xlgpcs_speed_ctrl[2:0]  ),
    .phy_err_o              (phy_err_o               ),
      // PMA signals
    .ln0_txclk_i            (phy_ln0_txclk           ),   //net_top:phy_lnX_txclk=644.53125M; phy:lnX_txclk_i=644.53125M 
    .ln1_txclk_i            (phy_ln1_txclk           ),
    .ln2_txclk_i            (phy_ln2_txclk           ),
    .ln3_txclk_i            (phy_ln3_txclk           ),
    .ln0_rxclk_o            (phy_ln0_gbclk           ),   //net_top: phy_lnX_gbclk=644.53125M; phy: lnX_rxclk_o=644.53125M 
    .ln1_rxclk_o            (phy_ln1_gbclk           ),
    .ln2_rxclk_o            (phy_ln2_gbclk           ),
    .ln3_rxclk_o            (phy_ln3_gbclk           ),

    .ln0_clk_rxdiv_core_o   (phy_ln0_rxclk           ),   //net_top:phy_lnX_rxclk=390M; phy: lnX_clk_rxdiv_core_o, 390.625M
    .ln1_clk_rxdiv_core_o   (phy_ln1_rxclk           ),
    .ln2_clk_rxdiv_core_o   (phy_ln2_rxclk           ),
    .ln3_clk_rxdiv_core_o   (phy_ln3_rxclk           ), 

    .phy_prog_mem_sel       (phy_prog_mem_sel        ),
	.is_apb_ctrl            (is_apb_ctrl             ),
    .phy_p_iram_clk_i       (phy_p_iram_clk          ),
    .phy_p_iram_rstn_i      (phy_p_iram_rstn         ),
    .phy_irom_clk_i         (phy_irom_clk            ),

    .cpu_clk_i              (phy_cpu_clk             ),
    .cpu_resetn_i           (phy_cpu_rstn            ),
    .cpu_memdata_apb_o      (cpu_memdata_brg2m[7:0]  ),
    .cpu_memaddr_apb        (cpu_memaddr_brg2m[22:0] ),
    .cpu_memdata_apb_i      (cpu_memdata_m2brg[7:0]  ),
    .cpu_mempsrd_apb        (cpu_mempsrd_brg2m       ),
    .cpu_mempswr_apb        (cpu_mempswr_brg2m       ),

    .phy_pclk_i             (phy_apb_clk             ),
    .phy_preset_n_i         (phy_apb_rstn            ),
    .phy_prdata_o           (phy_prdata[7:0]         ),
    .phy_pready_o           (phy_pready              ),
    .phy_pslverr_o          (phy_pslverr             ),
    .phy_psel_i             (phy_psel                ),
    .phy_paddr_i            (phy_paddr[14:0]         ),
    .phy_pwrite_i           (phy_pwrite              ),
    .phy_pwr_bit_en_i       (phy_pwr_bit_en[7:0]     ),
    .phy_pwdata_i           (phy_pwdata[7:0]         ),
  
    .ln0_txp_o              (ln0_txp_o               ),
    .ln0_txm_o              (ln0_txm_o               ),
    .ln1_txp_o              (ln1_txp_o               ),
    .ln1_txm_o              (ln1_txm_o               ),
    .ln2_txp_o              (ln2_txp_o               ),
    .ln2_txm_o              (ln2_txm_o               ),
    .ln3_txp_o              (ln3_txp_o               ),
    .ln3_txm_o              (ln3_txm_o               ),
    .ln0_rxp_i              (ln0_rxp_i               ),
    .ln0_rxm_i              (ln0_rxm_i               ),
    .ln1_rxp_i              (ln1_rxp_i               ),
    .ln1_rxm_i              (ln1_rxm_i               ),  
    .ln2_rxp_i              (ln2_rxp_i               ),
    .ln2_rxm_i              (ln2_rxm_i               ),
    .ln3_rxp_i              (ln3_rxp_i               ),
    .ln3_rxm_i              (ln3_rxm_i               ),
  
    .atest1_o               (atest1_o                ),
    .atest2_o               (atest2_o                ),
    .soc_atest1_i           (soc_atest1_i            ),
    .soc_atest2_i           (soc_atest2_i            ),
  
    .refclkp_i              (refclkp_i               ),
    .refclkm_i              (refclkm_i               ),
    .refclk_left_i          (refclk_left_i           ),
    .refclk_right_i         (refclk_right_i          ),
    .refres_i               (refres_i                ),
    .refclk_left_o          (refclk_left_o           ),
    .refclk_right_o         (refclk_right_o          ),
      
    .cpu_debug_tdo          (cpu_debug_tdo           ),
    .cpu_debug_tdo_en       (cpu_debug_tdo_en        ),
    .cpu_debug_tck          (cpu_debug_tck           ),
    .cpu_debug_trst         (cpu_debug_trst          ),
    .cpu_debug_tms          (cpu_debug_tms           ),
    .cpu_debug_tdi          (cpu_debug_tdi           ),
  
      // PMA to registers
    .cm0_pd_i               (cm0_pd_i[1:0]           ),
    .cm0_rst_n_i            (cfg_eth_phy_cmu_rstn    ),
    .cm0_rst_pd_ready_o     (cm0_rst_pd_ready_o      ),
    .cm0_ok_o               (cm0_ok_o                ),
  
    .ln0_rst_n_i            (phy_ln0_rst_n           ),
    .ln0_pd_i               (ln0_pd_i[1:0]           ),
    .ln0_rst_pd_ready_o     (ln0_rst_pd_ready_o      ),
    .ln1_rst_n_i            (phy_ln1_rst_n           ),
    .ln1_pd_i               (ln1_pd_i[1:0]           ),
    .ln1_rst_pd_ready_o     (ln1_rst_pd_ready_o      ),
    .ln2_rst_n_i            (phy_ln2_rst_n           ),
    .ln2_pd_i               (ln2_pd_i[1:0]           ),
    .ln2_rst_pd_ready_o     (ln2_rst_pd_ready_o      ),
    .ln3_rst_n_i            (phy_ln3_rst_n           ),
    .ln3_pd_i               (ln3_pd_i[1:0]           ),
    .ln3_rst_pd_ready_o     (ln3_rst_pd_ready_o      ),
  
    .cm0_refclk_o           (cm0_refclk_o            ),
    .cm0_clk_pll_o          (gb_tx_clk               ),   //net_top: gb_tx_clk=644.53125M from pma
    .cm0_clk_plldiv_o       (cm0_clk_plldiv_o        ),   //Unused
  
    .ln0_stat_ok_o          (ln0_stat_ok_o           ),
    .ln1_stat_ok_o          (ln1_stat_ok_o           ),
    .ln2_stat_ok_o          (ln2_stat_ok_o           ),
    .ln3_stat_ok_o          (ln3_stat_ok_o           ),
    .ln0_stat_los_o         (ln0_stat_los_o          ),
    .ln1_stat_los_o         (ln1_stat_los_o          ),
    .ln2_stat_los_o         (ln2_stat_los_o          ),
    .ln3_stat_los_o         (ln3_stat_los_o          ),
  
    .ln0_stat_lt_sigdet_o   (ln0_stat_lt_sigdet_o    ),
    .ln1_stat_lt_sigdet_o   (ln1_stat_lt_sigdet_o    ),
    .ln2_stat_lt_sigdet_o   (ln2_stat_lt_sigdet_o    ),
    .ln3_stat_lt_sigdet_o   (ln3_stat_lt_sigdet_o    ),
  
    .tbus_data_o            (tbus_data_o[11:0]       ),
    .ln0_burn_in_toggle_o   (ln0_burn_in_toggle_o    ),
    .ln1_burn_in_toggle_o   (ln1_burn_in_toggle_o    ),
    .ln2_burn_in_toggle_o   (ln2_burn_in_toggle_o    ),
    .ln3_burn_in_toggle_o   (ln3_burn_in_toggle_o    ),

    .test_en_i              (test_en                 ),
    .scan_mode_i            (scan_mode               ),
    .scan_en_i              (scan_en_i               ),
    .scan_clk_0_i           (scan_clk_0              ),
    .scan_clk_1_i           (scan_clk_1              ),
    .scan_clk_2_i           (scan_clk_2              ),
    .scan_clk_3_i           (scan_clk_3              ),
    .scan_clk_4_i           (scan_clk_4              ),
    .scan_clk_5_i           (scan_clk_5              ),
  
    .phy_ctrl_refclk_i      (phy_ctrl_refclk_i[4:0]  ),
    .phy_ctrl_rate1_i       (phy_ctrl_rate1_i[5:0]   ),
    .phy_ctrl_rate2_i       (phy_ctrl_rate2_i[5:0]   ),
  
    .refclk_input_sel_i     (refclk_input_sel_i[1:0] ),
    .refclk_left_sel_i      (refclk_left_sel_i[1:0]  ),
    .refclk_right_sel_i     (refclk_right_sel_i[1:0] ),
  
    .ln0_ctrl_data_width_i  (ln0_ctrl_data_width_i[2:0]),
    .ln0_ctrl_data_rate_i   (ln0_ctrl_data_rate_i[1:0]),
    .ln0_ctrl_rxpolarity_i  (ln0_ctrl_rxpolarity_i   ),
    .ln0_ctrl_tx_en_i       (ln0_ctrl_tx_en_i        ),
    .ln0_ctrl_los_eii_en_i  (ln0_ctrl_los_eii_en_i   ),
    .ln0_ctrl_los_eii_value_i(ln0_ctrl_los_eii_value_i),
  
    .ln1_ctrl_data_width_i  (ln1_ctrl_data_width_i[2:0]),
    .ln1_ctrl_data_rate_i   (ln1_ctrl_data_rate_i[1:0]),
    .ln1_ctrl_rxpolarity_i  (ln1_ctrl_rxpolarity_i   ),
    .ln1_ctrl_tx_en_i       (ln1_ctrl_tx_en_i        ),
    .ln1_ctrl_los_eii_en_i  (ln1_ctrl_los_eii_en_i   ),
    .ln1_ctrl_los_eii_value_i(ln1_ctrl_los_eii_value_i),
  
    .ln2_ctrl_data_width_i  (ln2_ctrl_data_width_i[2:0]),
    .ln2_ctrl_data_rate_i   (ln2_ctrl_data_rate_i[1:0]),
    .ln2_ctrl_rxpolarity_i  (ln2_ctrl_rxpolarity_i   ),
    .ln2_ctrl_tx_en_i       (ln2_ctrl_tx_en_i        ),
    .ln2_ctrl_los_eii_en_i  (ln2_ctrl_los_eii_en_i   ),
    .ln2_ctrl_los_eii_value_i(ln2_ctrl_los_eii_value_i),
  
    .ln3_ctrl_data_width_i  (ln3_ctrl_data_width_i[2:0]),
    .ln3_ctrl_data_rate_i   (ln3_ctrl_data_rate_i[1:0]),
    .ln3_ctrl_rxpolarity_i  (ln3_ctrl_rxpolarity_i   ),
    .ln3_ctrl_tx_en_i       (ln3_ctrl_tx_en_i        ),
    .ln3_ctrl_los_eii_en_i  (ln3_ctrl_los_eii_en_i   ),
    .ln3_ctrl_los_eii_value_i(ln3_ctrl_los_eii_value_i)
  );


endmodule
