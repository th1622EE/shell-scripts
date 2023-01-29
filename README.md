# Shell-Scripts

## Introduction

Have you ever found yourself performing redundant tasks over and over and over again? I most certainly have, and when I come across scenarios which require unnecessary redundancy, I build shell scripts to perform these tasks. Contained within this repository are directories titled consistently with the specific shell for which they apply, and scripts for that shell I have found useful. I have not attached a license to this repository, so the code is freely available to anyone who would like to use them. That said, there is no guarantee of functionality, and anyone who uses my scripts is doing so without holding me liable for any adverse conditions resulting from their use (which is unlikely, but I felt it necessary to make the declaration). In each directory there will be a *README.md* file which will contain the code, and a description of the intended purpose and expected behavior.

## System Level Overview

| Application | Version | Operating System |
| :---: | :---: | :---: |
| Git Bash | GNU bash 5.1.16(1)-release (x86_64-pc-msys) | Windows 11 |
| PowerShell | 5.1.22621.963 | Windows 11 |

## Noteworthy Bash Details and Common Commands

File structures on your computer are designed as **Tree** data structures, and to change directories you must be cognizant of where you are in your file structure to change directories. That said, you change directories using the **cd** command using either a relative path (relative to your current directory), an aboslute path (relative to your root directory), or a combination of the **cd** command with an applicable Bash token.

### Common Directory Navigational Commands

The following will output your *present working directory*, which is simply the directory you are currently in (i.e., current directory) to the console as an absolute path:

```bash
pwd
```

The following will change your current directory one-level up relative to your current directory:

```bash
cd ..
```

The following is an example of how to combine the above command to move multiple levels (each ../ will move you a level up/towards the root directory) up relative to your current directory:

```bash
cd ../..
```

The following will change your current directory to your home directory regardless of where you are. The ~ token is the same as the $HOME environment variable in Bash:

```bash
cd ~
```

The following will change your current directory to your systems root directory:

```bash
cd /
```

#### Relative Paths

Relative paths are simply directions to another directory on your system, relative to your current directory (*hints the name*). For example, if your current directory is */c/Users/jdoe/repos/Useful-Shell-Scripts* and you want to navigate to your *Documents* directory which is located at */c/Users/jdoe/Documents*, you can navigate to that directory using a path relative to your current directory (i.e, relative path) as follows:

```bash
cd ../../Documents
```

In the above command, you are changing directories two-levels up to */c/Users/jdoe*, and then one-level down to */c/Users/jdoe/Documents* to get to the *Documents* directory. *Note: Relative paths DO NOT begin with a / because you are already in a directory which ends with a /.*

#### Abolute Paths

Absolute paths are simply directions from your systems **root** directory. For example, if you're still in */c/Users/jdoe/Documents* and you want to get back to */c/Users/jdoe/repos/Useful-Shell-Scripts*, you can simply use the `cd` command followed by the absolute path to navigate to the desired directory regardless of your current directory location as follows:

```bash
cd /c/Users/jdoe/repos/Useful-Shell-Scripts
```

In the above command, you are navigating to a directory using the directory path relative to your root `/` directory. *Note: Absolute paths begin with the root `/` token, which is what makes them aboluste.*

### How to Output a List of Files and Subdirectories

Often times you will want to know what files and directories are contained within your current directory. The following command will display all the unhidden files and subdirectories in your **current directory**:

```bash
ls
```

The following command will display all the hidden **and** unhidden files and subdirectories contained within your current directory:

```bash
ls -la
```

If you want to output a list of all the files in another directory, you can use the `ls` command followed by a relative or absolute path to the desired directory. The following will output a list of all the unhidden files and subdirectories contained in the directory one-level up using a relative path:

```bash
ls ..
```

The following will display all the unhidden files and subdirectories contained within your *Documents* directory using an absolute path:

```bash
ls /c/Users/jdoe/Documents
```

#### Tab Key Trick for File System Navigation

When navigating to a directory at an unknown absolute or relative path, you can use the **tab** key while part of the path is input into the terminal prior to executing the command to help navigate to a directory. For example, if you type `cd` into your terminal, and you can't remember the name of the directory, you can hit the **tab** key to display (ls) all the unhidden files and subdirectories, and then type the subdirectory of choice. Furthermore, you can even partially type the subdirectory name and press **tab** to auto-complete the subdirectory or filename.
