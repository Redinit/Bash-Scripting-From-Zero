#!/bin/bash

# Purpose 
# to demonstarte how to print integers, strings and floating point numbers with printf in bash uisng format specifiers.
# am here use variables so dont worry, they will be fully explained in the next section!


# varaibles
int=42
string=42
float_num=3.14155

# print integer
printf "Integer: %d\n" "$int"

# print string
printf "String: %s\n" "$string"

# print float (default 6 decimal places)
printf "Float: %f\n" "$float"

# print float with 2 decimal places
printf "Float (2 decimal places): %.2f\n" "$float"

# comabined print
printf "Integer: %d\nString: %s\nFloat: %.4f\n" "$int" "$string" "$float_num"
