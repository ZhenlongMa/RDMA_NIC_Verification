test_name = "test_direct_param"
case_name = "test_direct"
output_exe = "./hca_test"

file = open("./case/small_datacount.sh", "w")

max_qp_num = 8192
host_num = 2
proc_num = 1
flag = 0
flaglen = 4

for ud_qp_num in [0, 2]:
    for uc_qp_num in [0, 2]:
        for rc_qp_num in [0, 2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            continue
                        if (rc_qp_num == 0):
                            if (read_wqe_num != 0):
                                continue
                            if (uc_qp_num == 0):
                                if (write_wqe_num != 0):
                                    continue
                        for sg_num in range(1, 7):
                            for data_count in [10, 313, 1453, 4, 8, 16]:
                                if (data_count !=4 and data_count != 8 and data_count != 16):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+" + "./case/small_datacount_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("-l ./case/small_datacount_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                flag = flag + 1

file = open("./case/medium_datacount.sh", "w")

for ud_qp_num in [0, 2]:
    for uc_qp_num in [0, 2]:
        for rc_qp_num in [0, 2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            continue
                        if (rc_qp_num == 0):
                            if (read_wqe_num != 0):
                                continue
                            if (uc_qp_num == 0):
                                if (write_wqe_num != 0):
                                    continue
                        for sg_num in range(1, 7):
                            for data_count in [64, 128, 256]:
                                if (data_count == 1):
                                    data_unit = "MB"
                                else:
                                    data_unit = "KB"
                                file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+" + "./case/medium_datacount_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("-l ./case/medium_datacount_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                flag = flag + 1

file = open("./case/mix_service_type.sh", "w")

for ud_qp_num in [2, 10]:
    for uc_qp_num in [2, 10]:
        for rc_qp_num in [2, 10]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            db_num = 1
            for sr_wqe_num in [0, 1]:
                for read_wqe_num in [0, 1]:
                    for write_wqe_num in [0, 1]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            continue
                        if (rc_qp_num == 0):
                            if (read_wqe_num != 0):
                                continue
                            if (uc_qp_num == 0):
                                if (write_wqe_num != 0):
                                    continue
                        for sg_num in range(1, 7):
                            for data_count in [10, 4, 8, 16]:
                                if (data_count == 10):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+" + "./case/mix_service_type_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("-l ./case/mix_service_type_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                flag = flag + 1

file = open("./case/mix_operation_type.sh", "w")

for ud_qp_num in [2]:
    for uc_qp_num in [2]:
        for rc_qp_num in [2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            db_num = 1
            for sr_wqe_num in [1, 5, 10]:
                for read_wqe_num in [1, 5, 10]:
                    for write_wqe_num in [1, 5, 10]:
                        if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                            continue
                        if (rc_qp_num == 0):
                            if (read_wqe_num != 0):
                                continue
                            if (uc_qp_num == 0):
                                if (write_wqe_num != 0):
                                    continue
                        for sg_num in range(1, 7):
                            for data_count in [10, 4, 8, 16]:
                                if (data_count == 10):
                                    data_unit = "B"
                                else:
                                    data_unit = "KB"
                                file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                    "+vpdfile+" + "./case/mix_operation_type_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                    "+UVM_TESTNAME=" + test_name + \
                                    " +HOST_NUM=2 +PROC_NUM=2 ")
                                file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                file.write("+DB_NUM=" + str(db_num) + " ")
                                file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                file.write("+SG_NUM=" + str(sg_num) + " ")
                                file.write("+DATA_CNT=" + str(data_count) + " ")
                                file.write("+DATA_UNIT=" + data_unit + " ")
                                file.write("-l ./case/mix_operation_type_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                flag = flag + 1

file = open("./case/multidb.sh", "w")

for ud_qp_num in [2]:
    for uc_qp_num in [2]:
        for rc_qp_num in [2]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            for db_num in range(2, 10):
                for sr_wqe_num in [0, 1]:
                    for read_wqe_num in [0, 1]:
                        for write_wqe_num in [0, 1]:
                            if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                                continue
                            if (rc_qp_num == 0):
                                if (read_wqe_num != 0):
                                    continue
                                if (uc_qp_num == 0):
                                    if (write_wqe_num != 0):
                                        continue
                            for sg_num in [1]:
                                for data_count in [10, 313, 4, 8, 16]:
                                    if (data_count == 10 or data_count == 313):
                                        data_unit = "B"
                                    else:
                                        data_unit = "KB"
                                    file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                        "+vpdfile+" + "./case/multidb_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                        "+UVM_TESTNAME=" + test_name + \
                                        " +HOST_NUM=2 +PROC_NUM=2 ")
                                    file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                    file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                    file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                    file.write("+DB_NUM=" + str(db_num) + " ")
                                    file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                    file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                    file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+SG_NUM=" + str(sg_num) + " ")
                                    file.write("+DATA_CNT=" + str(data_count) + " ")
                                    file.write("+DATA_UNIT=" + data_unit + " ")
                                    file.write("-l ./case/multidb_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                    flag = flag + 1

file = open("./case/multiqp.sh", "w")

for ud_qp_num in [0, 16, 64, 128]:
    for uc_qp_num in [0, 16, 64, 128]:
        for rc_qp_num in [0, 16, 64, 128]:
            if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
                continue
            if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
                continue
            for db_num in [1]:
                for sr_wqe_num in [0, 1]:
                    for read_wqe_num in [0, 1]:
                        for write_wqe_num in [0, 1]:
                            if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
                                continue
                            if (rc_qp_num == 0):
                                if (read_wqe_num != 0):
                                    continue
                                if (uc_qp_num == 0):
                                    if (write_wqe_num != 0):
                                        continue
                            for sg_num in [1]:
                                for data_count in [10]:
                                    if (data_count == 10):
                                        data_unit = "B"
                                    else:
                                        data_unit = "KB"
                                    file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                        "+vpdfile+" + "./case/multiqp_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                                        "+UVM_TESTNAME=" + test_name + \
                                        " +HOST_NUM=2 +PROC_NUM=2 ")
                                    file.write("+RC_QP_NUM=" + str(rc_qp_num) + " ")
                                    file.write("+UC_QP_NUM=" + str(uc_qp_num) + " ")
                                    file.write("+UD_QP_NUM=" + str(ud_qp_num) + " ")
                                    file.write("+DB_NUM=" + str(db_num) + " ")
                                    file.write("+WRITE_WQE_NUM=" + str(write_wqe_num) + " ")
                                    file.write("+READ_WQE_NUM=" + str(read_wqe_num) + " ")
                                    file.write("+SEND_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+RECV_WQE_NUM=" + str(sr_wqe_num) + " ")
                                    file.write("+SG_NUM=" + str(sg_num) + " ")
                                    file.write("+DATA_CNT=" + str(data_count) + " ")
                                    file.write("+DATA_UNIT=" + data_unit + " ")
                                    file.write("-l ./case/multiqp_log/case" + str(flag).zfill(flaglen) + ".log\n")
                                    flag = flag + 1