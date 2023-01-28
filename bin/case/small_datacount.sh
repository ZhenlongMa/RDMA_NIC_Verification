./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0000.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0000.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0000.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0000.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0000.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0000.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0001.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0001.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0001.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0001.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0001.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0001.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0002.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0002.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0002.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0002.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0002.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0002.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0003.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0003.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0003.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0003.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0003.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0003.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0004.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0004.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0004.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0004.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0004.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0004.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0005.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0005.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0005.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0005.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0005.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0005.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0006.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0006.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0006.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0006.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0006.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0006.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0007.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0007.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0007.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0007.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0007.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0007.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0008.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0008.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0008.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0008.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0008.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0008.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0009.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0009.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0009.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0009.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0009.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0009.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0010.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0010.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0010.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0010.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0010.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0010.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0011.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0011.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0011.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0011.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0011.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0011.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0012.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0012.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0012.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0012.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0012.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0012.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0013.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0013.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0013.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0013.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0013.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0013.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0014.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0014.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0014.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0014.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0014.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0014.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0015.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0015.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0015.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0015.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0015.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0015.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0016.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0016.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0016.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0016.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0016.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0016.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0017.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0017.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0017.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0017.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0017.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0017.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0018.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0018.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0018.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0018.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0018.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0018.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0019.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0019.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0019.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0019.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0019.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0019.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0020.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0020.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0020.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0020.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0020.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0020.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0021.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0021.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0021.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0021.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0021.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0021.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0022.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0022.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0022.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0022.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0022.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0022.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0023.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0023.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0023.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0023.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0023.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0023.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0024.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0024.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0024.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0024.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0024.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0024.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0025.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0025.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0025.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0025.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0025.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0025.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0026.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0026.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0026.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0026.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0026.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0026.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0027.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0027.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0027.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0027.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0027.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0027.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0028.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0028.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0028.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0028.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0028.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0028.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0029.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0029.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0029.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0029.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0029.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0029.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0030.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0030.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0030.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0030.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0030.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0030.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0031.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0031.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0031.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0031.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0031.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0031.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0032.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0032.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0032.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0032.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0032.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0032.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0033.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0033.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0033.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0033.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0033.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0033.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0034.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0034.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0034.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0034.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0034.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0034.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0035.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0035.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0035.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0035.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0035.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0035.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0036.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0036.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0036.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0036.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0036.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0036.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0037.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0037.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0037.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0037.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0037.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0037.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0038.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0038.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0038.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0038.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0038.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0038.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0039.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0039.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0039.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0039.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0039.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0039.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0040.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0040.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0040.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0040.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0040.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0040.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0041.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0041.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0041.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0041.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0041.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0041.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0042.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0042.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0042.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0042.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0042.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0042.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0043.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0043.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0043.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0043.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0043.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0043.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0044.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0044.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0044.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0044.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0044.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0044.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0045.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0045.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0045.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0045.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0045.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0045.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0046.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0046.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0046.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0046.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0046.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0046.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0047.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0047.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0047.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0047.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0047.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0047.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0048.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0048.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0048.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0048.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0048.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0048.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0049.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0049.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0049.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0049.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0049.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0049.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0050.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0050.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0050.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0050.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0050.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0050.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0051.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0051.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0051.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0051.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0051.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0051.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0052.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0052.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0052.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0052.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0052.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0052.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0053.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0053.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0053.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0053.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0053.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0053.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0054.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0054.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0054.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0054.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0054.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0054.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0055.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0055.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0055.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0055.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0055.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0055.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0056.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0056.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0056.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0056.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0056.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0056.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0057.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0057.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0057.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0057.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0057.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0057.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0058.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0058.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0058.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0058.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0058.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0058.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0059.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0059.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0059.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0059.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0059.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0059.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0060.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0060.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0060.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0060.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0060.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0060.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0061.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0061.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0061.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0061.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0061.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0061.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0062.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0062.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0062.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0062.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0062.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0062.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0063.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0063.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0063.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0063.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0063.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0063.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0064.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0064.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0064.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0064.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0064.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0064.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0065.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0065.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0065.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0065.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0065.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0065.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0066.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0066.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0066.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0066.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0066.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0066.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0067.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0067.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0067.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0067.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0067.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0067.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0068.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0068.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0068.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0068.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0068.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0068.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0069.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0069.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0069.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0069.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0069.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0069.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0070.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0070.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0070.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0070.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0070.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0070.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0071.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0071.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0071.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0071.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0071.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0071.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0072.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0072.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0072.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0072.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0072.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0072.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0073.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0073.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0073.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0073.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0073.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0073.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0074.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0074.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0074.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0074.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0074.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0074.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0075.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0075.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0075.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0075.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0075.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0075.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0076.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0076.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0076.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0076.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0076.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0076.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0077.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0077.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0077.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0077.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0077.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0077.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0078.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0078.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0078.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0078.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0078.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0078.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0079.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0079.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0079.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0079.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0079.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0079.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0080.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0080.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0080.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0080.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0080.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0080.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0081.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0081.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0081.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0081.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0081.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0081.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0082.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0082.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0082.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0082.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0082.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0082.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0083.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0083.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0083.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0083.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0083.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0083.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0084.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0084.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0084.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0084.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0084.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0084.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0085.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0085.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0085.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0085.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0085.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0085.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0086.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0086.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0086.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0086.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0086.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0086.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0087.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0087.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0087.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0087.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0087.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0087.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0088.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0088.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0088.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0088.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0088.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0088.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0089.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0089.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0089.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0089.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0089.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0089.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0090.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0090.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0090.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0090.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0090.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0090.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0091.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0091.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0091.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0091.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0091.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0091.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0092.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0092.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0092.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0092.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0092.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0092.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0093.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0093.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0093.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0093.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0093.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0093.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0094.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0094.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0094.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0094.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0094.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0094.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0095.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0095.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0095.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0095.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0095.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0095.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0096.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0096.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0096.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0096.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0096.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0096.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0097.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0097.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0097.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0097.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0097.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0097.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0098.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0098.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0098.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0098.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0098.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0098.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0099.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0099.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0099.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0099.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0099.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0099.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0100.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0100.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0100.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0100.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0100.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0100.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0101.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0101.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0101.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0101.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0101.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0101.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0102.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0102.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0102.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0102.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0102.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0102.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0103.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0103.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0103.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0103.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0103.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0103.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0104.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0104.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0104.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0104.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0104.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0104.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0105.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0105.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0105.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0105.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0105.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0105.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0106.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0106.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0106.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0106.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0106.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0106.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0107.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0107.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0107.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0107.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0107.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0107.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0108.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0108.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0108.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0108.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0108.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0108.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0109.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0109.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0109.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0109.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0109.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0109.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0110.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0110.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0110.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0110.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0110.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0110.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0111.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0111.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0111.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0111.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0111.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0111.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0112.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0112.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0112.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0112.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0112.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0112.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0113.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0113.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0113.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0113.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0113.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0113.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0114.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0114.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0114.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0114.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0114.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0114.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0115.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0115.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0115.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0115.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0115.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0115.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0116.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0116.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0116.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0116.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0116.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0116.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0117.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0117.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0117.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0117.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0117.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0117.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0118.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0118.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0118.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0118.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0118.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0118.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0119.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0119.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0119.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0119.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0119.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0119.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0120.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0120.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0120.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0120.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0120.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0120.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0121.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0121.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0121.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0121.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0121.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0121.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0122.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0122.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0122.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0122.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0122.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0122.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0123.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0123.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0123.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0123.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0123.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0123.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0124.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0124.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0124.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0124.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0124.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0124.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0125.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0125.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0125.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0125.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0125.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0125.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0126.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0126.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0126.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0126.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0126.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0126.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0127.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0127.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0127.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0127.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0127.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0127.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0128.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0128.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0128.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0128.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0128.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0128.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0129.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0129.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0129.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0129.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0129.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0129.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0130.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0130.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0130.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0130.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0130.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0130.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0131.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0131.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0131.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0131.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0131.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0131.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0132.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0132.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0132.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0132.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0132.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0132.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0133.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0133.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0133.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0133.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0133.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0133.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0134.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0134.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0134.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0134.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0134.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0134.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0135.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0135.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0135.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0135.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0135.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0135.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0136.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0136.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0136.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0136.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0136.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0136.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0137.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0137.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0137.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0137.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0137.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0137.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0138.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0138.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0138.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0138.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0138.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0138.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0139.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0139.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0139.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0139.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0139.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0139.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0140.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0140.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0140.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0140.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0140.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0140.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0141.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0141.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0141.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0141.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0141.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0141.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0142.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0142.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0142.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0142.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0142.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0142.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0143.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0143.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0143.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0143.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0143.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0143.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0144.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0144.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0144.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0144.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0144.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0144.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0145.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0145.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0145.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0145.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0145.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0145.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0146.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0146.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0146.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0146.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0146.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0146.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0147.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0147.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0147.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0147.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0147.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0147.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0148.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0148.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0148.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0148.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0148.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0148.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0149.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0149.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0149.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0149.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0149.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0149.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0150.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0150.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0150.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0150.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0150.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0150.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0151.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0151.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0151.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0151.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0151.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0151.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0152.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0152.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0152.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0152.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0152.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0152.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0153.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0153.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0153.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0153.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0153.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0153.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0154.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0154.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0154.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0154.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0154.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0154.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0155.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0155.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0155.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0155.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0155.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0155.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0156.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0156.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0156.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0156.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0156.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0156.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0157.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0157.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0157.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0157.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0157.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0157.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0158.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0158.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0158.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0158.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0158.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0158.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0159.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0159.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0159.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0159.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0159.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0159.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0160.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0160.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0160.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0160.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0160.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0160.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0161.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0161.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0161.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0161.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0161.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0161.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0162.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0162.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0162.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0162.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0162.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0162.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0163.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0163.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0163.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0163.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0163.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0163.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0164.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0164.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0164.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0164.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0164.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0164.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0165.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0165.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0165.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0165.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0165.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0165.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0166.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0166.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0166.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0166.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0166.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0166.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0167.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0167.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0167.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0167.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0167.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0167.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0168.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0168.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0168.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0168.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0168.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0168.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0169.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0169.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0169.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0169.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0169.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0169.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0170.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0170.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0170.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0170.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0170.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0170.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0171.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0171.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0171.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0171.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0171.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0171.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0172.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0172.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0172.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0172.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0172.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0172.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0173.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0173.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0173.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0173.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0173.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0173.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0174.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0174.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0174.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0174.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0174.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0174.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0175.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0175.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0175.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0175.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0175.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0175.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0176.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0176.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0176.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0176.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0176.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0176.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0177.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0177.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0177.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0177.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0177.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0177.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0178.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0178.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0178.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0178.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0178.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0178.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0179.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0179.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0179.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0179.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0179.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0179.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0180.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0180.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0180.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0180.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0180.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0180.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0181.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0181.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0181.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0181.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0181.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0181.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0182.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0182.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0182.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0182.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0182.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0182.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0183.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0183.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0183.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0183.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0183.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0183.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0184.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0184.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0184.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0184.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0184.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0184.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0185.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0185.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0185.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0185.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0185.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0185.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0186.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0186.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0186.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0186.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0186.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0186.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0187.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0187.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0187.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0187.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0187.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0187.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0188.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0188.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0188.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0188.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0188.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0188.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0189.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0189.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0189.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0189.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0189.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0189.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0190.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0190.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0190.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0190.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0190.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0190.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0191.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0191.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0191.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0191.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0191.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0191.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0192.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0192.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0192.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0192.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0192.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0192.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0193.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0193.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0193.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0193.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0193.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0193.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0194.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0194.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0194.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0194.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0194.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0194.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0195.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0195.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0195.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0195.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0195.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0195.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0196.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0196.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0196.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0196.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0196.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0196.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0197.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0197.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0197.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0197.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0197.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0197.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0198.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0198.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0198.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0198.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0198.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0198.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0199.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0199.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0199.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0199.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0199.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0199.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0200.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0200.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0200.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0200.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0200.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0200.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0201.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0201.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0201.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0201.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0201.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0201.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0202.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0202.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0202.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0202.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0202.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0202.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0203.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0203.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0203.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0203.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0203.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0203.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0204.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0204.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0204.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0204.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0204.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0204.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0205.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0205.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0205.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0205.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0205.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0205.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0206.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0206.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0206.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0206.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0206.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0206.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0207.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0207.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0207.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0207.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0207.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0207.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0208.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0208.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0208.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0208.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0208.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0208.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0209.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0209.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0209.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0209.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0209.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0209.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0210.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0210.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0210.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0210.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0210.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0210.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0211.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0211.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0211.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0211.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0211.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0211.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0212.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0212.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0212.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0212.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0212.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0212.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0213.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0213.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0213.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0213.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0213.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0213.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0214.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0214.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0214.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0214.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0214.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0214.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0215.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0215.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0215.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0215.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0215.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0215.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0216.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0216.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0216.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0216.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0216.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0216.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0217.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0217.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0217.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0217.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0217.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0217.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0218.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0218.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0218.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0218.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0218.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0218.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0219.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0219.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0219.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0219.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0219.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0219.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0220.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0220.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0220.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0220.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0220.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0220.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0221.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0221.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0221.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0221.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0221.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0221.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0222.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0222.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0222.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0222.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0222.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0222.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0223.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0223.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0223.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0223.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0223.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0223.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0224.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0224.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0224.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0224.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0224.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0224.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0225.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0225.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0225.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0225.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0225.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0225.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0226.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0226.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0226.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0226.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0226.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0226.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0227.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0227.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0227.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0227.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0227.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0227.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0228.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0228.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0228.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0228.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0228.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0228.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0229.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0229.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0229.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0229.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0229.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0229.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0230.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0230.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0230.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0230.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0230.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0230.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0231.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0231.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0231.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0231.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0231.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0231.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0232.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0232.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0232.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0232.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0232.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0232.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0233.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0233.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0233.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0233.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0233.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0233.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0234.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0234.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0234.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0234.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0234.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0234.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0235.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0235.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0235.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0235.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0235.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0235.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0236.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0236.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0236.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0236.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0236.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0236.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0237.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0237.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0237.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0237.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0237.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0237.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0238.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0238.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0238.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0238.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0238.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0238.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0239.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0239.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0239.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0239.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0239.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0239.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0240.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0240.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0240.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0240.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0240.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0240.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0241.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0241.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0241.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0241.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0241.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0241.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0242.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0242.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0242.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0242.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0242.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0242.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0243.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0243.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0243.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0243.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0243.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0243.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0244.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0244.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0244.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0244.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0244.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0244.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0245.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0245.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0245.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0245.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0245.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0245.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0246.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0246.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0246.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0246.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0246.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0246.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0247.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0247.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0247.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0247.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0247.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0247.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0248.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0248.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0248.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0248.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0248.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0248.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0249.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0249.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0249.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0249.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0249.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0249.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0250.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0250.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0250.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0250.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0250.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0250.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0251.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0251.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0251.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0251.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0251.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0251.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0252.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0252.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0252.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0252.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0252.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0252.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0253.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0253.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0253.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0253.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0253.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0253.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0254.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0254.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0254.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0254.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0254.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0254.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0255.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0255.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0255.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0255.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0255.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0255.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0256.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0256.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0256.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0256.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0256.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0256.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0257.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0257.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0257.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0257.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0257.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0257.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0258.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0258.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0258.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0258.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0258.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0258.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0259.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0259.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0259.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0259.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0259.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0259.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0260.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0260.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0260.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0260.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0260.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0260.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0261.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0261.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0261.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0261.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0261.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0261.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0262.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0262.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0262.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0262.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0262.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0262.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0263.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0263.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0263.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0263.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0263.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0263.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0264.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0264.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0264.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0264.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0264.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0264.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0265.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0265.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0265.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0265.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0265.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0265.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0266.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0266.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0266.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0266.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0266.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0266.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0267.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0267.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0267.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0267.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0267.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0267.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0268.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0268.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0268.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0268.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0268.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0268.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0269.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0269.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0269.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0269.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0269.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0269.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0270.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0270.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0270.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0270.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0270.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0270.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0271.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0271.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0271.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0271.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0271.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0271.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0272.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0272.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0272.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0272.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0272.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0272.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0273.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0273.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0273.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0273.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0273.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0273.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0274.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0274.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0274.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0274.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0274.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0274.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0275.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0275.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0275.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0275.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0275.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0275.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0276.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0276.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0276.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0276.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0276.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0276.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0277.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0277.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0277.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0277.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0277.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0277.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0278.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0278.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0278.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0278.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0278.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0278.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0279.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0279.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0279.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0279.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0279.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0279.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0280.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0280.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0280.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0280.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0280.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0280.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0281.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0281.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0281.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0281.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0281.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0281.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0282.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0282.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0282.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0282.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0282.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0282.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0283.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0283.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0283.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0283.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0283.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0283.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0284.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0284.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0284.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0284.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0284.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0284.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0285.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0285.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0285.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0285.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0285.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0285.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0286.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0286.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0286.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0286.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0286.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0286.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0287.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0287.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0287.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0287.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0287.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0287.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0288.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0288.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0288.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0288.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0288.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0288.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0289.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0289.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0289.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0289.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0289.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0289.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0290.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0290.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0290.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0290.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0290.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0290.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0291.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0291.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0291.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0291.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0291.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0291.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0292.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0292.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0292.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0292.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0292.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0292.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0293.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0293.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0293.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0293.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0293.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0293.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0294.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0294.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0294.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0294.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0294.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0294.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0295.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0295.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0295.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0295.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0295.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0295.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0296.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0296.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0296.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0296.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0296.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0296.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0297.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0297.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0297.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0297.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0297.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0297.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0298.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0298.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0298.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0298.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0298.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0298.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0299.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0299.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0299.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0299.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0299.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0299.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0300.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0300.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0300.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0300.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0300.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0300.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0301.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0301.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0301.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0301.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0301.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0301.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0302.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0302.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0302.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0302.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0302.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0302.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0303.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0303.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0303.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0303.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0303.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0303.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0304.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0304.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0304.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0304.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0304.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0304.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0305.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0305.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0305.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0305.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0305.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0305.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0306.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0306.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0306.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0306.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0306.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0306.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0307.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0307.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0307.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0307.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0307.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0307.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0308.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0308.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0308.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0308.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0308.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0308.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0309.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0309.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0309.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0309.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0309.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0309.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0310.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0310.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0310.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0310.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0310.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0310.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0311.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0311.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0311.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0311.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0311.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0311.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0312.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0312.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0312.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0312.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0312.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0312.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0313.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0313.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0313.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0313.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0313.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0313.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0314.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0314.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0314.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0314.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0314.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0314.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0315.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0315.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0315.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0315.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0315.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0315.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0316.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0316.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0316.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0316.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0316.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0316.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0317.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0317.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0317.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0317.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0317.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0317.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0318.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0318.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0318.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0318.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0318.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0318.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0319.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0319.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0319.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0319.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0319.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0319.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0320.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0320.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0320.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0320.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0320.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0320.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0321.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0321.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0321.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0321.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0321.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0321.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0322.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0322.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0322.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0322.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0322.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0322.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0323.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0323.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0323.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0323.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0323.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0323.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0324.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0324.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0324.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0324.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0324.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0324.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0325.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0325.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0325.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0325.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0325.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0325.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0326.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0326.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0326.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0326.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0326.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0326.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0327.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0327.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0327.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0327.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0327.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0327.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0328.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0328.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0328.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0328.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0328.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0328.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0329.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0329.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0329.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0329.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0329.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0329.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0330.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0330.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0330.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0330.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0330.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0330.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0331.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0331.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0331.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0331.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0331.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0331.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0332.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0332.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0332.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0332.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0332.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0332.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0333.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0333.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0333.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0333.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0333.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0333.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0334.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0334.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0334.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0334.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0334.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0334.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0335.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0335.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0335.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0335.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0335.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0335.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0336.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0336.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0336.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0336.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0336.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0336.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0337.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0337.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0337.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0337.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0337.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0337.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0338.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0338.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0338.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0338.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0338.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0338.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0339.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0339.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0339.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0339.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0339.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0339.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0340.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0340.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0340.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0340.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0340.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0340.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0341.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0341.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0341.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0341.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0341.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0341.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0342.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0342.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0342.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0342.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0342.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0342.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0343.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0343.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0343.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0343.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0343.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0343.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0344.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0344.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0344.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0344.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0344.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0344.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0345.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0345.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0345.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0345.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0345.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0345.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0346.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0346.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0346.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0346.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0346.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0346.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0347.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0347.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0347.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0347.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0347.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0347.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0348.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0348.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0348.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0348.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0348.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0348.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0349.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0349.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0349.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0349.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0349.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0349.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0350.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0350.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0350.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0350.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0350.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0350.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0351.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0351.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0351.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0351.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0351.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0351.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0352.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0352.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0352.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0352.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0352.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0352.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0353.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0353.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0353.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0353.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0353.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0353.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0354.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0354.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0354.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0354.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0354.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0354.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0355.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0355.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0355.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0355.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0355.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0355.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0356.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0356.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0356.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0356.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0356.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0356.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0357.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0357.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0357.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0357.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0357.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0357.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0358.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0358.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0358.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0358.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0358.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0358.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0359.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0359.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0359.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0359.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0359.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0359.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0360.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0360.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0360.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0360.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0360.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0360.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0361.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0361.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0361.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0361.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0361.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0361.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0362.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0362.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0362.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0362.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0362.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0362.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0363.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0363.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0363.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0363.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0363.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0363.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0364.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0364.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0364.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0364.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0364.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0364.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0365.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0365.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0365.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0365.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0365.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0365.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0366.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0366.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0366.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0366.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0366.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0366.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0367.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0367.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0367.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0367.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0367.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0367.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0368.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0368.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0368.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0368.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0368.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0368.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0369.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0369.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0369.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0369.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0369.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0369.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0370.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0370.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0370.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0370.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0370.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0370.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0371.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0371.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0371.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0371.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0371.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0371.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0372.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0372.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0372.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0372.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0372.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0372.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0373.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0373.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0373.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0373.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0373.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0373.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0374.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0374.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0374.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0374.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0374.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0374.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0375.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0375.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0375.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0375.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0375.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0375.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0376.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0376.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0376.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0376.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0376.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0376.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0377.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0377.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0377.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0377.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0377.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0377.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0378.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0378.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0378.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0378.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0378.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0378.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0379.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0379.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0379.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0379.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0379.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0379.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0380.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0380.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0380.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0380.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0380.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0380.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0381.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0381.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0381.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0381.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0381.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0381.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0382.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0382.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0382.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0382.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0382.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0382.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0383.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0383.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0383.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0383.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0383.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0383.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0384.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0384.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0384.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0384.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0384.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0384.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0385.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0385.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0385.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0385.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0385.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0385.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0386.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0386.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0386.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0386.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0386.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0386.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0387.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0387.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0387.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0387.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0387.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0387.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0388.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0388.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0388.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0388.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0388.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0388.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0389.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0389.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0389.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0389.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0389.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0389.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0390.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0390.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0390.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0390.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0390.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0390.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0391.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0391.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0391.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0391.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0391.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0391.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0392.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0392.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0392.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0392.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0392.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0392.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0393.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0393.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0393.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0393.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0393.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0393.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0394.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0394.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0394.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0394.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0394.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0394.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0395.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0395.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0395.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0395.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0395.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0395.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0396.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0396.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0396.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0396.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0396.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0396.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0397.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0397.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0397.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0397.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0397.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0397.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0398.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0398.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0398.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0398.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0398.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0398.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0399.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0399.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0399.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0399.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0399.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0399.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0400.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0400.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0400.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0400.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0400.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0400.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0401.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0401.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0401.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0401.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0401.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0401.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0402.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0402.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0402.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0402.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0402.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0402.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0403.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0403.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0403.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0403.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0403.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0403.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0404.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0404.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0404.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0404.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0404.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0404.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0405.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0405.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0405.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0405.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0405.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0405.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0406.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0406.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0406.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0406.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0406.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0406.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0407.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0407.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0407.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0407.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0407.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0407.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0408.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0408.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0408.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0408.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0408.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0408.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0409.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0409.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0409.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0409.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0409.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0409.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0410.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0410.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0410.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0410.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0410.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0410.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0411.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0411.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0411.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0411.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0411.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0411.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0412.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0412.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0412.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0412.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0412.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0412.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0413.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0413.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0413.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0413.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0413.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0413.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0414.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0414.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0414.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0414.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0414.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0414.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0415.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0415.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0415.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0415.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0415.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0415.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0416.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0416.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0416.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0416.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0416.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0416.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0417.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0417.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0417.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0417.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0417.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0417.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0418.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0418.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0418.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0418.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0418.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0418.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0419.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0419.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0419.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0419.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0419.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0419.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0420.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0420.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0420.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0420.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0420.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0420.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0421.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0421.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0421.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0421.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0421.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0421.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0422.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0422.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0422.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0422.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0422.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0422.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0423.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0423.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0423.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0423.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0423.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0423.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0424.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0424.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0424.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0424.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0424.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0424.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0425.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0425.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0425.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0425.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0425.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0425.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0426.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0426.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0426.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0426.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0426.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0426.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0427.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0427.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0427.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0427.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0427.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0427.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0428.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0428.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0428.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0428.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0428.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0428.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0429.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0429.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0429.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0429.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0429.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0429.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0430.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0430.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0430.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0430.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0430.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0430.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0431.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0431.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0431.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0431.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0431.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0431.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0432.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0432.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0432.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0432.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0432.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0432.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0433.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0433.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0433.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0433.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0433.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0433.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0434.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0434.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0434.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0434.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0434.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0434.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0435.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0435.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0435.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0435.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0435.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0435.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0436.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0436.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0436.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0436.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0436.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0436.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0437.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0437.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0437.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0437.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0437.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0437.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0438.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0438.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0438.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0438.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0438.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0438.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0439.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0439.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0439.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0439.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0439.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0439.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0440.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0440.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0440.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0440.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0440.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0440.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0441.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0441.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0441.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0441.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0441.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0441.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0442.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0442.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0442.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0442.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0442.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0442.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0443.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0443.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0443.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0443.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0443.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0443.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0444.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0444.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0444.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0444.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0444.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0444.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0445.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0445.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0445.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0445.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0445.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0445.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0446.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0446.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0446.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0446.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0446.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0446.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0447.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0447.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0447.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0447.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0447.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0447.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0448.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0448.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0448.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0448.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0448.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0448.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0449.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0449.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0449.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0449.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0449.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0449.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0450.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0450.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0450.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0450.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0450.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0450.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0451.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0451.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0451.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0451.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0451.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0451.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0452.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0452.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0452.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0452.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0452.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0452.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0453.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0453.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0453.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0453.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0453.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0453.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0454.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0454.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0454.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0454.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0454.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0454.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0455.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0455.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0455.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0455.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0455.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0455.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0456.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0456.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0456.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0456.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0456.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0456.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0457.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0457.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0457.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0457.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0457.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0457.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0458.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0458.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0458.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0458.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0458.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0458.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0459.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0459.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0459.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0459.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0459.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0459.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0460.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0460.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0460.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0460.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0460.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0460.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0461.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0461.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0461.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0461.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0461.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0461.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0462.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0462.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0462.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0462.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0462.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0462.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0463.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0463.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0463.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0463.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0463.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0463.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0464.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0464.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0464.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0464.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0464.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0464.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0465.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0465.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0465.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0465.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0465.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0465.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0466.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0466.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0466.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0466.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0466.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0466.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0467.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0467.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0467.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0467.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0467.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0467.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0468.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0468.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0468.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0468.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0468.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0468.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0469.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0469.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0469.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0469.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0469.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0469.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0470.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0470.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0470.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0470.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0470.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0470.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0471.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0471.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0471.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0471.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0471.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0471.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0472.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0472.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0472.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0472.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0472.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0472.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0473.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0473.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0473.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0473.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0473.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0473.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0474.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0474.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0474.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0474.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0474.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0474.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0475.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0475.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0475.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0475.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0475.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0475.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0476.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0476.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0476.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0476.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0476.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0476.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0477.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0477.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0477.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0477.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0477.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0477.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0478.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0478.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0478.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0478.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0478.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0478.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0479.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0479.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0479.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0479.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0479.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0479.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0480.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0480.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0480.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0480.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0480.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0480.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0481.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0481.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0481.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0481.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0481.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0481.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0482.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0482.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0482.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0482.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0482.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0482.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0483.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0483.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0483.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0483.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0483.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0483.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0484.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0484.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0484.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0484.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0484.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0484.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0485.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0485.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0485.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0485.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0485.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0485.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0486.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0486.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0486.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0486.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0486.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0486.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0487.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0487.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0487.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0487.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0487.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0487.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0488.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0488.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0488.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0488.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0488.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0488.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0489.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0489.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0489.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0489.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0489.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0489.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0490.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0490.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0490.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0490.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0490.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0490.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0491.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0491.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0491.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0491.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0491.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0491.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0492.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0492.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0492.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0492.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0492.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0492.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0493.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0493.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0493.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0493.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0493.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0493.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0494.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0494.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0494.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0494.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0494.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0494.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0495.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0495.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0495.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0495.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0495.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0495.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0496.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0496.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0496.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0496.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0496.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0496.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0497.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0497.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0497.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0497.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0497.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0497.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0498.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0498.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0498.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0498.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0498.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0498.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0499.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0499.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0499.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0499.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0499.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0499.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0500.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0500.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0500.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0500.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0500.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0500.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0501.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0501.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0501.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0501.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0501.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0501.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0502.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0502.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0502.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0502.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0502.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0502.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0503.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0503.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0503.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0503.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0503.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0503.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0504.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0504.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0504.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0504.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0504.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0504.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0505.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0505.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0505.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0505.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0505.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0505.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0506.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0506.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0506.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0506.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0506.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0506.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0507.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0507.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0507.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0507.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0507.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0507.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0508.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0508.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0508.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0508.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0508.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0508.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0509.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0509.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0509.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0509.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0509.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0509.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0510.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0510.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0510.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0510.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0510.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0510.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0511.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0511.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0511.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0511.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0511.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0511.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0512.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0512.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0512.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0512.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0512.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0512.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0513.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0513.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0513.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0513.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0513.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0513.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0514.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0514.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0514.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0514.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0514.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0514.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0515.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0515.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0515.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0515.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0515.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0515.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0516.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0516.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0516.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0516.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0516.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0516.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0517.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0517.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0517.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0517.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0517.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0517.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0518.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0518.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0518.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0518.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0518.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0518.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0519.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0519.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0519.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0519.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0519.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0519.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0520.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0520.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0520.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0520.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0520.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0520.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0521.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0521.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0521.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0521.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0521.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0521.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0522.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0522.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0522.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0522.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0522.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0522.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0523.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0523.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0523.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0523.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0523.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0523.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0524.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0524.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0524.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0524.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0524.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0524.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0525.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0525.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0525.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0525.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0525.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0525.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0526.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0526.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0526.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0526.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0526.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0526.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0527.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0527.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0527.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0527.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0527.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0527.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0528.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0528.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0528.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0528.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0528.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0528.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0529.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0529.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0529.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0529.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0529.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0529.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0530.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0530.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0530.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0530.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0530.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0530.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0531.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0531.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0531.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0531.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0531.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0531.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0532.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0532.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0532.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0532.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0532.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0532.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0533.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0533.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0533.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0533.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0533.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0533.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0534.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0534.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0534.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0534.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0534.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0534.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0535.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0535.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0535.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0535.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0535.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0535.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0536.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0536.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0536.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0536.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0536.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0536.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0537.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0537.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0537.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0537.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0537.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0537.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0538.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0538.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0538.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0538.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0538.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0538.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0539.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0539.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0539.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0539.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0539.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0539.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0540.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0540.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0540.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0540.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0540.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0540.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0541.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0541.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0541.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0541.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0541.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0541.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0542.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0542.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0542.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0542.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0542.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0542.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0543.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0543.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0543.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0543.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0543.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0543.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0544.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0544.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0544.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0544.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0544.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0544.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0545.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0545.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0545.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0545.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0545.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0545.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0546.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0546.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0546.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0546.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0546.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0546.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0547.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0547.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0547.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0547.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0547.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0547.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0548.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0548.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0548.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0548.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0548.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0548.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0549.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0549.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0549.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0549.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0549.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0549.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0550.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0550.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0550.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0550.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0550.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0550.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0551.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0551.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0551.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0551.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0551.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0551.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0552.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0552.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0552.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0552.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0552.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0552.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0553.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0553.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0553.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0553.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0553.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0553.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0554.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0554.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0554.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0554.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0554.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0554.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0555.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0555.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0555.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0555.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0555.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0555.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0556.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0556.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0556.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0556.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0556.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0556.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0557.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0557.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0557.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0557.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0557.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0557.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0558.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0558.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0558.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0558.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0558.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0558.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0559.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0559.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0559.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0559.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0559.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0559.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0560.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0560.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0560.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0560.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0560.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0560.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0561.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0561.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0561.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0561.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0561.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0561.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0562.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0562.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0562.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0562.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0562.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0562.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0563.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0563.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0563.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0563.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0563.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0563.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0564.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0564.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0564.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0564.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0564.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0564.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0565.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0565.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0565.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0565.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0565.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0565.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0566.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0566.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0566.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0566.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0566.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0566.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0567.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0567.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0567.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0567.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0567.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0567.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0568.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0568.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0568.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0568.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0568.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0568.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0569.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0569.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0569.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0569.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0569.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0569.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0570.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0570.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0570.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0570.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0570.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0570.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0571.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0571.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0571.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0571.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0571.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0571.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0572.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0572.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0572.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0572.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0572.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0572.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0573.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0573.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0573.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0573.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0573.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0573.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0574.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0574.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0574.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0574.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0574.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0574.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0575.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0575.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0575.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0575.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0575.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0575.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0576.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0576.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0576.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0576.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0576.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0576.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0577.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0577.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0577.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0577.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0577.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0577.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0578.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0578.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0578.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0578.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0578.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0578.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0579.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0579.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0579.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0579.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0579.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0579.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0580.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0580.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0580.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0580.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0580.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0580.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0581.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0581.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0581.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0581.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0581.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0581.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0582.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0582.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0582.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0582.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0582.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0582.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0583.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0583.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0583.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0583.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0583.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0583.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0584.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0584.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0584.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0584.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0584.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0584.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0585.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0585.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0585.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0585.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0585.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0585.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0586.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0586.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0586.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0586.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0586.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0586.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0587.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0587.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0587.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0587.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0587.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0587.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0588.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0588.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0588.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0588.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0588.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0588.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0589.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0589.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0589.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0589.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0589.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0589.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0590.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0590.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0590.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0590.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0590.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0590.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0591.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0591.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0591.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0591.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0591.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0591.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0592.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0592.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0592.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0592.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0592.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0592.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0593.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0593.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0593.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0593.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0593.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0593.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0594.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0594.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0594.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0594.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0594.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0594.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0595.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0595.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0595.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0595.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0595.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0595.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0596.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0596.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0596.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0596.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0596.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0596.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0597.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0597.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0597.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0597.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0597.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0597.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0598.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0598.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0598.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0598.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0598.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0598.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0599.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0599.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0599.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0599.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0599.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0599.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0600.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0600.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0600.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0600.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0600.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0600.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0601.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0601.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0601.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0601.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0601.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0601.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0602.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0602.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0602.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0602.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0602.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0602.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0603.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0603.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0603.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0603.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0603.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0603.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0604.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0604.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0604.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0604.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0604.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0604.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0605.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0605.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0605.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0605.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0605.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0605.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0606.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0606.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0606.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0606.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0606.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0606.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0607.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0607.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0607.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0607.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0607.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0607.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0608.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0608.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0608.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0608.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0608.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0608.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0609.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0609.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0609.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0609.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0609.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0609.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0610.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0610.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0610.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0610.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0610.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0610.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0611.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=0 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0611.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0611.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0611.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0611.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0611.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0612.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0612.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0612.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0612.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0612.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0612.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0613.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0613.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0613.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0613.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0613.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0613.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0614.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0614.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0614.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0614.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0614.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0614.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0615.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0615.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0615.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0615.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0615.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0615.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0616.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0616.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0616.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0616.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0616.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0616.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0617.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0617.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0617.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0617.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0617.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0617.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0618.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0618.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0618.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0618.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0618.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0618.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0619.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0619.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0619.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0619.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0619.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0619.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0620.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0620.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0620.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0620.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0620.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0620.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0621.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0621.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0621.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0621.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0621.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0621.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0622.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0622.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0622.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0622.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0622.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0622.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0623.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0623.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0623.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0623.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0623.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0623.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0624.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0624.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0624.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0624.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0624.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0624.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0625.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0625.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0625.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0625.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0625.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0625.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0626.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0626.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0626.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0626.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0626.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0626.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0627.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0627.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0627.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0627.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0627.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0627.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0628.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0628.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0628.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0628.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0628.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0628.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0629.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0629.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0629.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0629.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0629.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0629.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0630.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0630.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0630.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0630.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0630.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0630.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0631.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0631.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0631.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0631.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0631.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0631.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0632.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0632.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0632.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0632.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0632.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0632.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0633.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0633.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0633.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0633.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0633.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0633.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0634.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0634.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0634.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0634.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0634.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0634.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0635.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0635.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0635.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0635.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0635.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0635.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0636.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0636.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0636.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0636.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0636.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0636.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0637.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0637.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0637.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0637.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0637.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0637.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0638.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0638.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0638.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0638.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0638.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0638.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0639.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0639.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0639.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0639.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0639.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0639.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0640.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0640.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0640.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0640.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0640.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0640.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0641.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0641.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0641.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0641.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0641.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0641.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0642.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0642.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0642.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0642.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0642.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0642.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0643.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0643.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0643.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0643.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0643.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0643.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0644.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0644.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0644.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0644.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0644.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0644.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0645.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0645.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0645.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0645.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0645.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0645.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0646.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0646.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0646.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0646.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0646.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0646.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0647.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0647.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0647.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0647.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0647.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0647.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0648.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0648.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0648.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0648.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0648.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0648.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0649.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0649.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0649.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0649.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0649.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0649.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0650.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0650.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0650.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0650.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0650.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0650.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0651.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0651.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0651.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0651.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0651.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0651.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0652.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0652.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0652.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0652.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0652.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0652.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0653.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0653.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0653.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0653.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0653.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0653.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0654.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0654.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0654.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0654.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0654.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0654.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0655.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0655.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0655.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0655.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0655.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0655.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0656.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0656.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0656.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0656.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0656.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0656.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0657.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0657.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0657.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0657.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0657.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0657.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0658.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0658.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0658.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0658.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0658.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0658.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0659.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0659.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0659.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0659.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0659.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0659.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0660.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0660.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0660.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0660.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0660.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0660.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0661.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0661.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0661.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0661.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0661.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0661.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0662.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0662.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0662.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0662.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0662.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0662.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0663.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0663.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0663.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0663.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0663.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0663.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0664.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0664.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0664.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0664.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0664.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0664.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0665.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0665.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0665.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0665.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0665.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0665.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0666.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0666.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0666.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0666.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0666.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0666.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0667.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0667.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0667.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0667.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0667.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0667.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0668.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0668.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0668.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0668.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0668.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0668.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0669.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0669.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0669.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0669.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0669.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0669.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0670.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0670.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0670.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0670.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0670.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0670.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0671.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0671.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0671.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0671.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0671.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0671.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0672.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0672.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0672.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0672.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0672.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0672.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0673.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0673.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0673.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0673.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0673.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0673.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0674.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0674.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0674.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0674.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0674.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0674.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0675.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0675.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0675.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0675.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0675.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0675.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0676.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0676.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0676.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0676.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0676.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0676.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0677.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0677.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0677.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0677.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0677.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0677.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0678.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0678.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0678.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0678.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0678.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0678.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0679.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0679.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0679.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0679.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0679.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0679.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0680.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0680.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0680.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0680.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0680.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0680.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0681.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0681.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0681.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0681.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0681.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0681.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0682.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0682.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0682.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0682.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0682.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0682.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0683.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0683.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0683.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0683.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0683.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0683.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0684.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0684.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0684.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0684.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0684.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0684.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0685.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0685.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0685.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0685.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0685.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0685.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0686.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0686.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0686.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0686.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0686.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0686.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0687.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0687.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0687.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0687.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0687.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0687.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0688.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0688.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0688.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0688.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0688.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0688.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0689.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0689.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0689.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0689.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0689.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0689.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0690.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0690.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0690.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0690.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0690.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0690.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0691.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0691.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0691.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0691.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0691.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0691.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0692.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0692.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0692.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0692.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0692.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0692.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0693.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0693.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0693.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0693.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0693.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0693.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0694.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0694.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0694.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0694.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0694.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0694.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0695.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0695.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0695.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0695.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0695.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0695.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0696.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0696.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0696.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0696.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0696.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0696.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0697.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0697.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0697.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0697.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0697.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0697.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0698.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0698.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0698.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0698.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0698.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0698.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0699.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0699.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0699.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0699.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0699.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0699.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0700.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0700.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0700.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0700.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0700.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0700.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0701.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0701.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0701.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0701.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0701.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0701.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0702.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0702.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0702.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0702.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0702.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0702.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0703.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0703.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0703.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0703.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0703.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0703.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0704.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0704.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0704.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0704.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0704.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0704.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0705.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0705.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0705.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0705.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0705.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0705.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0706.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0706.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0706.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0706.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0706.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0706.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0707.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0707.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0707.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0707.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0707.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0707.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0708.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0708.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0708.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0708.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0708.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0708.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0709.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0709.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0709.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0709.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0709.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0709.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0710.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0710.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0710.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0710.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0710.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0710.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0711.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0711.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0711.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0711.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0711.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0711.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0712.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0712.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0712.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0712.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0712.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0712.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0713.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0713.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0713.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0713.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0713.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0713.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0714.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0714.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0714.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0714.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0714.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0714.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0715.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0715.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0715.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0715.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0715.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0715.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0716.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0716.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0716.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0716.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0716.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0716.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0717.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0717.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0717.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0717.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0717.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0717.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0718.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0718.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0718.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0718.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0718.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0718.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0719.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0719.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0719.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0719.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0719.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0719.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0720.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0720.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0720.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0720.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0720.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0720.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0721.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0721.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0721.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0721.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0721.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0721.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0722.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0722.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0722.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0722.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0722.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0722.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0723.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0723.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0723.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0723.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0723.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0723.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0724.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0724.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0724.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0724.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0724.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0724.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0725.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0725.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0725.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0725.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0725.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0725.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0726.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0726.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0726.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0726.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0726.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0726.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0727.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0727.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0727.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0727.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0727.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0727.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0728.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0728.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0728.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0728.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0728.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0728.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0729.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0729.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0729.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0729.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0729.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0729.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0730.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0730.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0730.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0730.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0730.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0730.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0731.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0731.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0731.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0731.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0731.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0731.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0732.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0732.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0732.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0732.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0732.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0732.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0733.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0733.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0733.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0733.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0733.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0733.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0734.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0734.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0734.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0734.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0734.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0734.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0735.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0735.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0735.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0735.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0735.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0735.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0736.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0736.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0736.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0736.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0736.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0736.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0737.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0737.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0737.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0737.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0737.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0737.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0738.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0738.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0738.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0738.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0738.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0738.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0739.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0739.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0739.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0739.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0739.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0739.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0740.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0740.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0740.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0740.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0740.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0740.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0741.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0741.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0741.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0741.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0741.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0741.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0742.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0742.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0742.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0742.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0742.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0742.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0743.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0743.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0743.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0743.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0743.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0743.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0744.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0744.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0744.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0744.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0744.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0744.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0745.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0745.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0745.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0745.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0745.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0745.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0746.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0746.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0746.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0746.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0746.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0746.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0747.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0747.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0747.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0747.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0747.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0747.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0748.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0748.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0748.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0748.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0748.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0748.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0749.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0749.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0749.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0749.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0749.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0749.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0750.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0750.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0750.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0750.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0750.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0750.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0751.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0751.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0751.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0751.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0751.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0751.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0752.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0752.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0752.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0752.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0752.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0752.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0753.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0753.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0753.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0753.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0753.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0753.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0754.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0754.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0754.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0754.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0754.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0754.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0755.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0755.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0755.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0755.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0755.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0755.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0756.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0756.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0756.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0756.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0756.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0756.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0757.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0757.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0757.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0757.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0757.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0757.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0758.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0758.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0758.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0758.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0758.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0758.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0759.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0759.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0759.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0759.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0759.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0759.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0760.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0760.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0760.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0760.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0760.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0760.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0761.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0761.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0761.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0761.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0761.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0761.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0762.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0762.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0762.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0762.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0762.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0762.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0763.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0763.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0763.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0763.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0763.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0763.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0764.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0764.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0764.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0764.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0764.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0764.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0765.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0765.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0765.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0765.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0765.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0765.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0766.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0766.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0766.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0766.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0766.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0766.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0767.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0767.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0767.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0767.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0767.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0767.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0768.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0768.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0768.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0768.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0768.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0768.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0769.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0769.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0769.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0769.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0769.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0769.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0770.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0770.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0770.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0770.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0770.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0770.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0771.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0771.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0771.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0771.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0771.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0771.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0772.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0772.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0772.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0772.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0772.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0772.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0773.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0773.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0773.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0773.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0773.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0773.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0774.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0774.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0774.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0774.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0774.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0774.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0775.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0775.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0775.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0775.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0775.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0775.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0776.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0776.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0776.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0776.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0776.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0776.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0777.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0777.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0777.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0777.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0777.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0777.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0778.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0778.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0778.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0778.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0778.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0778.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0779.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0779.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0779.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0779.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0779.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0779.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0780.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0780.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0780.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0780.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0780.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0780.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0781.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0781.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0781.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0781.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0781.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0781.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0782.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0782.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0782.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0782.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0782.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0782.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0783.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0783.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0783.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0783.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0783.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0783.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0784.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0784.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0784.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0784.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0784.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0784.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0785.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0785.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0785.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0785.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0785.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0785.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0786.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0786.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0786.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0786.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0786.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0786.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0787.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0787.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0787.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0787.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0787.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0787.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0788.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0788.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0788.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0788.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0788.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0788.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0789.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0789.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0789.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0789.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0789.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0789.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0790.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0790.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0790.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0790.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0790.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0790.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0791.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0791.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0791.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0791.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0791.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0791.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0792.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0792.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0792.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0792.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0792.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0792.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0793.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0793.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0793.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0793.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0793.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0793.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0794.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0794.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0794.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0794.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0794.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0794.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0795.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0795.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0795.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0795.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0795.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0795.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0796.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0796.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0796.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0796.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0796.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0796.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0797.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0797.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0797.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0797.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0797.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0797.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0798.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0798.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0798.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0798.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0798.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0798.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0799.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0799.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0799.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0799.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0799.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0799.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0800.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0800.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0800.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0800.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0800.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0800.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0801.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0801.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0801.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0801.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0801.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0801.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0802.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0802.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0802.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0802.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0802.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0802.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0803.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0803.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0803.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0803.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0803.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0803.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0804.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0804.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0804.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0804.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0804.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0804.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0805.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0805.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0805.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0805.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0805.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0805.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0806.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0806.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0806.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0806.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0806.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0806.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0807.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0807.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0807.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0807.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0807.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0807.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0808.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0808.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0808.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0808.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0808.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0808.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0809.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0809.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0809.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0809.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0809.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0809.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0810.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0810.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0810.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0810.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0810.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0810.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0811.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0811.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0811.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0811.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0811.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0811.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0812.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0812.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0812.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0812.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0812.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0812.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0813.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0813.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0813.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0813.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0813.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0813.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0814.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0814.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0814.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0814.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0814.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0814.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0815.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0815.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0815.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0815.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0815.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0815.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0816.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0816.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0816.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0816.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0816.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0816.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0817.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0817.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0817.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0817.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0817.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0817.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0818.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0818.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0818.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0818.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0818.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0818.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0819.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0819.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0819.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0819.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0819.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0819.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0820.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0820.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0820.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0820.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0820.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0820.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0821.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0821.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0821.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0821.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0821.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0821.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0822.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0822.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0822.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0822.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0822.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0822.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0823.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0823.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0823.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0823.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0823.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0823.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0824.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0824.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0824.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0824.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0824.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0824.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0825.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0825.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0825.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0825.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0825.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0825.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0826.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0826.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0826.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0826.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0826.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0826.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0827.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0827.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0827.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0827.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0827.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0827.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0828.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0828.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0828.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0828.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0828.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0828.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0829.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0829.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0829.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0829.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0829.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0829.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0830.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0830.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0830.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0830.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0830.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0830.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0831.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0831.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0831.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0831.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0831.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0831.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0832.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0832.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0832.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0832.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0832.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0832.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0833.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0833.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0833.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0833.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0833.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0833.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0834.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0834.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0834.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0834.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0834.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0834.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0835.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0835.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0835.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0835.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0835.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0835.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0836.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0836.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0836.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0836.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0836.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0836.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0837.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0837.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0837.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0837.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0837.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0837.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0838.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0838.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0838.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0838.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0838.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0838.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0839.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0839.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0839.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0839.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0839.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0839.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0840.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0840.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0840.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0840.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0840.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0840.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0841.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0841.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0841.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0841.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0841.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0841.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0842.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0842.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0842.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0842.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0842.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0842.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0843.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0843.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0843.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0843.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0843.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0843.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0844.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0844.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0844.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0844.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0844.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0844.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0845.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0845.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0845.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0845.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0845.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0845.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0846.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0846.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0846.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0846.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0846.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0846.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0847.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0847.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0847.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0847.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0847.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0847.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0848.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0848.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0848.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0848.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0848.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0848.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0849.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0849.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0849.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0849.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0849.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0849.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0850.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0850.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0850.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0850.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0850.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0850.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0851.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0851.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0851.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0851.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0851.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0851.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0852.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0852.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0852.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0852.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0852.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0852.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0853.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0853.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0853.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0853.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0853.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0853.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0854.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0854.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0854.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0854.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0854.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0854.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0855.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0855.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0855.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0855.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0855.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0855.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0856.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0856.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0856.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0856.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0856.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0856.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0857.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0857.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0857.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0857.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0857.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0857.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0858.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0858.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0858.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0858.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0858.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0858.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0859.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0859.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0859.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0859.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0859.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0859.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0860.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0860.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0860.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0860.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0860.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0860.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0861.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0861.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0861.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0861.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0861.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0861.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0862.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0862.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0862.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0862.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0862.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0862.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0863.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0863.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0863.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0863.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0863.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0863.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0864.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0864.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0864.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0864.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0864.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0864.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0865.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0865.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0865.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0865.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0865.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0865.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0866.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0866.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0866.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0866.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0866.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0866.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0867.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0867.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0867.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0867.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0867.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0867.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0868.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0868.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0868.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0868.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0868.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0868.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0869.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0869.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0869.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0869.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0869.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0869.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0870.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0870.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0870.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0870.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0870.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0870.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0871.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0871.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0871.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0871.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0871.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0871.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0872.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0872.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0872.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0872.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0872.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0872.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0873.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0873.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0873.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0873.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0873.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0873.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0874.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0874.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0874.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0874.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0874.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0874.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0875.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0875.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0875.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0875.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0875.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0875.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0876.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0876.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0876.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0876.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0876.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0876.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0877.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0877.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0877.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0877.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0877.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0877.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0878.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0878.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0878.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0878.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0878.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0878.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0879.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0879.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0879.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0879.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0879.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0879.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0880.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0880.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0880.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0880.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0880.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0880.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0881.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0881.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0881.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0881.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0881.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0881.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0882.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0882.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0882.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0882.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0882.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0882.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0883.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0883.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0883.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0883.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0883.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0883.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0884.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0884.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0884.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0884.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0884.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0884.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0885.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0885.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0885.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0885.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0885.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0885.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0886.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0886.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0886.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0886.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0886.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0886.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0887.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0887.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0887.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0887.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0887.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0887.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0888.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0888.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0888.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0888.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0888.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0888.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0889.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0889.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0889.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0889.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0889.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0889.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0890.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0890.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0890.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0890.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0890.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0890.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0891.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0891.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0891.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0891.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0891.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0891.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0892.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0892.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0892.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0892.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0892.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0892.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0893.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0893.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0893.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0893.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0893.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0893.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0894.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0894.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0894.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0894.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0894.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0894.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0895.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0895.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0895.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0895.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0895.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0895.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0896.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0896.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0896.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0896.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0896.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0896.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0897.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0897.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0897.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0897.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0897.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0897.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0898.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0898.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0898.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0898.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0898.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0898.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0899.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0899.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0899.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0899.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0899.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0899.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0900.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0900.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0900.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0900.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0900.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0900.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0901.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0901.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0901.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0901.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0901.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0901.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0902.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0902.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0902.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0902.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0902.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0902.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0903.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0903.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0903.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0903.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0903.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0903.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0904.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0904.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0904.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0904.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0904.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0904.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0905.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0905.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0905.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0905.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0905.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0905.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0906.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0906.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0906.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0906.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0906.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0906.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0907.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0907.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0907.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0907.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0907.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0907.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0908.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0908.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0908.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0908.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0908.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0908.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0909.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0909.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0909.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0909.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0909.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0909.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0910.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0910.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0910.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0910.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0910.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0910.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0911.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0911.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0911.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0911.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0911.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0911.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0912.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0912.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0912.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0912.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0912.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0912.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0913.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0913.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0913.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0913.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0913.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0913.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0914.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0914.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0914.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0914.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0914.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0914.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0915.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0915.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0915.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0915.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0915.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0915.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0916.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0916.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0916.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0916.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0916.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0916.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0917.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0917.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0917.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0917.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0917.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0917.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0918.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0918.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0918.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0918.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0918.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0918.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0919.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0919.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0919.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0919.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0919.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0919.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0920.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0920.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0920.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0920.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0920.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0920.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0921.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0921.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0921.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0921.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0921.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0921.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0922.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0922.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0922.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0922.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0922.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0922.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0923.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0923.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0923.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0923.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0923.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0923.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0924.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0924.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0924.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0924.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0924.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0924.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0925.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0925.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0925.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0925.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0925.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0925.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0926.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0926.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0926.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0926.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0926.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0926.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0927.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0927.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0927.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0927.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0927.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0927.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0928.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0928.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0928.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0928.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0928.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0928.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0929.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0929.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0929.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0929.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0929.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0929.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0930.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0930.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0930.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0930.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0930.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0930.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0931.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0931.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0931.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0931.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0931.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0931.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0932.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0932.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0932.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0932.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0932.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0932.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0933.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0933.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0933.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0933.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0933.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0933.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0934.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0934.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0934.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0934.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0934.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0934.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0935.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0935.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0935.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0935.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0935.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0935.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0936.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0936.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0936.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0936.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0936.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0936.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0937.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0937.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0937.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0937.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0937.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0937.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0938.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0938.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0938.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0938.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0938.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0938.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0939.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0939.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0939.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0939.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0939.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0939.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0940.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0940.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0940.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0940.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0940.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0940.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0941.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0941.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0941.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0941.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0941.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0941.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0942.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0942.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0942.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0942.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0942.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0942.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0943.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0943.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0943.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0943.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0943.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0943.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0944.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0944.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0944.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0944.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0944.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0944.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0945.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0945.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0945.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0945.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0945.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0945.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0946.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0946.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0946.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0946.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0946.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0946.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0947.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0947.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0947.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0947.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0947.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0947.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0948.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0948.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0948.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0948.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0948.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0948.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0949.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0949.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0949.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0949.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0949.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0949.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0950.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0950.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0950.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0950.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0950.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0950.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0951.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0951.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0951.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0951.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0951.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0951.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0952.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0952.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0952.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0952.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0952.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0952.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0953.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0953.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0953.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0953.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0953.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0953.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0954.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0954.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0954.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0954.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0954.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0954.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0955.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0955.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0955.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0955.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0955.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0955.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0956.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0956.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0956.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0956.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0956.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0956.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0957.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0957.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0957.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0957.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0957.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0957.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0958.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0958.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0958.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0958.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0958.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0958.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0959.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0959.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0959.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0959.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0959.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0959.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0960.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0960.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0960.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0960.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0960.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0960.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0961.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0961.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0961.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0961.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0961.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0961.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0962.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0962.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0962.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0962.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0962.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0962.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0963.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0963.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0963.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0963.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0963.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0963.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0964.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0964.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0964.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0964.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0964.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0964.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0965.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0965.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0965.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0965.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0965.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0965.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0966.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0966.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0966.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0966.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0966.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0966.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0967.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0967.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0967.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0967.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0967.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0967.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0968.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0968.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0968.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0968.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0968.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0968.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0969.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0969.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0969.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0969.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0969.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0969.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0970.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0970.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0970.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0970.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0970.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0970.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0971.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0971.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0971.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0971.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0971.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0971.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0972.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0972.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0972.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0972.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0972.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0972.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0973.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0973.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0973.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0973.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0973.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0973.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0974.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0974.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0974.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0974.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0974.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0974.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0975.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0975.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0975.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0975.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0975.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0975.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0976.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0976.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0976.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0976.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0976.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0976.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0977.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0977.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0977.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0977.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0977.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0977.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0978.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0978.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0978.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0978.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0978.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0978.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0979.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0979.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0979.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0979.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0979.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0979.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0980.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0980.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0980.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0980.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0980.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0980.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0981.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0981.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0981.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0981.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0981.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0981.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0982.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0982.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0982.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0982.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0982.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0982.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0983.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0983.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0983.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0983.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0983.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0983.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0984.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0984.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0984.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0984.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0984.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0984.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0985.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0985.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0985.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0985.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0985.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0985.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0986.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0986.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0986.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0986.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0986.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0986.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0987.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0987.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0987.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0987.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0987.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0987.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0988.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0988.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0988.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0988.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0988.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0988.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0989.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0989.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0989.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0989.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0989.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0989.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0990.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0990.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0990.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0990.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0990.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0990.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0991.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0991.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0991.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0991.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0991.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0991.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0992.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0992.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0992.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0992.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0992.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0992.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0993.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0993.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0993.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0993.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0993.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0993.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0994.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case0994.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0994.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0994.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0994.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0994.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0995.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case0995.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0995.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0995.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0995.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0995.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0996.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case0996.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0996.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0996.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0996.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0996.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0997.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case0997.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0997.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0997.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0997.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0997.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0998.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case0998.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0998.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0998.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0998.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0998.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave0999.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case0999.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case0999.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case0999.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case0999.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case0999.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1000.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1000.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1000.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1000.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1000.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1000.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1001.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1001.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1001.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1001.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1001.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1001.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1002.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1002.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1002.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1002.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1002.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1002.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1003.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1003.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1003.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1003.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1003.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1003.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1004.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1004.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1004.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1004.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1004.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1004.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1005.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1005.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1005.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1005.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1005.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1005.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1006.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1006.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1006.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1006.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1006.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1006.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1007.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=0 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1007.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1007.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1007.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1007.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1007.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1008.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1008.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1008.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1008.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1008.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1008.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1009.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1009.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1009.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1009.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1009.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1009.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1010.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1010.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1010.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1010.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1010.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1010.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1011.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1011.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1011.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1011.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1011.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1011.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1012.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1012.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1012.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1012.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1012.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1012.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1013.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1013.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1013.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1013.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1013.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1013.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1014.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1014.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1014.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1014.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1014.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1014.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1015.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1015.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1015.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1015.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1015.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1015.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1016.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1016.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1016.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1016.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1016.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1016.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1017.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1017.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1017.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1017.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1017.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1017.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1018.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1018.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1018.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1018.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1018.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1018.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1019.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1019.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1019.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1019.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1019.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1019.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1020.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1020.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1020.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1020.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1020.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1020.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1021.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1021.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1021.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1021.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1021.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1021.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1022.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1022.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1022.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1022.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1022.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1022.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1023.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1023.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1023.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1023.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1023.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1023.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1024.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1024.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1024.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1024.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1024.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1024.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1025.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1025.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1025.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1025.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1025.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1025.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1026.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1026.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1026.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1026.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1026.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1026.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1027.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1027.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1027.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1027.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1027.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1027.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1028.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1028.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1028.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1028.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1028.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1028.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1029.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1029.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1029.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1029.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1029.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1029.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1030.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1030.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1030.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1030.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1030.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1030.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1031.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1031.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1031.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1031.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1031.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1031.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1032.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1032.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1032.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1032.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1032.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1032.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1033.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1033.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1033.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1033.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1033.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1033.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1034.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1034.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1034.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1034.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1034.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1034.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1035.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1035.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1035.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1035.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1035.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1035.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1036.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1036.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1036.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1036.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1036.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1036.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1037.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1037.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1037.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1037.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1037.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1037.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1038.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1038.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1038.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1038.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1038.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1038.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1039.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1039.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1039.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1039.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1039.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1039.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1040.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1040.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1040.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1040.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1040.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1040.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1041.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1041.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1041.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1041.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1041.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1041.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1042.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1042.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1042.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1042.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1042.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1042.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1043.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1043.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1043.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1043.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1043.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1043.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1044.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1044.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1044.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1044.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1044.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1044.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1045.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1045.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1045.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1045.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1045.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1045.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1046.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1046.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1046.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1046.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1046.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1046.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1047.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1047.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1047.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1047.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1047.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1047.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1048.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1048.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1048.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1048.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1048.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1048.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1049.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1049.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1049.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1049.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1049.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1049.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1050.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1050.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1050.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1050.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1050.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1050.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1051.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1051.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1051.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1051.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1051.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1051.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1052.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1052.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1052.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1052.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1052.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1052.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1053.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1053.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1053.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1053.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1053.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1053.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1054.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1054.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1054.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1054.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1054.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1054.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1055.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1055.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1055.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1055.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1055.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1055.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1056.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1056.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1056.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1056.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1056.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1056.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1057.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1057.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1057.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1057.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1057.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1057.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1058.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1058.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1058.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1058.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1058.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1058.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1059.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1059.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1059.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1059.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1059.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1059.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1060.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1060.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1060.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1060.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1060.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1060.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1061.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1061.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1061.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1061.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1061.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1061.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1062.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1062.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1062.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1062.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1062.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1062.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1063.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1063.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1063.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1063.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1063.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1063.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1064.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1064.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1064.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1064.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1064.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1064.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1065.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1065.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1065.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1065.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1065.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1065.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1066.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1066.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1066.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1066.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1066.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1066.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1067.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1067.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1067.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1067.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1067.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1067.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1068.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1068.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1068.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1068.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1068.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1068.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1069.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1069.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1069.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1069.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1069.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1069.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1070.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1070.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1070.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1070.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1070.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1070.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1071.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1071.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1071.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1071.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1071.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1071.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1072.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1072.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1072.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1072.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1072.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1072.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1073.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1073.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1073.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1073.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1073.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1073.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1074.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1074.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1074.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1074.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1074.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1074.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1075.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1075.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1075.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1075.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1075.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1075.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1076.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1076.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1076.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1076.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1076.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1076.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1077.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1077.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1077.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1077.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1077.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1077.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1078.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1078.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1078.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1078.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1078.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1078.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1079.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1079.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1079.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1079.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1079.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1079.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1080.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1080.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1080.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1080.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1080.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1080.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1081.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1081.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1081.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1081.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1081.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1081.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1082.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1082.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1082.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1082.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1082.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1082.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1083.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1083.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1083.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1083.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1083.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1083.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1084.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1084.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1084.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1084.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1084.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1084.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1085.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1085.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1085.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1085.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1085.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1085.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1086.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1086.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1086.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1086.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1086.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1086.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1087.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1087.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1087.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1087.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1087.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1087.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1088.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1088.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1088.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1088.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1088.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1088.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1089.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1089.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1089.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1089.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1089.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1089.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1090.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1090.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1090.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1090.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1090.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1090.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1091.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1091.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1091.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1091.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1091.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1091.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1092.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1092.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1092.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1092.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1092.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1092.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1093.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1093.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1093.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1093.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1093.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1093.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1094.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1094.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1094.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1094.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1094.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1094.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1095.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1095.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1095.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1095.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1095.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1095.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1096.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1096.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1096.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1096.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1096.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1096.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1097.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1097.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1097.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1097.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1097.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1097.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1098.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1098.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1098.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1098.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1098.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1098.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1099.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1099.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1099.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1099.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1099.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1099.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1100.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1100.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1100.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1100.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1100.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1100.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1101.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1101.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1101.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1101.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1101.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1101.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1102.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1102.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1102.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1102.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1102.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1102.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1103.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1103.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1103.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1103.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1103.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1103.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1104.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1104.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1104.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1104.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1104.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1104.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1105.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1105.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1105.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1105.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1105.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1105.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1106.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1106.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1106.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1106.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1106.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1106.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1107.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1107.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1107.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1107.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1107.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1107.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1108.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1108.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1108.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1108.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1108.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1108.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1109.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1109.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1109.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1109.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1109.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1109.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1110.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1110.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1110.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1110.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1110.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1110.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1111.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1111.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1111.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1111.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1111.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1111.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1112.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1112.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1112.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1112.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1112.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1112.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1113.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1113.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1113.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1113.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1113.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1113.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1114.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1114.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1114.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1114.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1114.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1114.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1115.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1115.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1115.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1115.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1115.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1115.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1116.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1116.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1116.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1116.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1116.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1116.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1117.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1117.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1117.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1117.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1117.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1117.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1118.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1118.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1118.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1118.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1118.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1118.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1119.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1119.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1119.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1119.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1119.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1119.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1120.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1120.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1120.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1120.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1120.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1120.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1121.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1121.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1121.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1121.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1121.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1121.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1122.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1122.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1122.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1122.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1122.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1122.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1123.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1123.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1123.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1123.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1123.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1123.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1124.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1124.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1124.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1124.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1124.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1124.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1125.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1125.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1125.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1125.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1125.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1125.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1126.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1126.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1126.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1126.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1126.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1126.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1127.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1127.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1127.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1127.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1127.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1127.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1128.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1128.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1128.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1128.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1128.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1128.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1129.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1129.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1129.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1129.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1129.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1129.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1130.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1130.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1130.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1130.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1130.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1130.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1131.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1131.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1131.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1131.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1131.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1131.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1132.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1132.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1132.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1132.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1132.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1132.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1133.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1133.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1133.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1133.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1133.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1133.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1134.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1134.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1134.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1134.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1134.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1134.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1135.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1135.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1135.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1135.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1135.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1135.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1136.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1136.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1136.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1136.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1136.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1136.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1137.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1137.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1137.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1137.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1137.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1137.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1138.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1138.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1138.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1138.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1138.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1138.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1139.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1139.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1139.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1139.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1139.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1139.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1140.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1140.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1140.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1140.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1140.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1140.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1141.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1141.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1141.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1141.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1141.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1141.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1142.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1142.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1142.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1142.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1142.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1142.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1143.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1143.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1143.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1143.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1143.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1143.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1144.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1144.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1144.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1144.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1144.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1144.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1145.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1145.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1145.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1145.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1145.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1145.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1146.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1146.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1146.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1146.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1146.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1146.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1147.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1147.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1147.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1147.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1147.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1147.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1148.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1148.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1148.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1148.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1148.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1148.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1149.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1149.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1149.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1149.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1149.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1149.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1150.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1150.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1150.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1150.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1150.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1150.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1151.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1151.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1151.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1151.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1151.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1151.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1152.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1152.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1152.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1152.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1152.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1152.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1153.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1153.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1153.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1153.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1153.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1153.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1154.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1154.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1154.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1154.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1154.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1154.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1155.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1155.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1155.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1155.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1155.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1155.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1156.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1156.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1156.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1156.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1156.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1156.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1157.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1157.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1157.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1157.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1157.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1157.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1158.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1158.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1158.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1158.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1158.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1158.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1159.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1159.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1159.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1159.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1159.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1159.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1160.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1160.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1160.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1160.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1160.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1160.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1161.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1161.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1161.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1161.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1161.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1161.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1162.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1162.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1162.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1162.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1162.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1162.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1163.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1163.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1163.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1163.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1163.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1163.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1164.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1164.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1164.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1164.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1164.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1164.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1165.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1165.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1165.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1165.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1165.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1165.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1166.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1166.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1166.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1166.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1166.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1166.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1167.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1167.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1167.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1167.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1167.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1167.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1168.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1168.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1168.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1168.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1168.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1168.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1169.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1169.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1169.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1169.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1169.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1169.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1170.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1170.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1170.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1170.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1170.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1170.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1171.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1171.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1171.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1171.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1171.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1171.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1172.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1172.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1172.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1172.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1172.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1172.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1173.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1173.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1173.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1173.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1173.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1173.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1174.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1174.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1174.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1174.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1174.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1174.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1175.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1175.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1175.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1175.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1175.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1175.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1176.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1176.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1176.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1176.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1176.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1176.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1177.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1177.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1177.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1177.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1177.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1177.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1178.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1178.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1178.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1178.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1178.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1178.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1179.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1179.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1179.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1179.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1179.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1179.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1180.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1180.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1180.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1180.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1180.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1180.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1181.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1181.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1181.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1181.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1181.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1181.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1182.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1182.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1182.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1182.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1182.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1182.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1183.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1183.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1183.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1183.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1183.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1183.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1184.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1184.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1184.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1184.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1184.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1184.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1185.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1185.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1185.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1185.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1185.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1185.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1186.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1186.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1186.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1186.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1186.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1186.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1187.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1187.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1187.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1187.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1187.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1187.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1188.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1188.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1188.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1188.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1188.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1188.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1189.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1189.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1189.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1189.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1189.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1189.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1190.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1190.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1190.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1190.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1190.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1190.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1191.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1191.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1191.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1191.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1191.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1191.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1192.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1192.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1192.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1192.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1192.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1192.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1193.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1193.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1193.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1193.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1193.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1193.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1194.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1194.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1194.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1194.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1194.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1194.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1195.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1195.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1195.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1195.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1195.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1195.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1196.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1196.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1196.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1196.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1196.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1196.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1197.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1197.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1197.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1197.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1197.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1197.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1198.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1198.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1198.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1198.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1198.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1198.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1199.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1199.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1199.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1199.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1199.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1199.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1200.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1200.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1200.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1200.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1200.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1200.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1201.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1201.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1201.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1201.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1201.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1201.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1202.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1202.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1202.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1202.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1202.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1202.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1203.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1203.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1203.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1203.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1203.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1203.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1204.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1204.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1204.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1204.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1204.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1204.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1205.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1205.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1205.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1205.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1205.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1205.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1206.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1206.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1206.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1206.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1206.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1206.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1207.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1207.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1207.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1207.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1207.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1207.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1208.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1208.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1208.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1208.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1208.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1208.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1209.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1209.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1209.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1209.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1209.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1209.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1210.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1210.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1210.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1210.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1210.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1210.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1211.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1211.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1211.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1211.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1211.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1211.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1212.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1212.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1212.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1212.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1212.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1212.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1213.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1213.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1213.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1213.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1213.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1213.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1214.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1214.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1214.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1214.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1214.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1214.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1215.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1215.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1215.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1215.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1215.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1215.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1216.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1216.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1216.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1216.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1216.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1216.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1217.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1217.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1217.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1217.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1217.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1217.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1218.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1218.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1218.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1218.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1218.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1218.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1219.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1219.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1219.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1219.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1219.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1219.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1220.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1220.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1220.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1220.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1220.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1220.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1221.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1221.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1221.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1221.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1221.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1221.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1222.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1222.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1222.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1222.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1222.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1222.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1223.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=0 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1223.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1223.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1223.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1223.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1223.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1224.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1224.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1224.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1224.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1224.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1224.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1225.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1225.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1225.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1225.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1225.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1225.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1226.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1226.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1226.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1226.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1226.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1226.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1227.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1227.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1227.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1227.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1227.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1227.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1228.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1228.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1228.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1228.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1228.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1228.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1229.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=1 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1229.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1229.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1229.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1229.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1229.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1230.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1230.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1230.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1230.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1230.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1230.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1231.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1231.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1231.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1231.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1231.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1231.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1232.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1232.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1232.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1232.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1232.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1232.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1233.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1233.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1233.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1233.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1233.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1233.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1234.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1234.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1234.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1234.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1234.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1234.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1235.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=2 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1235.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1235.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1235.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1235.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1235.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1236.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1236.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1236.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1236.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1236.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1236.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1237.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1237.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1237.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1237.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1237.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1237.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1238.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1238.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1238.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1238.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1238.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1238.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1239.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1239.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1239.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1239.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1239.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1239.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1240.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1240.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1240.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1240.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1240.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1240.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1241.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=3 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1241.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1241.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1241.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1241.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1241.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1242.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1242.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1242.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1242.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1242.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1242.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1243.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1243.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1243.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1243.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1243.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1243.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1244.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1244.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1244.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1244.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1244.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1244.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1245.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1245.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1245.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1245.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1245.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1245.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1246.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1246.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1246.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1246.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1246.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1246.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1247.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=4 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1247.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1247.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1247.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1247.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1247.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1248.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1248.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1248.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1248.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1248.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1248.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1249.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1249.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1249.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1249.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1249.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1249.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1250.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1250.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1250.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1250.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1250.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1250.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1251.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1251.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1251.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1251.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1251.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1251.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1252.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1252.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1252.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1252.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1252.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1252.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1253.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=5 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1253.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1253.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1253.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1253.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1253.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1254.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=10 +DATA_UNIT=B -l ./case/small_datacount_log/case1254.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1254.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1254.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1254.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1254.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1255.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=313 +DATA_UNIT=B -l ./case/small_datacount_log/case1255.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1255.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1255.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1255.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1255.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1256.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=1453 +DATA_UNIT=B -l ./case/small_datacount_log/case1256.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1256.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1256.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1256.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1256.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1257.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=4 +DATA_UNIT=KB -l ./case/small_datacount_log/case1257.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1257.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1257.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1257.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1257.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1258.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=8 +DATA_UNIT=KB -l ./case/small_datacount_log/case1258.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1258.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1258.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1258.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1258.log
./hca_test -uvmDebug +UVM_VERBOSITY=UVM_LOW +vpdfile+./case/small_datacount_wave/wave1259.vpd +UVM_TESTNAME=test_direct_param +HOST_NUM=2 +PROC_NUM=2 +RC_QP_NUM=2 +UC_QP_NUM=2 +UD_QP_NUM=2 +DB_NUM=1 +WRITE_WQE_NUM=1 +READ_WQE_NUM=1 +SEND_WQE_NUM=1 +RECV_WQE_NUM=1 +SG_NUM=6 +DATA_CNT=16 +DATA_UNIT=KB -l ./case/small_datacount_log/case1259.log+vcs+lic+wait
sed -i '/Memory Collision Error/d' ./case/small_datacount_log/case1259.log
sed -i '/A read was perf/d' ./case/small_datacount_log/case1259.log
sed -i '/TSDN28/d' ./case/small_datacount_log/case1259.log
sed -i '/^\s*$/d' ./case/small_datacount_log/case1259.log
