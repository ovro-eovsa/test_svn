#! /bin/tcsh -f
source /home/user/.cshrc
echo $PYTHONPATH
# Do a daily plot of the cross-power spectrum
/common/anaconda2/bin/python /common/python/current/daily_xsp.py >> /tmp/daily_xsp.log
