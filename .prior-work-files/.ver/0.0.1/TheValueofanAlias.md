
# The Value of an Alias

I've long questioned the value of an *alias* in shell
programming. I've grown a collection of about 40 but they all see to
be "one-off"s, which serve as a short-hand to make the shell command
typing easier.  

That's where we'll leave it for now. Since I've moved most of the
alias definitions back into function in the `family` of `functions` 

Here is this folder's [Table of Contents](./Development.html).

## The Need

The paper on [The Development Loop](./TheDevLoop.html) addresses the
challenges when functions have newly been entered or returned home.

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

## The Pieces

### functions

### aliases



# Concept

## Reference

- alias
- family8
- home,d
- home library
- solo,s
- file function

## Definition

- 

<!--

## deprecated

1. 

  -->
