
# The Value of an Alias

I have long questioned the value of an *alias* in shell
programming. I have a collection of about 40 but they all see to
be "one-offs", which serve as a short-hand to make shell command
typing easier.  Just recently I have encountered a situation where a
small and related collection can serve a work-flow.

Here is this folder's [Changelog](./Changelog.html).

## The Need

I was working in a **src** directory just now, with a bunch of
`file_function`s where I've found the value of using *alias*es.

It  serves when  you  know, for  example, your  first  shell arg  "$1"
doesn't need repeating.  Since you have a few args in hand, the idea is
to take an individual step with a  single argument, where the result will
tell you the next  step to take.  It should not be  a long process with
too many decisions.  A handful will  be plenty. 


## The Pieces

library/family name with a sub function _al_ hold definitions
supporting the functions in the library.  E.g.,  `backup_al` assigns
aliases using functions in the backup library.

A sufficient number of these Fam_al functions span the majority of the
aliases in use.  In order to keep all alias assignments in defining
functions, at some point it serves to collect those yet seeking
assignment in, say, the `cmdlinelib`.

Here we develop a process to round up the dominant usage, and to leave
the remaining few in the designated collection, e.g. `cmdlinelib`.

## alias collection

## A Procedure

Here is the process I am going through to restore a group of file functions
to their appropriate library, which is either the library where the
function is defined, or a library with the most affiliated functions,
either called by or called from: (?)
### Starting

```txt

     INCLUDE ../txt/xal
```

### First steps

Having loaded the library, all the functions and aliases are available.
The routine sequence, now having source the library:

#### xgo - using `xhy` to return the functions 

```txt

     INCLUDE ../txt/xgo
```

### next

Take your time waiting for a more realistic example, using the 

1. for the *homed*:
    1. if the function is identical to its homed self, back it up and
    remove any local copy
	1. if the current local copy is different and ready for update,
    then update it to the home libray
	1. or it's not, skip it for now.
    1. select the next *homed* function, until complete
1. the *solo* at the moment has not been stored in a *home*
   library. Setting an Environment variable to the destintion new home,
   defaulting to **../retiring**
   1. step thru the list of solos
   1. if the  solo function is ready, append it  to its intended home,
      backing up, and removing the file function
   1. or as above, if not ready skip

When the functions have been looped through this way you are left with
those functions needing  further editing, testing, before  they may be
returned home.

The page on [[TheDevLoop]] addresses the challenges when functions have newly been entered or returned home.
           
### functions
        
   The list of functions is returned by the `xfu` function

```

     INCLUDE ../src/split_homed
```

### aliases
        
   The list of aliases is returned by the `xal` function


## Concepts
        
- alias
- homed
- home library
- solos
- file function




