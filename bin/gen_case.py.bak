test_name = "test_direct_param"
output_exe = "./hca_test"

max_qp_num = 4096
host_num = 2
proc_num = 1
flag = 0
flaglen = 4
max_mr_size = 1024 * 1024 * 1024
qp_size = 4096 + 4096
cq_size = 4096

def delete_line(file, key_string, case_class):
    file.write("sed -i '" + key_string + "' ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")

def delete_redundancy(file, case_class):
    str1 = "/Memory Collision Error/d"
    str2 = "/A read was perf/d"
    str3 = "/TSDN28/d"
    str4 = "/^\s*$/d"
    str5 = "/If BWEB/d"
    delete_line(file, str1, case_class)
    delete_line(file, str2, case_class)
    delete_line(file, str3, case_class)
    delete_line(file, str4, case_class)
    delete_line(file, str5, case_class)

def write_file(case_class):
    file.write(output_exe + " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                                        "+vpdfile+" + "./case/" + case_class + "_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
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
    file.write("-l ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log ")
    file.write("+vcs+lic+wait\n")
    file.write("sed -i '/Memory Collision Error/d' ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")
    file.write("sed -i '/A read was perfor/d' ./case/"+ case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")
    file.write("sed -i '/TSDN28/d' ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")
    file.write("sed -i '/If BWEB/d' ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")
    file.write("sed -i '/^\s*$/d' ./case/" + case_class + "_log/case" + str(flag).zfill(flaglen) + ".log\n")
    # delete_redundancy(file, case_class)

def write_file_parallel(case_class):    
    file.write("bsub " + "-J " + str(flag).zfill(flaglen) + " -o " + "./case/" + case_class +"_log/case" + str(flag).zfill(flaglen) + ".log " + output_exe + \
                " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                "+vpdfile+" + "./case/" + case_class + "_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
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
    file.write("+CASEID=" + str(flag).zfill(flaglen) + " ")
    file.write("+vcs+lic+wait\n")

def write_500MB(case_class):
    file.write("bsub " + "-J " + str(flag).zfill(flaglen) + " -o " + "./case/" + case_class +"_log/case" + str(flag).zfill(flaglen) + ".log " + output_exe + \
                " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                "+vpdfile+" + "./case/" + case_class + "_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                "+UVM_TESTNAME=" + test_name + \
                " +HOST_NUM=2 +PROC_NUM=2 ")
    file.write("+RC_QP_NUM=2 +UC_QP_NUM=0 +UD_QP_NUM=0 ")
    file.write("+DB_NUM=1 ")
    file.write("+WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 ")
    file.write("+SG_NUM=1 ")
    file.write("+DATA_CNT=500 +DATA_UNIT=MB ")
    file.write("+CASEID=" + str(flag).zfill(flaglen) + " ")
    file.write("+vcs+lic+wait\n")

def write_4KQP(case_class):
    file.write("bsub " + "-J " + str(flag).zfill(flaglen) + " -o " + "./case/" + case_class +"_log/case" + str(flag).zfill(flaglen) + ".log " + output_exe + \
                " -uvmDebug +UVM_VERBOSITY=UVM_LOW " + \
                "+vpdfile+" + "./case/" + case_class + "_wave/wave" + str(flag).zfill(flaglen) + ".vpd " +\
                "+UVM_TESTNAME=" + test_name + \
                " +HOST_NUM=2 +PROC_NUM=2 ")
    file.write("+RC_QP_NUM=4096 +UC_QP_NUM=0 +UD_QP_NUM=0 ")
    file.write("+DB_NUM=1 ")
    file.write("+WRITE_WQE_NUM=1 +READ_WQE_NUM=0 +SEND_WQE_NUM=0 +RECV_WQE_NUM=0 ")
    file.write("+SG_NUM=1 ")
    file.write("+DATA_CNT=244 +DATA_UNIT=KB ")
    file.write("+CASEID=" + str(flag).zfill(flaglen) + " ")
    file.write("+vcs+lic+wait\n")

def check_valid():
    if (data_unit == "B"):
        data_amount = data_count
    elif (data_unit == "KB"):
        data_amount = data_count * 1024
    elif (data_unit == "MB"):
        data_amount = data_count * 1024 * 1024
    else:
        return 0
    
    if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
        return 0
    if (rc_qp_num + uc_qp_num + ud_qp_num > max_qp_num):
        return 0
    
    if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
        return 0
    if (sr_wqe_num + read_wqe_num + write_wqe_num > 30):
        return 0
    if (rc_qp_num == 0):
        if (read_wqe_num != 0):
            return 0
        if (uc_qp_num == 0):
            if (write_wqe_num != 0):
                return 0
    
    # check data amount
    if  data_amount * \
    sg_num * \
    (rc_qp_num * (write_wqe_num + read_wqe_num + sr_wqe_num * 2) + \
        uc_qp_num * (write_wqe_num + sr_wqe_num * 2) +  \
        ud_qp_num * sr_wqe_num * 2) * \
    db_num + \
    (qp_size + cq_size) * (rc_qp_num + uc_qp_num + ud_qp_num) > max_mr_size:
        return 0
    return 1

# file = open("./case/small_datacount.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [0, 2]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             db_num = 1
#             for sr_wqe_num in [0, 1]:
#                 for read_wqe_num in [0, 1]:
#                     for write_wqe_num in [0, 1]:
#                         if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                             continue
#                         if (rc_qp_num == 0):
#                             if (read_wqe_num != 0):
#                                 continue
#                             if (uc_qp_num == 0):
#                                 if (write_wqe_num != 0):
#                                     continue
#                         for sg_num in range(1, 7):
#                             for data_count in [10, 313, 1453, 4, 8, 16]:
#                                 if (data_count !=4 and data_count != 8 and data_count != 16):
#                                     data_unit = "B"
#                                 else:
#                                     data_unit = "KB"
#                                 write_file("small_datacount")
#                                 flag = flag + 1
# file.close()

# file = open("./case/medium_datacount.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [0, 2]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             db_num = 1
#             for sr_wqe_num in [0, 1]:
#                 for read_wqe_num in [0, 1]:
#                     for write_wqe_num in [0, 1]:
#                         if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                             continue
#                         if (rc_qp_num == 0):
#                             if (read_wqe_num != 0):
#                                 continue
#                             if (uc_qp_num == 0):
#                                 if (write_wqe_num != 0):
#                                     continue
#                         for sg_num in range(1, 7):
#                             for data_count in [64, 128, 256]:
#                                 if (data_count == 1):
#                                     data_unit = "MB"
#                                 else:
#                                     data_unit = "KB"
#                                 write_file("medium_datacount")
#                                 flag = flag + 1
# file.close()

# file = open("./case/mix_service_type.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [2, 10]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             db_num = 1
#             for sr_wqe_num in [0, 1]:
#                 for read_wqe_num in [0, 1]:
#                     for write_wqe_num in [0, 1]:
#                         if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                             continue
#                         if (rc_qp_num == 0):
#                             if (read_wqe_num != 0):
#                                 continue
#                             if (uc_qp_num == 0):
#                                 if (write_wqe_num != 0):
#                                     continue
#                         for sg_num in range(1, 7):
#                             for data_count in [10, 4, 8, 16]:
#                                 if (data_count == 10):
#                                     data_unit = "B"
#                                 else:
#                                     data_unit = "KB"
#                                 write_file("mix_service_type")
#                                 flag = flag + 1
# file.close()

# file = open("./case/mix_operation_type.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [2]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             db_num = 1
#             for sr_wqe_num in [1, 5, 10]:
#                 for read_wqe_num in [1, 5, 10]:
#                     for write_wqe_num in [1, 5, 10]:
#                         if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                             continue
#                         if (rc_qp_num == 0):
#                             if (read_wqe_num != 0):
#                                 continue
#                             if (uc_qp_num == 0):
#                                 if (write_wqe_num != 0):
#                                     continue
#                         for sg_num in range(1, 7):
#                             for data_count in [10, 4, 8, 16]:
#                                 if (data_count == 10):
#                                     data_unit = "B"
#                                 else:
#                                     data_unit = "KB"
#                                 write_file("mix_operation_type")
#                                 flag = flag + 1
# file.close()

# file = open("./case/multidb.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [2]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             for db_num in range(2, 10):
#                 for sr_wqe_num in [0, 1]:
#                     for read_wqe_num in [0, 1]:
#                         for write_wqe_num in [0, 1]:
#                             if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                                 continue
#                             if (rc_qp_num == 0):
#                                 if (read_wqe_num != 0):
#                                     continue
#                                 if (uc_qp_num == 0):
#                                     if (write_wqe_num != 0):
#                                         continue
#                             for sg_num in [1]:
#                                 for data_count in [10, 313, 4, 8, 16]:
#                                     if (data_count == 10 or data_count == 313):
#                                         data_unit = "B"
#                                     else:
#                                         data_unit = "KB"
#                                     write_file("multidb")
#                                     flag = flag + 1
# file.close()

# file = open("./case/multiqp.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [0, 16, 32, 64]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             for db_num in [1]:
#                 for sr_wqe_num in [0, 1]:
#                     for read_wqe_num in [0, 1]:
#                         for write_wqe_num in [0, 1]:
#                             if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                                 continue
#                             if (rc_qp_num == 0):
#                                 if (read_wqe_num != 0):
#                                     continue
#                                 if (uc_qp_num == 0):
#                                     if (write_wqe_num != 0):
#                                         continue
#                             for sg_num in [1]:
#                                 for data_count in [10]:
#                                     if (data_count == 10):
#                                         data_unit = "B"
#                                     else:
#                                         data_unit = "KB"
#                                     write_file("multiqp")
#                                     flag = flag + 1
# file.close()

# file = open("./case/multiwqe.sh", "w")
# for ud_qp_num in [0]:
#     for uc_qp_num in [0]:
#         for rc_qp_num in [0, 16, 32, 64]:
#             if (rc_qp_num == 0 and uc_qp_num == 0 and ud_qp_num == 0):
#                 continue
#             if (rc_qp_num + uc_qp_num + ud_qp_num > 8192):
#                 continue
#             for db_num in [1]:
#                 for sr_wqe_num in [0, 1, 5, 10]:
#                     for read_wqe_num in [0, 1, 5, 10]:
#                         for write_wqe_num in [0, 1, 5, 10]:
#                             if (sr_wqe_num == 0 and read_wqe_num == 0 and write_wqe_num == 0):
#                                 continue
#                             if (sr_wqe_num + read_wqe_num + write_wqe_num > 30):
#                                 continue
#                             if (rc_qp_num == 0):
#                                 if (read_wqe_num != 0):
#                                     continue
#                                 if (uc_qp_num == 0):
#                                     if (write_wqe_num != 0):
#                                         continue
#                             for sg_num in [1]:
#                                 for data_count in [4097]:
#                                     if (data_count !=4 and data_count != 8 and data_count != 16):
#                                         data_unit = "B"
#                                     else:
#                                         data_unit = "KB"
#                                     write_file("multiwqe")
#                                     flag = flag + 1
# file.close()

file = open("./case/pressure.sh", "w")
write_500MB("pressure")
flag = flag + 1
write_4KQP("pressure")
flag = flag + 1
for ud_qp_num in [0]:
    for uc_qp_num in [0]:
        for rc_qp_num in [0, 2, 64, 4096]:
            for db_num in [1, 3]:
                for sr_wqe_num in [0, 1, 10]:
                    for read_wqe_num in [0, 1, 10]:
                        for write_wqe_num in [0, 1, 10]:
                            for sg_num in [1, 3]:
                                for data_count in [1453, 64, 244]:
                                    if (data_count == 1453):
                                        data_unit = "B"
                                    else:
                                        data_unit = "KB"
                                    if (check_valid() == 1):
                                        write_file_parallel("pressure")
                                        flag = flag + 1
file.close()