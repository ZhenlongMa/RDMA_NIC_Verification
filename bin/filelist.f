//****************************************************************
// IP
//****************************************************************
+libext+.v
+libext+.sv
+incdir+/tools/Xilinx/vivado/2016.4/data/verilog/src

-y /tools/Xilinx/vivado/2016.4/data/verilog/src/unisims
-y /tools/Xilinx/vivado/2016.4/data/verilog/src/unimacro
-y /tools/Xilinx/vivado/2016.4/data/verilog/src/retarget

-f /project/mazhenlong/hca_ip/secureip/gthe2_channel/gthe2_channel_cell.list.f
-f /project/mazhenlong/hca_ip/secureip/gthe2_common/gthe2_common_cell.list.f
-f /project/mazhenlong/hca_ip/secureip/pcie_3_0/pcie_3_0_cell.list.f
-F /project/mazhenlong/hca_ip/filelist_ip.f

/tools/Xilinx/vivado/2016.4/data/verilog/src/glbl.v 
//****************************************************************
// included directories
//****************************************************************
+incdir+../../../hdl/NIC/Include
+incdir+../../../hdl/RouteSubsystem/Include
-F ../../../hdl/NIC/Include/filelist_Include.f

//****************************************************************
// verilog files
//****************************************************************
-F ../../../hdl/NIC/filelist_nic.f

//*******************************************************************
// SystemVerilog files
//*******************************************************************
../sv/hca_defines.sv

../vrf_hdl/hca_dut.v
../sv/hca_interface.sv
../vrf_hdl/hca_tb_top.v

../sv/common/hca_pcie_item.sv
../sv/common/hca_check_mem_list.sv
../sv/common/hca_math_func.sv
../sv/common/hca_addr_align.sv
../sv/common/hca_addr_table.sv
../sv/common/hca_fifo.sv
../sv/common/hca_memory.sv
../sv/common/hca_event_generator.sv
../sv/common/hca_virt_addr.sv
../sv/common/hca_comp_queue.sv
../sv/common/hca_queue_pair.sv
../sv/common/hca_queue_list.sv
../sv/common/hca_icm_vaddr.sv
../sv/common/hca_mem_info.sv
../sv/common/hca_global_comp.sv

../sv/master/hca_master_sequencer.sv
../sv/master/hca_master_monitor.sv
../sv/master/hca_master_driver.sv
../sv/master/hca_master_agent.sv

../sv/master/hca_master_driver.sv
../sv/master/hca_master_monitor.sv
../sv/master/hca_master_sequencer.sv
../sv/master/hca_master_agent.sv

../sv/sequence/hca_config_sequence.sv
../sv/sequence/hca_comm_sequence.sv

../sv/slave/hca_slave_sequencer.sv
../sv/slave/hca_slave_monitor.sv
../sv/slave/hca_slave_driver.sv
../sv/slave/hca_slave_agent.sv

../sv/hca_scoreboard.sv
../sv/hca_ref_model.sv

../sv/hca_vsequencer.sv
../sv/sequence/hca_slave_sequence.sv
../sv/hca_vsequence.sv

../sv/hca_sub_env.sv
../sv/hca_env.sv

../sv/test/hca_config_agent.sv
../sv/test/test_direct_param.sv