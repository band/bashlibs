
# State of Development

This document serves as the Table of Contents for this folder's Documents.
While the temptation is strong to describe the development cycle, that process is
finding its way to a separate document. 

For the time begin, then, here's what's here:

- [This, the README](./index.html) -- the "source" is elsewhere
- [The Development Loop](./TheDevLoop.html) -- what's hinted at above
- [The  Profile Story](./TheProfileStory.html)  -- the rat's  nest I'm
  tangled in at the moment
  
Some addtional legacy papers live. I'll maintain their reference here,
where you'll need to [ return to last ] from your browser:

- [Minnesota Authors](../Classic/MinnesotaAuthors.html) -- makes an assertion
- [On Building Software](../Classic/OnBuildingSoftware.html) -- needs an update
- [The New Trade](../Classic/TheNewTrade.html) -- inspired by my days on Wall Street

## Two names to note:

- libfun -- a FUNCTION is the smart name for the FUNction home LIBRARYs


- .dev  -- "dot DEV", the smart name for its development directory

       which used to be called "dot BIN" since it was convenient to
       think the functions were going to a library in a BIN

       that became a bit messy since the "dot BIN" function was in a
       directory of the same name, "Dev" has no other BITMELD
       significance


This file, by the way is beholding to the "readme" function which will
find this README from appropriate directories.

Look for the **pdmd** command to produce the HTML copy.

```sh
!include src/shell/pdmd
```

# Repair Functions

- as of 9/12/23

This document is home in ~/mcorg/marty3/bashlib/README.html

## Fixed 

- backup_sync DONE: leaves a .BAK on the stack, remove it

- dfg_refresh DONE: dfg_refresh needs  PUSHD balance, turns out it was
  just a PUSHD .. POPD

- backup_here DONE: but BACKUP_HERE needs to pop the last .BAK off the
  stack, or ...

### backup_prepare

-  `backup_prepare`  This function compares  the list of files  in the
current directory with those which are backed up

    - f1file backup_prepare
    - backup backup_prepare
    - rm -f $(backup_prepare -23)
    - grh backup_prepare | nhn

----- 

```sh
!include src/shell/backup_prepare
```

With a usage instance:

```
!include nprov/backup_prepare
```
-----

This was run  in the bashlib directory, where the  document sources are
stored.  The `comm` command produces an  up to three column report, by
default

- with files unique to the first file in the first column
- and files  unique to the second file in the second column
- and files common to both files in the third column


Files in the first column may either be backed up thru a `backup`
command or removed as excess.  Where there are names in the middle
column, these would represent files that are backups, for which the
file being backed up no longer exists.  A function `backup_sync`
exists to clear that up; look for the functtion.  File names in the
right-most column are both in the current and backup ( `.bak` )
directories.

Read the commentary in the `backup_prepare` function header, where
the first line is an abasract, the whole header is called the SHdoc,
as in javadoc, pydoc, etc..

- usage sequence note on sequence to backup, update file-function into
library, subsequent user RM, SHIFT, ...

	

