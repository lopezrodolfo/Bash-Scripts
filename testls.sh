#!/bin/bash
#
# check for non-existent file, exit status will be 2
#
ls NewFile.ext
echo "status: $?"

# create file, and do again, exit status will be 0
touch NewFile.ext
ls NewFile.ext
echo "status: $?"

# remove the file to clean up
rm NewFile.ext
