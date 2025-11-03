#!/bin/bash

# This script demonstrates real-world examples of using printf in Bash.
# It combines integers, strings, and floats with formatting to create clean, readable output.

# Example 1: Table of user scores
# --------------------------------
# Here we print a table with fixed-width columns using printf formatting.
# %-10s = left-align string in width 10
# %05d   = zero-padded 5-digit integer
# %6.2f  = float with total width 6, 2 decimals

printf "================================\n"
printf "| %-10s | %-5s | %-6s |\n" "Name" "Score" "Percent"
printf "================================\n"


printf "| %-10s | %05d | %6.2f  |\n" "Luna" 42 89.5
printf "| %-10s | %05d | %6.2f  |\n" "John" 7 76.32
printf "| %-10s | %05d | %6.2f  |\n" "Redinit" 105 99.99
printf "================================\n\n"


# Example 2: System information display
# -------------------------------------
# Using printf to neatly display variable data (system-style output)

user="root"
host="localhost"
uptime="5 days, 3 hours"
loadavg=0.85

printf "System Information:\n"
printf "User      : %s\n" "$user"
printf "Hostname  : %s\n" "$host"
printf "Uptime    : %s\n" "$uptime"
printf "Loadavg   : %.2f\n" "$loadavg"
