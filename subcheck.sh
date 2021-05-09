#!/bin/sh


update_submodules ()
{
 echo "Updating submodules"
 git submodule foreach 'case $name in pyang) echo Skipped: $name;; *) git checkout master ; git pull;; esac'
 return $?
}



update_submodules
RES=$?

[ $RES = 0 ] && echo "All ok!"

### Exit status
exit $RES
