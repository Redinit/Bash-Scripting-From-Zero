# Variables

 variables are container which stores values/data in it and use it in programs and scripts 

Important truth:
- Bash variables are **untyped**
- By default, values are treated as **strings**
- Bash interprets values based on **context** (string, arithmetic, test, etc.)


## bash variable assigning;

```bash
# declaring variable 
My_Var="Redinit" # My_Var : variable name, = : assigning value, "Redinit" : value
```

## Accessing Variables
accessing variables means using it in script or program

```bash
# declare var
my_var="Redinit"

# Accessing var. ${var} is used to access var
echo "${my_var}"
# OR
echo "$my_var"
```
 * use quotes to prevent from word splitting

 While `echo "$my_var"` works, using **braces** `${my_var}` is best practice. The braces tell Bash exactly where the variable name ends, preventing errors when concatenating variables with other text.

---
## Declaring Variable

there are some rules to follow up to make a correct variable without getting error;
1. start with a letter or _
2. can contain letters, digits, _
3. cannot start with a number

Correct Syntax;
```bash
var_name="value"

# no space around =
name="Redinit"    # correct
name = "Redinit"  # wrong
```

```bash
# correct
Service="ssh"
_version="1.0"

# incorrect
2name="wrong"
my-name="wrong"
```
## Scope
 in bash variables are global by default, local variables are only exits inside functions using `local var_name` 
 
 global : access from anywhere from the script or program 
 
 local    : cant access from anywhere only access inside a function 

### Global Variables
global variables are variables that can be accessed from anywhere in the script or program 

```bash
# global variables
my_var="Global Variables are like this, can accessed from anywhere on the script"
name="Redinit"
Age=20
```


### Local Variables
local variables are variables that cant be accessed from anywhere one the script, they only accessed in functions

```bash
# Local Variables
# using Function to creat a code block 
my_function() {
       local name="redinit"
       local whoami=$(whoami) # assigning command output to var
       echo "${whoami}" # only inside it can access this variables inside my_function
}
```


### Environment Variables
environment variables are dynamic value it used and accessed by process, scripts and etc on the system for the working. 
env variables stores user env info, system info and which can be accessed by programs and process.

- it is a key-value pair

**some common env variables;**
```bash
HOME
PWD
SHELL
USER
PATH
```

- variables like `HOME`, `PWD`, `SHELL`, and `USER` are usually exported by the shell at startup 

To make a user-defined variable available to **child processes** (programs launched from the current shell), we must use `export`

```bash
My_API_Key="abc123xyz" # Shell Variable 
export My_API_Key # Now it's an Environment Variable
```

## Assigning Command Output to Variable

in bash we can use $(command) to execute command in script to add output to the variable;
```bash
whoami=$(whoami)
echo "${whoami}"

system_info=$(uname -a)
echo "${system_info}"
```

## Reading value & Adding to Variable, Unsetting Variable, Arithmetic With Variable

```bash
# Reading and adding value into var
echo "enter name:"          # user enter name
read name                   # read gets the value and create name variable with the value

# OR

read -p "Enter Name:" name           # user input prompt and creates and adds value to variable
read -s -p "Enter Password" Password # typng password are not visible by using options -s


# UnSetting Variables
Name="Redinit"
echo "${Name}"
unset Name            # Removes the Var value
echo "${Name}"        # output become empty


# Arithmatic Using Variables
Num1="10"
cal=$((Num1 + 5))
echo "${cal}" # Output : 15

# Increment/Decrement
num2=10
increment=$((num2++)) # This will increment the value by one
echo "${increment}"   # output : 10
echo "${num2}"        # output : 11
```

## Increment and Decrement: The Key Difference

**Post Increment**
```bash
# Increment/Decrement
num2=10
increment=$((num2++)) # This will increment the value by one
echo "${increment}"   # output : 10
echo "${num2}"        # output : 11

num1=5
decrement=$((num1--)) # This will decrement the value by one
echo "${decrement}"   # output : 5
echo "${num1}"        # output : 4
```



