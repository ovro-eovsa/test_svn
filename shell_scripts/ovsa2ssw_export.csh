#! /bin/csh -f

#SVN copy commands to update the code to be sent to the SSW
#distribution, Login to the server ovsa.njit.edu

# sudo /bin/csh ovsa2ssw_export.csh

# remove the old directories

foreach i (doc idl)
    echo removing /var/www/html/ovsa/$i
    rm -rf /var/www/html/ovsa/$i
    echo exporting  to /var/www/html/ovsa/$i
    svn export https://ovsa.njit.edu/svn/eovsa/trunk/idl/ovsa_repo/$i /var/www/html/ovsa/$i
end
