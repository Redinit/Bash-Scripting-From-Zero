# Introduction to Bash Scripting 




This guide introduces Bash scripting fundamentals, including what a shell is, why scripts are used, the shebang line, file permissions, and how scripts are executed.

---

##  What is Bash?

- **Bash** stands for **Bourne Again SHell**
- It is a command-line interpreter (CLI) that allows you to interact with the operating system.
- Acts as an intermediary between the user and the OS, allowing execution of commands and programs without a GUI
- It offers power and flexibility for task automation, combining commands, and writing scripts

---

##  Understanding Shells

A **shell** enables you to:
- Execute programs
- Run system commands
- Manage files and processes

A **shell** is an intermediary between the user and the os, invoking programs and system calls (directly or indirectly) to interact with the kernel.

---

##  Bash Scripts
A **script** is simply a text file containing one or more commands.

Bash scripts can include **programming features** like:
- Variables
- Conditional statements (`if`, `else`)
- Loops (`for`, `while`)
- Functions

Scripts allow us to **automate tasks**, reduce manual effort, and improve consistency.

---

##  The Shebang Line (`#!/bin/bash`)

Most Bash scripts begin with a shebang line:

```bash
#!/bin/bash
```

```bash
#!/usr/bin/env bash
```
- `#!/bin/bash`          : poor portability because different systems can have interpreters installed in different locations
- `#!/usr/bin/env bash`  : more portability because we don't have to write the absolute path to an interpreter, env finds Bash in $PATH

This tells the os which interpreter to use when running the script.
### Examples in Other Languages
| Language | Shebang              |
|----------|----------------------|
| Python   | `#!/usr/bin/python3` |
| Perl     | `#!/usr/bin/perl`    |

###  Why it matters:

   * When we run ./script.sh, the OS checks the shebang to determine how to execute the script
   * If we run bash script.sh, the shebang is ignored because Bash is explicitly invoked

If the shebang is missing or incorrect, the script may run with the wrong shell, causing unexpected behavior or syntax errors.

## File Permissions in Linux

Linux uses permission bits to control access to files:

| Permission | Symbol | Meaning              |
|------------|--------|----------------------|
| Read       | `r`    | View file contents   |
| Write      | `w`    | Modify file contents |
| Execute    | `x`    | Run the file         |

## Making a Script Executable

To make a script executable:
```bash
# give execute permission to the script
chmod +x scriptname.sh
```

* Without the execute bit (x), we cannot run the script using ./script.sh
* However, we can still run it directly via the interpreter:
```bash
bash scriptname.sh
```

##  Running Bash Scripts

There are two common methods to run a Bash script:
1. Direct Execution (requires execute permission):
```bash
chmod +x scriptname.sh # give execute permission to the script 
./scriptname.sh          # execute script directly
```

2. Using the Interpreter Explicitly (no execute permission required):
```bash
bash scriptname.sh           # run script by specifying the interpreter (bash)
```

## How Bash Scripts Are Executed ?
When a script is executed, the os:

- Checks execute permission

- Reads the shebang

- Passes the script to the specified interpreter

- The interpreter reads and executes commands line by line


## Example Scripts

Try these scripts for this topic:

- [hello_world.sh](../scripts/01_introduction_basics/hello_World.sh)


### Running the Scripts

There are **two ways to run the scripts**:

1. **If you cloned the full repository**:

```bash
git clone https://github.com/Redinit/bash-from-zero.git
cd bash-from-zero/scripts/01_introduction_basics
chmod +x hello_world.sh   # first time only
./hello_world.sh
```
2. **If you only downloaded a single script file**:
```bash
bash hello_world.sh
# or (optional)
chmod +x hello_world.sh
./hello_world.sh
```
