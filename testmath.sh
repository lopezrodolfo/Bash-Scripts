# Kera Hernandez COMP 310 Project 2 Team E

#!/bin/bash

# Functions.  must be before the main part of the script

# in each case method 1 uses $((..))
#              method 2 uses let
#              method 3 uses expr

add() {
    ans1=$(($1 + $2))
    let ans2=($1 + $2)
    ans3=$(expr $1 + $2)
}
sub() {
    ans1=$(($1 - $2))
    let ans2=($1 - $2)
    ans3=$(expr $1 - $2)
}
mult() {
    ans1=$(($1 * $2))
    let ans2=($1 * $2)
    ans3=$(expr $1 \* $2)
}
div() {
    ans1=$(($1 / $2))
    let ans2=($1 / $2)
    ans3=$(expr $1 / $2)
}
# End of functions
#
#
# Main part of the script
# need 3 arguments, and parse to make sure they are valid types
op=$1
arg1=$2
arg2=$3
[[ $# -lt 3 ]] &&
    echo "Usage: Provide an operation (a,s,m,d) and two numbers" && exit 1
[[ $op != a ]] && [[ $op != s ]] && [[ $op != d ]] && [[ $op != m ]] &&
    echo operator must be a, s, m, or d, not $op as supplied
# ok, do the work!

if [[ $op == a ]]; then
    add $arg1 $arg2
elif [[ $op == s ]]; then
    sub $arg1 $arg2
elif [[ $op == m ]]; then
    mult $arg1 $arg2
elif [[ $op == d ]]; then
    div $arg1 $arg2
else
    echo $op is not a, s, m, or d, aborting
    exit 2
fi
# Show the answers
echo $arg1 $op $arg2 :
echo 'Method 1, $((..)),' Answer is $ans1
echo 'Method 2, let,    ' Answer is $ans2
echo 'Method 3, expr,   ' Answer is $ans3
