test_name = "test_direct_param"
case_name = "test_direct"
output_exe = "hca_test"

file = open("./case/small_datacount.sh", "w")

max_qp_num = 8192
host_num = 2
proc_num = 1
flag = 0

for rc_qp_num in [0, 2]:
    for uc_qp_num in [0, 2]:
        for ud_qp_num in [0, 2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            break
                        for sg_num in range(1, 6):
                            for data_count in [10, 4, 8, 16, 32, 64]:
                                if (data_count == 10):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+wave" + str(flag) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("-l small_datacount_log/case" + str(flag) + ".log\n")
                                flag = flag + 1

file = open("./case/medium_datacount.sh", "w")

for rc_qp_num in [0, 2]:
    for uc_qp_num in [0, 2]:
        for ud_qp_num in [0, 2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            break
                        for sg_num in range(1, 6):
                            for data_count in [128, 256, 512, 1]:
                                if (data_count == 1):
                                    data_unit = "MB"
                                else:
                                    data_unit = "KB"
                                file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+wave" + str(flag) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("-l medium_datacount_log/case" + str(flag) + ".log\n")
                                flag = flag + 1

file = open("./case/mix_service_type.sh", "w")

for rc_qp_num in [2, 10]:
    for uc_qp_num in [2, 10]:
        for ud_qp_num in [2, 10]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            break
                        for sg_num in range(1, 6):
                            for data_count in [10, 4, 8, 16, 32, 64]:
                                if (data_count == 10):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+wave" + str(flag) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("-l mix_service_type_log/case" + str(flag) + ".log\n")
                                flag = flag + 1

                                
file = open("./case/mix_operation_type.sh", "w")

for rc_qp_num in [2]:
    for uc_qp_num in [2]:
        for ud_qp_num in [2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            db_num = 1
            for sr_wqe_num in [1, 5, 10]:
                for read_wqe_num in [1, 5, 10]:
                    for write_wqe_num in [1, 5, 10]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            break
                        for sg_num in range(1, 6):
                            for data_count in [10, 4, 8, 16, 32, 64]:
                                if (data_count == 10):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+wave" + str(flag) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("-l mix_operation_type_log/case" + str(flag) + ".log\n")
                                flag = flag + 1

file = open("./case/multidb.sh", "w")

for rc_qp_num in [2]:
    for uc_qp_num in [2]:
        for ud_qp_num in [2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            for db_num in range(2, 10):
                for sr_wqe_num in [0, 1]:
                    for read_wqe_num in [0, 1]:
                        for write_wqe_num in [0, 1]:
                            if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                                break
                            for sg_num in [1]:
                                for data_count in [10, 4, 8, 16, 32, 64]:
                                    if (data_count == 10):
                                        data_unit = "B"
                                    else:
                                        data_unit = "KB"
                                    file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                        "+vpdfile+wave" + str(flag) + ".vpd " +\
                                        "+UVM_TESTNAME=" + test_name + \
                                        " +HOST_NUM=2 +PROC_NUM=2 ")
                                    file.write("+DB_NUM=" + str(db_num) + " ")
                                    file.write("+SG_NUM=" + str(sg_num) + " ")
                                    file.write("+DATA_CNT=" + str(data_count) + " ")
                                    file.write("+DATA_UNIT=" + data_unit + " ")
                                    file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                    file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                    file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                    file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                    file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                    file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("-l multidb_log/case" + str(flag) + ".log\n")
                                    flag = flag + 1

                                    
file = open("./case/multiqp.sh", "w")

for rc_qp_num in [0, 16, 64, 256, 1024, 4096, 8192]:
    for uc_qp_num in [0, 16, 64, 256, 1024, 4096, 8192]:
        for ud_qp_num in [0, 16, 64, 256, 1024, 4096, 8192]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                break
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                break
            for db_num in [1]:
                for sr_wqe_num in [0, 1]:
                    for read_wqe_num in [0, 1]:
                        for write_wqe_num in [0, 1]:
                            if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                                break
                            for sg_num in [1]:
                                for data_count in [10]:
                                    if (data_count == 10):
                                        data_unit = "B"
                                    else:
                                        data_unit = "KB"
                                    file.write("hca_test -uvmDebug +UVM_VERDI_TRACE=HIER +UVM_VERBOSITY=UVM_LOW " + \
                                        "+vpdfile+wave" + str(flag) + ".vpd " +\
                                        "+UVM_TESTNAME=" + test_name + \
                                        " +HOST_NUM=2 +PROC_NUM=2 ")
                                    file.write("+DB_NUM=" + str(db_num) + " ")
                                    file.write("+SG_NUM=" + str(sg_num) + " ")
                                    file.write("+DATA_CNT=" + str(data_count) + " ")
                                    file.write("+DATA_UNIT=" + data_unit + " ")
                                    file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                    file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                    file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                    file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                    file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                    file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("-l multiqp_log/case" + str(flag) + ".log\n")
                                    flag = flag + 1