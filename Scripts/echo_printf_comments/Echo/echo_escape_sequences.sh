#/bin/bash

# Enable Interpretation of Escape Sequences Using -e
echo -e "Hello\nEveryone" # \n = Newline
# Output : 
# Hello
# Everyone


# Using Tab Spaces
echo -e "Name:\tRedinit" # \t = Tab Space
# Output :
# Name:   Redinit


# Printing Quotes Inside Strings
# \" is used to escape the double quotes — it tells Bash to treat the " as a character, not as the end of the string
echo -e "He Said,\"Bash is Fun!\"" # \" 
# Output :
# He Said, "Bash is Fun!"


# Combining Multiple Escape Sequences
echo -e "Line1\n\tLine2 Line3\nLine4"
# Output :
# Line1
#    Line2 Line3
# Line4
