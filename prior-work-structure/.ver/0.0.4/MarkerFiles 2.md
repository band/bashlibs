
# Marker Files and Backup

The current development process uses a handful of "Marker Files" as
sentinals.  The steps involved are highlighted in the `wrap_up`
function, which:

- "tidys" an untidied library
- sources an unsourced library - simply reads the library into the
  current shell
- "refreshes" an unrefreshed library
- checks for duplicated functions - may be defined in more than one
  library
- compares retired or retiring libraies to the existing functions.

Here is the [Table of Contents](./Development.html).

## The Processes

Since libraries are updated by appending one or more functions to the
end of the library, they may become "untidied".  The moment the
functions are appended, by default their last definition in the
library is the operative definition. This is OK for a spot use such as
testing.  The `lib_tidy` function 

- restores the library to the lastest definition for each function.

The 'wrap_up' function then sources each unsourced library.

This development process also maintains a searchable [library
database] of each function in the available libraries.  Unrefreshed
libraries are then 'refreshed' by `dfg_refresh` which:

- backs up the library
- copies the library's functions into the database
- backups all the current functions as files in the database, recall
  that backing up an unchanged file does not update any backups
- "synchronizes" the function collection, which hides backup files no
  longer in the collection by pushing the first backup on the stack.
  (in the second backup directory, i.e. .bak/.bak)

## Role of Marker Files

The Unix(R) system has a "hidden file" feature.  Normal files are
alpha-numeric names and some system commands -- notably 'ls (1)'
ignore hidden files. A hidden file name begins with a period (or dot).
The current directory is know as .  "dot", a single character.  For
example "thisFile" is identical to "./thisFile", however ".thisFile"
is not identical with either.  I use special files to note the state
of the library file.

## Functions 

- `wrap_up`
- `lib_tidy`
- `dfg_refresh`
- `backup_sync`
- `backup_status`

# Concept

## Reference

- //marker files//
- //untidied library//
- //synchronized backup//
- //refreshed library//

## Definition

- 

<!--

## deprecated

1. 

  -->
