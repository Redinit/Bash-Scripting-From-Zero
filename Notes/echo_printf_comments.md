#   Echo, Printf, and Comments

In Week 2, we’ll learn how to **print text**, **format outputs**, and **add comments** to explain scripts clearly.  
These are the foundation of making our Bash scripts readable and professional.

---

##  1. Introduction

In Bash scripting, we use two main commands to display output:

| Command | Description | Use Case |
|----------|--------------|-----------|
| `echo`   | Prints text with a newline by default | Simple messages, debugging |
| `printf` | Prints formatted text (no automatic newline) | Precise formatting and alignment |

---

##  2. Echo — Simple Printing

`echo` is the easiest way to display text or messages on the terminal.

###  Syntax
echo [option] [string]

### Example Script

```bash
#!/bin/bash

# Echo - prints text with newline by default (used mainly in simple messages and debugging) 

# Normal Echo Usage
echo "Hello"

# Using Echo With -n (No NewLine) option.
echo -n "Bash " # Removes the newline after printing

# Using Echo with -e (Enable interpretation of backslash escapes).
echo -e "\nHai\nEveryOne" # Creates new lines using \n

# Using colors in Echo with escape sequences.
echo -e "UserName: \033[31mRedinit\033[0m" # Prints username in red colour

# Common escape sequences:
# \n - New line
# \t - Tab space
# \\ - Backslash
# \" - Double quote

# Example using tab and newline
echo -e "Name:\tRedinit\nRole:\tLearner"
```

###  Echo Options and Escape Sequences

| Option | Description | Example | Output |
|:--------|:-------------|:---------|:--------|
| `-n` | Suppress newline | `echo -n "Hi"` | `Hi` (cursor stays on same line) |
| `-e` | Enable escape sequences | `echo -e "A\nB"` | A<br>B |
| `\n` | New line | `echo -e "Line1\nLine2"` | Line1<br>Line2 |
| `\t` | Tab space | `echo -e "A\tB"` | A B |
| `\033[31m` | Red color text | `echo -e "\033[31mRed\033[0m"` | <span style="color:red;">Red</span> |

##  3. Printf — Formatted Printing

printf provides more control than echo.
It doesn’t add a newline automatically and supports format specifiers (like in C language).

### Syntax
printf "format" arguments

### Example Script

```bash
#!/bin/bash

# Printf - print formatted text with no default newline.

# Basic syntax:
# printf "format" arguments

# Basic printf usage
printf "Hello %s\n" "World" # %s - string, \n - newline

# Format specifiers for printf:
# %s - string
# %d - integer
# %f - float (Decimals)

# Example usage
printf "Name: %s\nAge: %d\n" "Redinit" "20"

```

###  Printf Format Specifiers

| Specifier | Description | Example | Output |
|:-----------|:-------------|:---------|:--------|
| `%s` | String | `printf "%s\n" "Redinit"` | `Redinit` |
| `%d` | Integer | `printf "%d\n" 20` | `20` |
| `%f` | Float | `printf "%.2f\n" 3.1415` | `3.14` |
| `\n` | New line | `printf "A\nB"` | A<br>B |

## Comments in Bash
Comments help us explain the logic inside scripts.
The shell ignores everything after # on a line.

### Example Script
```
#!/bin/bash
# This script prints a welcome message

echo "Welcome to Bash scripting!"  # Inline comment example

```
