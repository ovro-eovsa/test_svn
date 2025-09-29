#! /bin/csh

#Processes IDB files into UDB files, also creates FITS format files

#set up python path variable
setenv PYTHONPATH /home/user/test_svn/python

#For Miriad
source ~/miriad/miriad_start.csh

#Need an IDL_DIR variable
setenv IDL_DIR /usr/local/exelis/idl82
# make sure IDL_PATH is intialized
if !( $?IDL_PATH ) then
   setenv IDL_PATH '<IDL_DEFAULT>'
endif

#Define SSW, SSWDB
setenv SSW /ssw
setenv SSWDB /sswdb

# SSW setup
source $SSW/gen/setup/setup.ssw
#To get different Instrument setups
setssw ovsa eovsa

# Add local directories to IDL_PATH
setenv IDL_STARTUP /home/user/cronjob_idl_startup.pro

cd /home/user/workdir
setenv datestr `date +%Y%m%d`
if ! (-d /data1/eovsa/fits/images/${datestr} ) then
   mkdir /data1/eovsa/fits/images/${datestr}
endif
set line="$datestr"
/usr/bin/python /home/user/test_svn/python/udb_process_spec.py >> /data1/processing/LOG/udb_process_spec_log.txt_$line
# 2018-12-16 (DG) Turn off creation of spectrum fits file for now--update with rational total power calibration asap
#ssw_batch /home/user/workdir/udb_process_spec.pro /home/user/workdir/udb_process_spec.out
