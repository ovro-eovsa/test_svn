#! /bin/csh 

# copies the proc_status file onec every 10 minutes, to a file /data1/LOG/status_files/dpp_proc_status.txt_HHMMSS

# /bin/csh dpp_proc_status_move.csh

setenv datestr `date +%H%M`
set ext=$datestr

/bin/cp /data1/LOG/dpp_proc_status.txt /data1/LOG/status_files/dpp_proc_status.txt_$ext
