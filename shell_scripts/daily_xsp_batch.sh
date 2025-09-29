#! /bin/bash
/bin/echo $PYTHONPATH "What is PYTHONPATH?"
export PYTHONPATH=/home/user/test_svn/python:/common/python/current:/common/python:/common/python/packages/pipeline
/bin/echo $PYTHONPATH "Is this doing anything?"
/common/anaconda2/bin/python /common/python/current/daily_xsp_batch.py