**Pre-Increment**
```bash
# Increment/Decrement
num1=20
increment=$((++num1)) # This will increment the value by one
echo "${increment}"   # output : 21
echo "${num1}"        # output : 21

num2=30
decrement=$((--num2)) # This will decrement the value by one
echo "${decrement}"   # output : 29
echo "${num2}"        # output : 29
```

| variable++ | Post Increment | Use the variable's **current value** first, then increase the variable's value by 1. | The variable holding the result gets the **old** value. |
| ---------- | -------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------------- |
| ++variable | Pre Increment  | Increase the variable's value by 1 first, then use the **new value**.                | The variable holding the result gets the **new** value. |

---

## Special Parameters (Variables)

Special Parameters are variables that are automatically set and maintained by the bash shell when a script or command is run. They provide critical runtime information and cannot be modified by the user.

They are primarily managed by the command line arguments and checking the results of the executed commands.

### Arguments (Positional Parameters)
These variables capture the input provided to the script or function on the command line


| Variable      | Description                                                                | Example                     |
| ------------- | -------------------------------------------------------------------------- | --------------------------- |
| $0            | The name of script being executed                                          | `echo "Running script: $0"` |
| $1, $2, etc.. | The individual arguments passed to the script                              | `IP=$1`                     |
| $#            | The number of arguments passed                                             | `if [ $# -ne 2 ]`           |
| $@            | All arguments (best for iterating in looping, preserves quoted arguments.) | `for arg in "$@"`           |
| $*            | All arguments treated as a single string                                   | `echo "all arguments: $*"`  |


#### $0 
This hold the name of the script being executed.

```bash
# script for scan ip
./script.sh 192.168.1.10 8080 
```

- `./script.sh` : executing the script

**script;**
```bash
# $0 to get script name.
echo "$0" # output : script.sh

# $1 to get first argument
echo "$1" # output : 192.168.1.10

# $2 to get second argument
echo "$2" # output : 8080

# $# to get the number of arguments passed to the script
echo "$#" # output : 2

# $@ to get all arguments passed to the script
echo "$@" # output : 192.168.1.10 8080

# $* to get all arguments as a single string
echo "$*" # output : 192.168.1.10 8080
```



### Handling Arguments Greater than 9

we can handle the arguments that range from 0 to 9 by using;

```bash
echo "$1" # we can use this from 0 to 9 

# access arguments greater than 9
echo "${10}" 
echo "${15}" 
```

- To access the tenth argument and beyond, we **must** enclose the number in braces to distinguish the variable from the number 1 followed by the number 0 (e.g., `$10` vs `${10}`).


| Argument Number | Incorrect Access | Correct Access | Description                                                            |
| --------------- | ---------------- | -------------- | -------------------------------------------------------------------- |
| 10th argument   | $10              | ${10}          | $10 is incorrectly read as $1 followed b                               |
| 11th argument   | $11              | ${11}      ${11} the braces tell the entire number is part of the variable name he  is  |

### The Critical Difference: `"$@"` vs. `"$*"`

Both `$@` and `$*` refer to all positional arguments (`$1`, `$2`, etc.), but their behavior when enclosed in **double quotes** is radically different. This difference is crucial for handling arguments that contain spaces.

 #### **Example;**
Imagine our script is run: `./script.sh "hello world" file2.txt`

| Variable | Quotes Used   | Interpretation by Bash   | Description                                                                                                                                                                   |
| -------- | ------------- | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| "$@"     | Double Quoted | "hello world" "file.txt" | - This preserves arguments   containing spaces as single items                                           - "hello world", "file.txt" is 2 sperate words (preserves the space) |
| "$*"     | Double Quoted | "hello world file.txt"   | - 1 Single word (joins everything)                                                                                                                                            |

## Status and Process Info

These variables give real-time feedback on the script environment and execution results.



| Variable | Description                                       | Example Use Case                                   |
| -------- | ------------------------------------------------- | -------------------------------------------------- |
| $?       | Exit status of the last command executed          | `0` = Success; Any non-zero value = Error/Failure. |
| $$       | The process id (PID) of the current shell/script  | Used for temporary files: `/tmp/log_$$`            |
| $!       | The PID of the last command run in the background | Used to monitor background jobs: `wait $!`         |
