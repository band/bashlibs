
# The Value of an Alias

I've   long   questioned   the   value  of   an   *alias*   in   shell
programming. I've grown  a collection of about 40 but  they all see to
be "one-off"s, which  serve as a short-hand to make  the shell command
typing easier.   Just recently I've  encountered a situtation  where a
small and related collection serve a work-flow.

Here is this folder's [Table of Contents](./Development.html).

## The Need

I was working in a **.dev** directory  just now, with a bunch of *file
function*s where I've found the value of using  *alias*es.

It  serves when  you  know, for  example, your  first  shell arg  "$1"
doesn't need reapeating.  Since you've a few args in hand, the idea is
to take individual step with a  single argument, where the result will
tell you the next  step to take.  It shouldn't be  a long process with
too many decisions.  A handful will  be plenty. 

## A Procedure

Here's the process I'm going thru to restore a group of file functions
to their appropriate library, which is either the library where the
function is defined, or a library with the most affiliated functions,
either called by or called from:

1. split the list of file functions into *solos* or *homed*, solos
   having no home library.
1. for the *homed*, either 
    1. if the function is identical to its homed self, back it up and
    remove any local copy
	1. if the current local copy is different and ready for update,
    then return it to the home libray
	1. or it's not, skip it for now.
    1. select the next *homed* function, until complete

1. the *solo* at the moment has not been stored in a *home*
   library. Look for an existing library to save them in then foreach
   function in the list of *solos
   1. step thru the list of solos
   1. if the  solo function is ready, append it  to its intended home,
      backing up, and removing the file function
   1. or as above, if not ready skip

When the functions have been looped through this way you are left with
those functions needing  further editing, testing, before  they may be
returned home.

The paper  on [The Development Loop](./TheDevLoop.html)  addresses the
challenges when functions have newly been entered or returned home.

## The Pieces

All the aliases and a few functions to support the proceedure are
found in **xhylib**.


```sh
!include src/shell/xhylib
```

### functions

### aliases

   
## Concepts

- alias
- home,d
- home library
- solo,s
- file function




