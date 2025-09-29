#! /bin/csh -f

#SVN copy commands to update the code to be sent to the SSW
#distribution, Login to the server ovsa.njit.edu

# sudo /bin/csh gx2ssw_export.csh

# remove the old directories

foreach i (help idl demo bitmaps support userslib)
    echo removing /var/www/html/gx/$i
    rm -rf /var/www/html/gx/$i
    echo exporting  to /var/www/html/gx/$i
    svn export https://ovsa.njit.edu/svn/eovsa/trunk/idl/gx_repo/$i /var/www/html/gx/$i
end
