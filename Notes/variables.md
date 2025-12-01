#  Bash Variables – Complete Guide

Bash variables allow you to store and reuse values inside scripts or shell sessions.
Unlike many programming languages, Bash does not have data types — all variables hold strings, and Bash interprets them differently depending on how you use them.

This guide covers everything you need: declaration, scope, best practices, subshell traps, and examples.

---

## 1. What Is a Variable?

A variable is a name that stores a value.

**Example:**
```bash
name="Redinit"
echo "$name"
```
- name → variable name

- "Viswa" → stored value

- $name → accessing the value

Variables allow you to avoid repetition and write flexible scripts.

---

## 2. Bash Has No Datatypes

Bash does NOT support datatypes like:

  - integer

  - float

  - boolean

 -  char

All variables are stored as strings.

#### *Example:*
```Bash

num="10"
echo $((num + 5)) # Bash treats it as number only inside arithmetic expansion
```

---

### 3. Declaring Variables

##### Correct Syntax

```Bash

var_name="value"

# No spaces around =

name="Redinit" # correct
name = "Redinit" # wrong

```
#### Valid variable names

  - Start with a letter or _

  - Can contain letters, digits, _

  - Cannot start with a number

##### Correct:
```Bash
user_name="Easycron"
_version="1.0"
```
##### Incorrect:
```Bash

2name="wrong"
my-name="wrong"
```

---

### 4. Accessing Variables

Use:
```Bash

echo "$var"
```
Or:
```Bash

echo "${var}"
```
🔑 Best Practice: Always quote your variables ("$var") to avoid problems with spaces or special characters in the value.

##### Example:
```Bash
file="my notes.txt"
echo "$file"
```

---

### 5. Types of Variables

##### Bash supports two main scopes:

  - Global variables (default)

  - Local variables (inside functions only)

Additionally, there are Environment variables (exported to child processes).

---

### 6. Global Variables

A global variable is available anywhere in the script unless shadowed by a local variable within a function.

##### Example:
```bash
 name="Redinit"

say_hello() {
    echo "Hello $name"
}

say_hello
echo "$name"
```
##### Output
```bash
Hello Redinit
Redinit
```

---

### 7. Local Variables
Local variables exist only inside a function.

##### Example:
```Bash

greet() {
    local msg="Hello"
    echo "$msg"
}

greet
echo "$msg" # This will be empty because 'msg' is local to 'greet'
```
##### Output:
```bash
Hello

```

#### Why use local?

  - Prevents global variable conflicts

  - Keeps functions self-contained

---

### 8. Environment Variables

Environment variables are global + exported to child processes.

##### Example:
```Bash
export PATH
export USERNAME="Redinit"
```
* List environment variables: printenv

#### Common Environment Variables:

    PATH

    HOME

    USER

    SHELL

    PWD
----

### 9. Assign Command Output to Variables

```bash
Use $() for command substitution:
today=$(date)
echo "$today"
```
##### Example:
```bash
files=$(ls /etc)
echo "$files"
```

🔑 Tip: $() is generally preferred over backticks (``) because it’s more readable and supports nesting.

---

### 10. Reading Input into Variables

##### Simple read:
```Bash
read username
echo "You typed: $username"
```
##### With prompt:
```Bash
read -p "Enter your name: " name
```

##### Silent input (passwords):
```Bash
read -s -p "Password: " pass
```

---

### 11. Unsetting Variables
Use the unset command to remove a variable:
```bash
unset var
```
##### Example
```bash
x=10
unset x
echo "$x" # empty
```
---

### 12. Arithmetic with Variables
Since all values are strings, use (( )) for mathematical operations:
```bash
x=10
y=5

echo $((x + y))
echo $((x * y))
```
##### Increment / decrement:
```bash
count=0
((count++)) # or ((count--))
echo "$count"
```
---

### 13. Boolean Logic in Bash
In Bash, there are **no** `True` or `False` variables like in Python or Java. Instead, Bash uses the **Exit Code** of a command to determine success or failure.

Think of it like this:

| Exit Code | Meaning | Logic | Condition (e.g., in an `if` statement) |
| :---: | :--- | :---: | :---: |
| **0** | **Success** (The command ran perfectly) | **TRUE** | `if [ command runs successfully ]` |
| **Non-Zero** (1-255) | **Failure** (Something went wrong) | **FALSE** | `if [ command fails ]` |

Example (using if to check the exit code of grep):
```bash
# This command tries to find the word "root" in /etc/passwd
# If it finds it, the exit code is 0 (TRUE).
if grep "root" /etc/passwd; then
    echo "Found"
else
    # If it doesn't find a match, the Exit Code will be non-zero (or FALSE).
    echo "Not found"
fi
```
##### Key Takeaway : If a command runs without error, it's considered TRUE by Bash logic.

---

### Summary Table
| Type | Declared Using | Visible Where? | Passed to Child Processes? |
| :--- | :--- | :--- | :--- |
| Global Variable | var=value | Entire script | ❌ No |
| Local Variable | local var=value | Function only | ❌ No |
| Environment Variable | export var=value | Script + child processes | ✔ Yes |

---

##### Best Practices

    Always quote variables → "${var}"

    Use local inside functions

    Use UPPERCASE for environment variables

    Use descriptive names (e.g., max_attempts instead of m)

    Avoid unnecessary export

    Prefer $() over backticks

    Avoid modifying global variables inside functions unless intentional

---

### Quick Reference

| Action | Command |
| :--- | :--- |
| Declare | var="value" |
| Access | echo "$var" |
| Local in function | local x=5 |
| Environment variable | export PATH |
| Delete variable | unset var |
| Store command output | today=$(date) |
| Arithmetic | echo $((1+2)) |
| Read input | read name |
