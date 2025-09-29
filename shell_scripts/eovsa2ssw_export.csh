#! /bin/csh 

#SVN copy commands to update the code to be sent to the SSW
#distribution, Login to the server ovsa.njit.edu

# sudo /bin/csh eovsa2ssw_export.csh

# remove the old directories

foreach i (fits util)
    echo removing /srv/ftp/pub/eovsa/idl/$i
    rm -rf /srv/ftp/pub/eovsa/idl/$i
    echo exporting  to /srv/ftp/pub/eovsa/idl/$i
    svn export https://ovsa.njit.edu/svn/eovsa/trunk/idl/$i /srv/ftp/pub/eovsa/idl/$i
end
