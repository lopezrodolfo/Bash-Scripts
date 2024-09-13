#!/bin/bash

# Prompts the user for a directory name and then creates it  with mkdir.
#changed it to NEW_DIRECTORY
echo "Give a directory name to create please:"
read NEW_DIRECTORY

# Save original directory so we can return to it (could also just use pushd, popd)

ORIG_DIR=$(pwd)

# check to make sure it doesn't already exist!

[[ -d $NEW_DIRECTORY ]] && echo $NEW_DIRECTORY already exists, aborting && exit
mkdir $NEW_DIRECTORY

# Changes to the new directory and prints out where it is using pwd.

cd $NEW_DIRECTORY
pwd

# Using touch, creates several empty files and runs ls on them to verify they are empty.

for n in 1 2 3 4; do
    touch file$n
done

ls file?

# (Could have just done touch file1 file2 file3 file4, just want to show do loop!)

# Puts some content in them using echo and redirection.

for names in file?; do
    echo This file is named $names >$names
done

# Displays their content using cat

cat file?

# Says goodbye to the user and cleans up after itself

cd $ORIG_DIR
rm -rf $NEW_DIRECTORY
echo "Later man!"
