
# Bash Shell Libraries

This new Bash Shell Libraries upgrades the Shell Functions e-book. To
support the diverse development needs, the focus shifts to separate
libraries supporting the various needs of Shell developers.

At bottom, it recognizes three needs of a Shell developer independent
of their own application development families.

- backing up functions, libraries, and ancillary files: images,
  spreadsheets, ...
- converting function libraries, their collections, into Apps
- producing a library/function data base, it uses the Unix Relational
  Data Base

Here is this folder's [Table of Contents](./Development.html)  

## Dcoument Conventions

Here we specify the formating required for each identified document obuject:

- any **file**
- user `function`
- *system concept*
- system **command**
- user-define App
- included source file markdown format
- internal section reference
- url, local
- url, public

## Version maintenance for CHANGELOG

The current [CHANGELOG](./Changelog.html)

### How to Upgrade

### Functions in the Process


```sh
!include src/shell/where_versions
```


```sh
!include src/shell/versions
```


```sh
!include src/shell/list_versions
```


```sh
!include src/shell/latest_version
```




## From the Command Line


### The First Library

### Debugging

Uses these six functions, useing the 
```
$ echo {{debug,pause},_{on,off}}
```

The debugging features may be turn on or off together using thesa
aliases.  It's usually prefferable to set them together, thought not
necessary.  The _on and _off functions redefine the debug and pause
functions to execute their respective commands or simply return
without taking action.

When on `debug` treats all its arguments as a `comment`, displaying on
the `standard error`. where `pause` halts the process, inviting the
user to either stop with a *[CTRL] - C* or continue with a *[Return]*

When turned **off** the commands simply return.


```sh
alias off='debug_off; pause_off'
alias on='debug_on; pause_on'
```
#### debug_on

```sh
!include src/shell/debug_on
```
#### debug_off
```sh
!include src/shell/debug_off
```

#### pause_on

```sh
!include src/shell/pause_on
```
#### pause_off
```sh
!include src/shell/pause_off
```


### Reporting

- or asserting, report_not...

## Shell Features

### The Tab
### The Null Command
### Unix Commands
### Syntax, Tricks, gotchas
### Python and Awk 

## Development and Maintenance

### Function Database

- library, function, context

### The Practice

### Library Organizatin

### The APP

- here, or Applications > An appliction, the APP


## Applications

### Backup, 
- the only one you'll ever need

### RDB

- row column sort, join, table list

### An application, the APP

- Building

## Miscellany

### pidifuset

- .g. today, 9/1 "set" fell off the cliff

### history of former ideas

### simplest surviving functions



# Concept

Concepts go here, where either a 
   
## Reference

## Definition

<!--

## deprecated

1. xhylib 
   workup the **xhylib** process, it's part of both/either
   the **Development Loop** and the **Value of an Alias**.


  -->
