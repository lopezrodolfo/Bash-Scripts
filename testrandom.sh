#!/bin/bash
# Changed made by Nate Spinks Tester
##
# check to see if the user supplied in the parameter.

[[ $# -eq 0 ]] && echo "Usage: $0 word" && exit 1

echo "$1-$RANDOM"
exit 0

Make it executable and run it:

student:/tmp> chmod +x testrandom.sh 
student:/tmp> ./testrandom.sh strA

strA-29295

student:/tmp>./testrandom.sh strB

strB-23912

student:/tmp>./testrandom.sh strC

strC-27783
student:/tmp>