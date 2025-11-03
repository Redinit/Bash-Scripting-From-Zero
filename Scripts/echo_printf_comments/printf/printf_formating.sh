#!/bin/bash
# printf_formating.sh
# This script demonstrates printf formatting options in Bash.
# It shows how to control width, alignment, zero padding, and precision.
# All the explanations below are added to help beginners understand every detail.

# Integer formatting
num=42

# %d = integer type
printf "Default integer: %d\n" "$num"

# %5d = right-align integer in width of 5
printf "Width 5 (right-aligned): %5d\n" "$num"

# %-5d = left-align integer in width of 5
# NOTE: We must pass "$num" after the format. 
# If you forget the variable, printf prints 0 by default.
printf "Width 5 (left-aligned): %-5d<-left\n" "$num"

# %05d = pad with zeros, width 5 (means total 5 characters including number)
# For example, 42 → 00042 (3 zeros + 2 digits = 5 total)
printf "Zero padded (width 5): %05d\n\n" "$num"  # \n\n adds one blank line after output


# String formatting
name="Redinit"

# %s = string type
printf "Default string: %s\n" "$name"

# %10s = right-align string in width 10
printf "Width 10 (right-aligned): %10s\n" "$name"

# %-10s = left-align string in width 10
printf "Width 10 (left-aligned): %-10s<-left\n\n" "$name"  # <- shows the space padding on right side


# Float formatting
pi=3.14159265

# %f = float type (default 6 decimal places)
printf "Default float: %f\n" "$pi"

# %.2f = 2 decimal places
printf "Float with 2 decimals: %.2f\n" "$pi"

# %8.3f = total width 8, 3 decimals, padded with spaces by default
# Example: 3.142 → "   3.142" (width=8)
printf "Float width 8, 3 decimals: %8.3f\n" "$pi"

# %08.3f = same as above, but zero padded instead of space padded
# Breakdown:
#   0  → pad with zeros
#   8  → total width = 8 characters
#   .3 → 3 digits after decimal point
#   f  → float type
# Example: 3.14159265 → rounded to 3.142 → printed as 0003.142 (5 digits + 3 zeros = 8 total)
printf "Float zero padded width 8, 3 decimals: %08.3f\n\n" "$pi"


# Combined example
# Combining different types together:
# %s → string, %d → integer, %.2f → float (2 decimals)
printf "Name: %-10s | Score: %05d | Pi: %.2f\n" "$name" "$num" "$pi"


# Format specifier structure reference:
# %[flags][width][.precision][type]
# Example: %-10.2f
#   - : left-align
#   10 : total width
#   .2 : 2 decimal places
#   f  : float type
