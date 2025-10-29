#!/bin/bash

# Basic Colored Text
# \033[31m Starts Red Color
# \033[0m Resets the Color Back to Normal After Printing
echo -e "\033[31m This Text is Red \033[0m"

# Using Multiple Colors
echo -e "\033[32m This is Green \033[0m"
echo -e "\033[33m This is Yellow \033[0m"
echo -e "\033[34m This is Blue \033[0m"

# combining Text and Color in sentences
echo -e "User: \033[31mRedinit\033[0m"

# Using Bold + Color (1 for Bold)
echo -e "\033[1;35This is Bold Magenta Text\033[0m"

# Printing Error and Success Messages with Color
echo -e "\033[31m[Error]\033[0m Something Went Wrong!"
echo -e "\033[32m[Success]\033[0m Operation Completed Successfully!"
