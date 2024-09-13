# Kera Hernandez COMP 310 Project 2 Team E

#!/bin/bash

# Functions (must be defined before use)
func1() {
    echo " This is from function 1!"
}
func2() {
    echo " This is from function 2!"
}
func3() {
    echo " This is from function 3!"
}

# Beginning of the main script
#
# prompt the user to get their choice
echo "Enter a number from 1 to 3"
read x

# Call the chosen function
func$x
