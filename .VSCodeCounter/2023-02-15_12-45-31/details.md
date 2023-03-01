# Details

Date : 2023-02-15 12:45:31

Directory d:\\系统互连组内工作\\InfiniBand网卡\\Code\\hcatest_gitlab\\sv

Total : 44 files,  7162 codes, 3019 comments, 1026 blanks, all 11207 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [sv/common/hca_addr_align.sv](/sv/common/hca_addr_align.sv) | System Verilog | 77 | 84 | 18 | 179 |
| [sv/common/hca_addr_table.sv](/sv/common/hca_addr_table.sv) | System Verilog | 92 | 45 | 18 | 155 |
| [sv/common/hca_check_mem_list.sv](/sv/common/hca_check_mem_list.sv) | System Verilog | 14 | 27 | 9 | 50 |
| [sv/common/hca_comp_queue.sv](/sv/common/hca_comp_queue.sv) | System Verilog | 18 | 28 | 10 | 56 |
| [sv/common/hca_event_generator.sv](/sv/common/hca_event_generator.sv) | System Verilog | 11 | 0 | 3 | 14 |
| [sv/common/hca_fifo.sv](/sv/common/hca_fifo.sv) | System Verilog | 112 | 115 | 27 | 254 |
| [sv/common/hca_global_comp.sv](/sv/common/hca_global_comp.sv) | System Verilog | 0 | 0 | 1 | 1 |
| [sv/common/hca_icm_vaddr.sv](/sv/common/hca_icm_vaddr.sv) | System Verilog | 38 | 27 | 16 | 81 |
| [sv/common/hca_math_func.sv](/sv/common/hca_math_func.sv) | System Verilog | 20 | 37 | 11 | 68 |
| [sv/common/hca_mem_info.sv](/sv/common/hca_mem_info.sv) | System Verilog | 16 | 27 | 9 | 52 |
| [sv/common/hca_memory.sv](/sv/common/hca_memory.sv) | System Verilog | 205 | 131 | 51 | 387 |
| [sv/common/hca_pcie_item.sv](/sv/common/hca_pcie_item.sv) | System Verilog | 377 | 96 | 47 | 520 |
| [sv/common/hca_queue_list.sv](/sv/common/hca_queue_list.sv) | System Verilog | 32 | 27 | 9 | 68 |
| [sv/common/hca_queue_pair.sv](/sv/common/hca_queue_pair.sv) | System Verilog | 557 | 166 | 43 | 766 |
| [sv/common/hca_virt_addr.sv](/sv/common/hca_virt_addr.sv) | System Verilog | 17 | 22 | 8 | 47 |
| [sv/hca_defines.sv](/sv/hca_defines.sv) | System Verilog | 399 | 104 | 71 | 574 |
| [sv/hca_env.sv](/sv/hca_env.sv) | System Verilog | 70 | 61 | 27 | 158 |
| [sv/hca_interface.sv](/sv/hca_interface.sv) | System Verilog | 100 | 71 | 21 | 192 |
| [sv/hca_ref_model.sv](/sv/hca_ref_model.sv) | System Verilog | 597 | 507 | 98 | 1,202 |
| [sv/hca_scoreboard.sv](/sv/hca_scoreboard.sv) | System Verilog | 226 | 59 | 28 | 313 |
| [sv/hca_sub_env.sv](/sv/hca_sub_env.sv) | System Verilog | 25 | 38 | 8 | 71 |
| [sv/hca_vsequence.sv](/sv/hca_vsequence.sv) | System Verilog | 134 | 42 | 17 | 193 |
| [sv/hca_vsequencer.sv](/sv/hca_vsequencer.sv) | System Verilog | 27 | 35 | 9 | 71 |
| [sv/master/hca_master_agent.sv](/sv/master/hca_master_agent.sv) | System Verilog | 24 | 41 | 8 | 73 |
| [sv/master/hca_master_driver.sv](/sv/master/hca_master_driver.sv) | System Verilog | 294 | 126 | 43 | 463 |
| [sv/master/hca_master_monitor.sv](/sv/master/hca_master_monitor.sv) | System Verilog | 11 | 27 | 5 | 43 |
| [sv/master/hca_master_sequencer.sv](/sv/master/hca_master_sequencer.sv) | System Verilog | 13 | 33 | 5 | 51 |
| [sv/master/regs/hca_reg2pcie_adapter.sv](/sv/master/regs/hca_reg2pcie_adapter.sv) | System Verilog | 84 | 41 | 9 | 134 |
| [sv/master/regs/hca_reg_block_db.sv](/sv/master/regs/hca_reg_block_db.sv) | System Verilog | 42 | 61 | 9 | 112 |
| [sv/master/regs/hca_reg_block_hcr.sv](/sv/master/regs/hca_reg_block_hcr.sv) | System Verilog | 63 | 74 | 18 | 155 |
| [sv/sample.sv](/sv/sample.sv) | System Verilog | 45 | 0 | 12 | 57 |
| [sv/sequence/hca_comm_sequence.sv](/sv/sequence/hca_comm_sequence.sv) | System Verilog | 42 | 43 | 8 | 93 |
| [sv/sequence/hca_config_sequence.sv](/sv/sequence/hca_config_sequence.sv) | System Verilog | 435 | 62 | 27 | 524 |
| [sv/sequence/hca_slave_sequence.sv](/sv/sequence/hca_slave_sequence.sv) | System Verilog | 216 | 45 | 20 | 281 |
| [sv/sequence/test_db_seq.sv](/sv/sequence/test_db_seq.sv) | System Verilog | 6 | 22 | 4 | 32 |
| [sv/sequence/test_hcr_seq.sv](/sv/sequence/test_hcr_seq.sv) | System Verilog | 36 | 40 | 7 | 83 |
| [sv/slave/hca_slave_agent.sv](/sv/slave/hca_slave_agent.sv) | System Verilog | 29 | 43 | 8 | 80 |
| [sv/slave/hca_slave_driver.sv](/sv/slave/hca_slave_driver.sv) | System Verilog | 230 | 100 | 24 | 354 |
| [sv/slave/hca_slave_monitor.sv](/sv/slave/hca_slave_monitor.sv) | System Verilog | 235 | 65 | 18 | 318 |
| [sv/slave/hca_slave_sequencer.sv](/sv/slave/hca_slave_sequencer.sv) | System Verilog | 16 | 32 | 6 | 54 |
| [sv/test/hca_config_agent.sv](/sv/test/hca_config_agent.sv) | System Verilog | 280 | 54 | 22 | 356 |
| [sv/test/test_config.sv](/sv/test/test_config.sv) | System Verilog | 269 | 92 | 28 | 389 |
| [sv/test/test_direct.sv](/sv/test/test_direct.sv) | System Verilog | 811 | 91 | 86 | 988 |
| [sv/test/test_direct_param.sv](/sv/test/test_direct_param.sv) | System Verilog | 817 | 178 | 100 | 1,095 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)