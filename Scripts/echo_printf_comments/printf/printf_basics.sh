#!/bin/bash

# Simple printf Example.


# printf does not add a newline automatically
printf "Hello World"

# add newline manually using \n
printf "Hello World\n"

# using format specifiers
# %s - string, %d - integer, %f - float
printf "Name: %s\nAge: %d\nHeight: %.2f\n" "Redinit" 20 5.8

# multiple arguments in a single line
printf "%s is learning %s scripting.\n" "Redinit" "Bash"

# comparing with echo 
echo "This is echo"
printf " This is printf\n" # both look similar but printf allows better controll


# short note about printf
# printf gives more controll and precision than echo
# it doesn't add a newline automatically, we must use \n when needed
# format specifiers let us display values with precision or in structured form.
