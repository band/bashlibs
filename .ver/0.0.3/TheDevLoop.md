# The Development Loop

Functions, many  of whom are  already in  a library, while  others are
being written on  the command line.  Here we discuss  the treatment of
each type. Special attention is given to:

- updating a single function to library
- isolating the editing of new, or modified functions
- a local backup process for individual functions
- updating a group of functions to their common library
- backing up the libraries
- building a function data base

The latter two features are given  a short introduction, in this note.
As they develop, more comprehensive papers will deal with operational
and organization detail and challenges.

Here is this folder's [Table of Contents](./Development.html)  

## A bit of History

The  strategy  I'm using  recognizes,  after  months of  trying  other
alternatives,  that  a file  per  function  has many  advantages  over
editing a  well-populated library,  one a  few hundred  functions. The
recent lesson came  when sourcing a such a library  and encountering a
syntax  error.  A  syntax  error in  the 37th  function  might not  be
exposed until  the 103rd  function.  After using  a divide-and-conquer
strategy: e.g. "which half of the library has the syntax error?" etc..
the natural solution showed itself.  Rather than:

        source filewith300lib 
	  
and seeing a  report `syntax error: line 737, missing  "`, this is now
the approach:

        mkdir .tmp
		f2file filewith300lib .tmp 
		
creates a file per function in the .tmp directory; then

        pushd .tmp
		foreach source *
		
exposes the individual functions with syntactic errors. Then when the 
files are succesfully edited and unit-tested, they may be returned to
their appropriate library.

        cat * | tee ../filewith300lib # and for safety sake
		backup ../filewith300lib

this sequence with  some modification, is the basis  for shell library
development.

## Modifying Existing Functions

When an  existing function  needs modification, the  `f1file` function
delivers a copy to the `.dev`  directory which is directly below where
the function libraries are collected.   Then repeat the process of returning
the updated function to it's own library.   Here's a manual sequence

        pushd .dev  # where the fixed functions are edited
        set --$(ls) # sets the file names to positional params, 1, 2,, 
		source $1   # the function is now in the Environment
		old_now $1  # difference between the function and ...
		lib=$(whlib $1) # where is its library copy
		shd_setdate $1 | tee -a $lib # restore the date-stamped copy
		backup $1   # the function copy
		rm -f $1    # its no longer needed in the .dev directory
		
This sequence is captured in `quthl`

## New Functions from the Command Line

## The Libraries

## The Function Database

## Supporting Functions

- `f1file`
- `f2file`
- `foreach`
- `old_now`
- `quthl`
- `shd_setdate`
- `whlib`

Where `backup` is really an application, yet a single function

## Documents

See the  [documents index](./Development.html),

And, in process, where here is the defining
	[link syntax](https://daringfireball.net/projects/markdown/syntax#link "Markdown Link Syntax") and in pandoc, the
[similar (link) reference](https://pandoc.org/MANUAL.html#pandocs-markdown
    "search for 'Reference links'").

<!--

    just your HTML Comment Convention

    [mdls]:  ???
  -->


