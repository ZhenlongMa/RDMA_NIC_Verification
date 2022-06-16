.PHONY: com debug_dve clean

# variables
OUTPUT = hca_test
TEST_NAME = test_direct_param
CASE_NAME = test_direct
VPD_NAME = wave.vpd

# commands
com:
	vcs -sverilog -debug_all -ntb_opts uvm \
	-debug_access+all -kdb -lca \
	-picarchive -full64 -timescale=1ns/100ps \
	+acc +vpi \
	+warn=none \
	+define+UVM_OBJECT_MUST_HAVE_CONSTRUCTOR+UVM_USE_CALLBACKS_OBJECTION_FOR_TEST_DONE \
	+define+UVM_REG_DATA_WIDTH=256 \
	+define+UVM_VERDI_COMPWAVE \
	-l compile.log \
	-f filelist.f -o ${OUTPUT}

debug_dve:
	./${OUTPUT} -gui=dve -uvmDebug +vpdfile+${VPDNAME} +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=${TEST_NAME} \
				+HCA_CASE_NAME=${CASE_NAME} \
				+HCA_HOST_NUM=2 \
				+HCA_PROC_NUM=2 \
				+HCA_DB_NUM=1 \
				+HCA_SG_NUM=1 \
				+HCA_PAGE_NUM=1 \
				+HCA_DATA_CNT=1 \
				+HCA_DATA_UNIT=MB \
				+RC_QP_NUM=2 \
				+UC_QP_NUM=0 \
				+UD_QP_NUM=0 \
				+WRITE_WQE_NUM=1 \
				+READ_WQE_NUM=0 \
				+SEND_WQE_NUM=0 \
				+RECV_WQE_NUM=0 \
				-l run.log
				
clean:
	rm -rf ${OUTPUT} *.vpd stack.info* session.inter.vpd.tcl csrc DVEfiles *.fsdb novas* *.daidir ucli.key vc_hdrs.h verdiLog flex* inter*
