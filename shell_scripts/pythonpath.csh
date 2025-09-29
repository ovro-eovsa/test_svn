#set up python path variable, and path to Anaconda Python
/bin/echo $PYTHONPATH "What is PYTHONPATH?"
setenv PYTHONPATH '/home/user/test_svn/python:/common/python/current:/common/python:/common/python/packages/pipeline'
/bin/echo $PYTHONPATH "Is this doing anything?"
#If this is set, Python won’t add the user site directory to sys.path
setenv PYTHONNOUSERSITE 1
