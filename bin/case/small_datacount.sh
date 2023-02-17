./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0000.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0000.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0000.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0000.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0000.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0000.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0000.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0001.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0001.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0001.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0001.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0001.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0001.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0001.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0002.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0002.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0002.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0002.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0002.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0002.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0002.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0003.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0003.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0003.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0003.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0003.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0003.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0003.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0004.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0004.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0004.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0004.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0004.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0004.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0004.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0005.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0005.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0005.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0005.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0005.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0005.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0005.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0006.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0006.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0006.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0006.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0006.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0006.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0006.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0007.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0007.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0007.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0007.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0007.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0007.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0007.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0008.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0008.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0008.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0008.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0008.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0008.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0008.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0009.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0009.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0009.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0009.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0009.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0009.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0009.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0010.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0010.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0010.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0010.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0010.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0010.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0010.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0011.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0011.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0011.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0011.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0011.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0011.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0011.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0012.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0012.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0012.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0012.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0012.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0012.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0012.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0013.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0013.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0013.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0013.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0013.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0013.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0013.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0014.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0014.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0014.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0014.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0014.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0014.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0014.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0015.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0015.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0015.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0015.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0015.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0015.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0015.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0016.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0016.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0016.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0016.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0016.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0016.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0016.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0017.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0017.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0017.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0017.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0017.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0017.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0017.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0018.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0018.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0018.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0018.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0018.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0018.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0018.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0019.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0019.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0019.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0019.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0019.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0019.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0019.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0020.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0020.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0020.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0020.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0020.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0020.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0020.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0021.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0021.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0021.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0021.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0021.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0021.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0021.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0022.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0022.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0022.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0022.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0022.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0022.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0022.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0023.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0023.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0023.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0023.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0023.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0023.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0023.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0024.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0024.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0024.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0024.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0024.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0024.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0024.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0025.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0025.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0025.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0025.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0025.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0025.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0025.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0026.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0026.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0026.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0026.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0026.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0026.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0026.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0027.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0027.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0027.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0027.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0027.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0027.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0027.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0028.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0028.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0028.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0028.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0028.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0028.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0028.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0029.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0029.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0029.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0029.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0029.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0029.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0029.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0030.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0030.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0030.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0030.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0030.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0030.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0030.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0031.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0031.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0031.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0031.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0031.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0031.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0031.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0032.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0032.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0032.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0032.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0032.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0032.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0032.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0033.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0033.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0033.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0033.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0033.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0033.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0033.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0034.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0034.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0034.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0034.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0034.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0034.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0034.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0035.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0035.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0035.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0035.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0035.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0035.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0035.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0036.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0036.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0036.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0036.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0036.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0036.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0036.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0037.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0037.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0037.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0037.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0037.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0037.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0037.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0038.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0038.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0038.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0038.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0038.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0038.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0038.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0039.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0039.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0039.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0039.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0039.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0039.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0039.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0040.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0040.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0040.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0040.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0040.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0040.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0040.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0041.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0041.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0041.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0041.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0041.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0041.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0041.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0042.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0042.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0042.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0042.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0042.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0042.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0042.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0043.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0043.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0043.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0043.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0043.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0043.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0043.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0044.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0044.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0044.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0044.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0044.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0044.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0044.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0045.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0045.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0045.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0045.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0045.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0045.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0045.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0046.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0046.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0046.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0046.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0046.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0046.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0046.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0047.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0047.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0047.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0047.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0047.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0047.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0047.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0048.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0048.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0048.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0048.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0048.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0048.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0048.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0049.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0049.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0049.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0049.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0049.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0049.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0049.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0050.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0050.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0050.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0050.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0050.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0050.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0050.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0051.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0051.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0051.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0051.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0051.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0051.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0051.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0052.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0052.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0052.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0052.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0052.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0052.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0052.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0053.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0053.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0053.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0053.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0053.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0053.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0053.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0054.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0054.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0054.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0054.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0054.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0054.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0054.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0055.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0055.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0055.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0055.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0055.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0055.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0055.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0056.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0056.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0056.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0056.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0056.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0056.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0056.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0057.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0057.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0057.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0057.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0057.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0057.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0057.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0058.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0058.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0058.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0058.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0058.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0058.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0058.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0059.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0059.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0059.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0059.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0059.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0059.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0059.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0060.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0060.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0060.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0060.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0060.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0060.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0060.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0061.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0061.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0061.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0061.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0061.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0061.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0061.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0062.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0062.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0062.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0062.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0062.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0062.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0062.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0063.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0063.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0063.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0063.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0063.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0063.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0063.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0064.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0064.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0064.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0064.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0064.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0064.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0064.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0065.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0065.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0065.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0065.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0065.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0065.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0065.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0066.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0066.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0066.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0066.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0066.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0066.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0066.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0067.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0067.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0067.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0067.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0067.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0067.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0067.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0068.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0068.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0068.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0068.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0068.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0068.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0068.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0069.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0069.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0069.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0069.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0069.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0069.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0069.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0070.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0070.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0070.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0070.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0070.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0070.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0070.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0071.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0071.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0071.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0071.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0071.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0071.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0071.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0072.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0072.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0072.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0072.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0072.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0072.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0072.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0073.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0073.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0073.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0073.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0073.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0073.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0073.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0074.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0074.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0074.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0074.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0074.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0074.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0074.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0075.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0075.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0075.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0075.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0075.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0075.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0075.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0076.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0076.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0076.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0076.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0076.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0076.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0076.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0077.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0077.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0077.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0077.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0077.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0077.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0077.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0078.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0078.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0078.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0078.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0078.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0078.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0078.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0079.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0079.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0079.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0079.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0079.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0079.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0079.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0080.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0080.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0080.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0080.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0080.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0080.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0080.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0081.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0081.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0081.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0081.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0081.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0081.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0081.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0082.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0082.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0082.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0082.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0082.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0082.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0082.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0083.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0083.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0083.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0083.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0083.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0083.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0083.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0084.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0084.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0084.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0084.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0084.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0084.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0084.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0085.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0085.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0085.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0085.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0085.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0085.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0085.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0086.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0086.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0086.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0086.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0086.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0086.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0086.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0087.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0087.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0087.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0087.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0087.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0087.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0087.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0088.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0088.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0088.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0088.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0088.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0088.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0088.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0089.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0089.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0089.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0089.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0089.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0089.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0089.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0090.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0090.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0090.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0090.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0090.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0090.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0090.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0091.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0091.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0091.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0091.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0091.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0091.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0091.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0092.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0092.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0092.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0092.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0092.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0092.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0092.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0093.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0093.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0093.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0093.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0093.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0093.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0093.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0094.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0094.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0094.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0094.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0094.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0094.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0094.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0095.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0095.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0095.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0095.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0095.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0095.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0095.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0096.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0096.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0096.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0096.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0096.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0096.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0096.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0097.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0097.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0097.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0097.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0097.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0097.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0097.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0098.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0098.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0098.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0098.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0098.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0098.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0098.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0099.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0099.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0099.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0099.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0099.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0099.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0099.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0100.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0100.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0100.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0100.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0100.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0100.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0100.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0101.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0101.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0101.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0101.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0101.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0101.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0101.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0102.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0102.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0102.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0102.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0102.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0102.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0102.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0103.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0103.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0103.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0103.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0103.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0103.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0103.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0104.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0104.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0104.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0104.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0104.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0104.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0104.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0105.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0105.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0105.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0105.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0105.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0105.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0105.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0106.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0106.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0106.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0106.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0106.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0106.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0106.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0107.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0107.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0107.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0107.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0107.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0107.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0107.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0108.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0108.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0108.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0108.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0108.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0108.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0108.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0109.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0109.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0109.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0109.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0109.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0109.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0109.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0110.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0110.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0110.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0110.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0110.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0110.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0110.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0111.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0111.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0111.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0111.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0111.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0111.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0111.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0112.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0112.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0112.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0112.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0112.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0112.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0112.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0113.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0113.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0113.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0113.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0113.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0113.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0113.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0114.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0114.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0114.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0114.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0114.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0114.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0114.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0115.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0115.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0115.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0115.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0115.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0115.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0115.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0116.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0116.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0116.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0116.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0116.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0116.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0116.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0117.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0117.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0117.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0117.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0117.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0117.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0117.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0118.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0118.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0118.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0118.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0118.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0118.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0118.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0119.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0119.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0119.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0119.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0119.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0119.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0119.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0120.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0120.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0120.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0120.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0120.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0120.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0120.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0121.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0121.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0121.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0121.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0121.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0121.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0121.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0122.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0122.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0122.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0122.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0122.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0122.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0122.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0123.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0123.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0123.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0123.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0123.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0123.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0123.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0124.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0124.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0124.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0124.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0124.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0124.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0124.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0125.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0125.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0125.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0125.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0125.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0125.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0125.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0126.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0126.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0126.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0126.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0126.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0126.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0126.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0127.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0127.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0127.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0127.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0127.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0127.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0127.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0128.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0128.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0128.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0128.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0128.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0128.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0128.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0129.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0129.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0129.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0129.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0129.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0129.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0129.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0130.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0130.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0130.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0130.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0130.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0130.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0130.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0131.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0131.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0131.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0131.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0131.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0131.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0131.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0132.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0132.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0132.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0132.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0132.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0132.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0132.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0133.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0133.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0133.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0133.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0133.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0133.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0133.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0134.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0134.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0134.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0134.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0134.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0134.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0134.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0135.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0135.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0135.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0135.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0135.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0135.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0135.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0136.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0136.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0136.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0136.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0136.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0136.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0136.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0137.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0137.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0137.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0137.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0137.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0137.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0137.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0138.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0138.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0138.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0138.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0138.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0138.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0138.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0139.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0139.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0139.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0139.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0139.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0139.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0139.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0140.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0140.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0140.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0140.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0140.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0140.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0140.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0141.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0141.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0141.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0141.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0141.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0141.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0141.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0142.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0142.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0142.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0142.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0142.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0142.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0142.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0143.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0143.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0143.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0143.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0143.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0143.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0143.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0144.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0144.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0144.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0144.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0144.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0144.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0144.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0145.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0145.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0145.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0145.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0145.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0145.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0145.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0146.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0146.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0146.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0146.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0146.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0146.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0146.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0147.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0147.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0147.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0147.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0147.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0147.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0147.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0148.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0148.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0148.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0148.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0148.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0148.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0148.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0149.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0149.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0149.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0149.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0149.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0149.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0149.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0150.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0150.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0150.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0150.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0150.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0150.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0150.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0151.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0151.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0151.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0151.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0151.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0151.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0151.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0152.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0152.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0152.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0152.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0152.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0152.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0152.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0153.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0153.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0153.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0153.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0153.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0153.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0153.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0154.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0154.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0154.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0154.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0154.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0154.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0154.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0155.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0155.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0155.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0155.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0155.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0155.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0155.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0156.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0156.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0156.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0156.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0156.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0156.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0156.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0157.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0157.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0157.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0157.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0157.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0157.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0157.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0158.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0158.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0158.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0158.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0158.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0158.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0158.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0159.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0159.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0159.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0159.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0159.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0159.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0159.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0160.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0160.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0160.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0160.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0160.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0160.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0160.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0161.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0161.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0161.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0161.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0161.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0161.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0161.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0162.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0162.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0162.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0162.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0162.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0162.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0162.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0163.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0163.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0163.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0163.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0163.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0163.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0163.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0164.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0164.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0164.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0164.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0164.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0164.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0164.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0165.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0165.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0165.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0165.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0165.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0165.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0165.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0166.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0166.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0166.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0166.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0166.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0166.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0166.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0167.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0167.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0167.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0167.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0167.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0167.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0167.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0168.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0168.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0168.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0168.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0168.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0168.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0168.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0169.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0169.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0169.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0169.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0169.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0169.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0169.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0170.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0170.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0170.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0170.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0170.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0170.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0170.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0171.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0171.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0171.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0171.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0171.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0171.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0171.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0172.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0172.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0172.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0172.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0172.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0172.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0172.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0173.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0173.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0173.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0173.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0173.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0173.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0173.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0174.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0174.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0174.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0174.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0174.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0174.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0174.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0175.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0175.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0175.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0175.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0175.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0175.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0175.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0176.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0176.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0176.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0176.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0176.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0176.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0176.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0177.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0177.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0177.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0177.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0177.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0177.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0177.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0178.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0178.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0178.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0178.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0178.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0178.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0178.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0179.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0179.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0179.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0179.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0179.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0179.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0179.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0180.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0180.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0180.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0180.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0180.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0180.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0180.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0181.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0181.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0181.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0181.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0181.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0181.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0181.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0182.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0182.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0182.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0182.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0182.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0182.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0182.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0183.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0183.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0183.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0183.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0183.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0183.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0183.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0184.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0184.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0184.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0184.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0184.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0184.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0184.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0185.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0185.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0185.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0185.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0185.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0185.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0185.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0186.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0186.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0186.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0186.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0186.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0186.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0186.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0187.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0187.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0187.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0187.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0187.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0187.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0187.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0188.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0188.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0188.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0188.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0188.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0188.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0188.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0189.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0189.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0189.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0189.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0189.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0189.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0189.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0190.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0190.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0190.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0190.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0190.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0190.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0190.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0191.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0191.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0191.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0191.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0191.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0191.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0191.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0192.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0192.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0192.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0192.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0192.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0192.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0192.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0193.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0193.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0193.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0193.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0193.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0193.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0193.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0194.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0194.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0194.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0194.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0194.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0194.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0194.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0195.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0195.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0195.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0195.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0195.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0195.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0195.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0196.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0196.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0196.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0196.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0196.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0196.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0196.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0197.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0197.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0197.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0197.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0197.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0197.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0197.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0198.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0198.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0198.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0198.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0198.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0198.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0198.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0199.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0199.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0199.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0199.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0199.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0199.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0199.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0200.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0200.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0200.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0200.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0200.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0200.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0200.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0201.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0201.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0201.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0201.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0201.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0201.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0201.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0202.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0202.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0202.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0202.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0202.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0202.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0202.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0203.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0203.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0203.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0203.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0203.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0203.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0203.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0204.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0204.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0204.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0204.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0204.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0204.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0204.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0205.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0205.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0205.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0205.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0205.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0205.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0205.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0206.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0206.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0206.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0206.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0206.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0206.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0206.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0207.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0207.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0207.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0207.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0207.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0207.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0207.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0208.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0208.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0208.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0208.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0208.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0208.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0208.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0209.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0209.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0209.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0209.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0209.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0209.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0209.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0210.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0210.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0210.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0210.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0210.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0210.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0210.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0211.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0211.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0211.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0211.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0211.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0211.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0211.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0212.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0212.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0212.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0212.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0212.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0212.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0212.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0213.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0213.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0213.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0213.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0213.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0213.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0213.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0214.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0214.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0214.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0214.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0214.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0214.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0214.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0215.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0215.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0215.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0215.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0215.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0215.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0215.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0216.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0216.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0216.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0216.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0216.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0216.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0216.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0217.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0217.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0217.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0217.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0217.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0217.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0217.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0218.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0218.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0218.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0218.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0218.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0218.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0218.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0219.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0219.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0219.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0219.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0219.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0219.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0219.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0220.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0220.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0220.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0220.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0220.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0220.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0220.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0221.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0221.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0221.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0221.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0221.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0221.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0221.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0222.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0222.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0222.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0222.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0222.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0222.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0222.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0223.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0223.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0223.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0223.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0223.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0223.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0223.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0224.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0224.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0224.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0224.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0224.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0224.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0224.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0225.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0225.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0225.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0225.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0225.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0225.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0225.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0226.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0226.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0226.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0226.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0226.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0226.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0226.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0227.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0227.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0227.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0227.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0227.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0227.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0227.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0228.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0228.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0228.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0228.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0228.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0228.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0228.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0229.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0229.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0229.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0229.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0229.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0229.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0229.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0230.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0230.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0230.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0230.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0230.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0230.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0230.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0231.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0231.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0231.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0231.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0231.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0231.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0231.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0232.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0232.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0232.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0232.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0232.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0232.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0232.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0233.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0233.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0233.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0233.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0233.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0233.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0233.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0234.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0234.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0234.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0234.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0234.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0234.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0234.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0235.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0235.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0235.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0235.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0235.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0235.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0235.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0236.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0236.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0236.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0236.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0236.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0236.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0236.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0237.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0237.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0237.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0237.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0237.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0237.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0237.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0238.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0238.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0238.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0238.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0238.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0238.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0238.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0239.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0239.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0239.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0239.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0239.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0239.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0239.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0240.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0240.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0240.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0240.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0240.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0240.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0240.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0241.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0241.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0241.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0241.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0241.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0241.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0241.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0242.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0242.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0242.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0242.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0242.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0242.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0242.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0243.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0243.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0243.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0243.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0243.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0243.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0243.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0244.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0244.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0244.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0244.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0244.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0244.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0244.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0245.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0245.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0245.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0245.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0245.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0245.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0245.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0246.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0246.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0246.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0246.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0246.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0246.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0246.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0247.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0247.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0247.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0247.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0247.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0247.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0247.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0248.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0248.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0248.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0248.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0248.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0248.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0248.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0249.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0249.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0249.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0249.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0249.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0249.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0249.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0250.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0250.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0250.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0250.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0250.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0250.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0250.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0251.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0251.log +vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0251.log
sed -i '/A read was perfor/d' ./case/small_datacount_log/case0251.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0251.log
sed -i '/If BWEB/d' ./case/small_datacount_log/case0251.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0251.log
