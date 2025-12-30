
# What Is Different Here

The primary subject is zsh or bash shell libraries, how to organize and maintain them. Some preliminaries on the shell function itself are included. A claim made here is that the function is the building block of any shell application.

Here is the [Table of Contents](./Development.html)

## New Concepts

<!-- begin concept -->

1. We focus on shell function libraries, collections of functions,
   and how collections are named and gathered into libraries.  Small
   functions are often born on the command line and tested as individual
   `file functions`.  Once tested, functions are appended to an appropriate library.

2. This is the next to last place you will find any mention of a
   `shell script` since we are working with shell functions and their
   collections. Thus an individual high-level function may be treated
   like an `app`. TODO: clarify the definitions and use of these terms; e.g., "app". cf. [[documentConventions]]  

3. The shell `pretty printer` facility, the **declare**
   built-in command with the minus `f` flag, thusly:

         $ declare -f  some_function 
   
   formats the shell syntax in a standard and consistent manner,
   highlighting the decision, looping syntax, consistent function
   naming (note: `zsh` and `bash` formatting differs w.r.t. the opening brace "{"). `declare -f`does not display sharp ("#") comments, hence use of the null-command
   format comment.

4. A colon **( : )**, a `null-command` may be used as a
   shell function comment. In these pages it is the preferred shell comment. TODO: add nuance of using "#" for certain kinds of contents.

5. The null command has useful default properties, whose conditions
   require respect for its limitations.  The null command opens the
   door to three previously unrealized features in shell programming,
   namely:
   
        the `shdoc` -- think javadoc, pydoc in those languages,
        an `abstract` -- the first line of the shdoc, 
		and the `tag` -- where this todo is a sample
		
   An example of a tag-line:		

        : todo: factor this function into three parts; 
		
   The null command deserves an [[TheNullCommand|entire chapter]].  
	
6. A `smart file` is a function returning an object, such as a file
   or directory, another function, or a list of these. An example 
   
       `smartpair () { ${*:-echo} $HOME/lib/{smart,pair}; }`
	   
   whose default behavior returns the names of two files or directories,
   
        $ smartpair
		/Users/home/lib/smart
		/Users/home/lib/pair
		
	or with an argument:
	
	    $ smartpair ls -l 

        -rw-r--r--  1 home  staff  0 Apr  6 12:24 /Users/home/lib/pair
        
        /Users/home/lib/smart:
        total 0
        -rw-r--r--  1 home  staff  0 Apr  6 12:34 bar
        -rw-r--r--  1 home  staff  0 Apr  6 12:34 foo

7. A `family` is a collection of functions sharing a naming
   convention:

        {fam}_{sub}
		
   where the the "fam" is the family name and the "sub" is a unique
   sub-function in the family.  The family name may also be a function.
   The *backup* family is one such.

   Many sub-function names are hardly uniquely. Such are *init, help,
   test, doc,* and *list*.  Sub-names may occasionally use a sub name.
   For example, *fam_sub_test*.  A family of functions are typically
   all found in the same library.

8. While promoting shell libraries, where a library is a collection of
   functions in a file, there are two uses for a single function per
   file, called a `function file`.  A [function database] of all
   working functions is built in parallel to the development and
   run-time function libraries. The database is little more than
   library-named directories with a file per function in those
   directories.
	
## Applications

Within the collection of libraries, two applications stand out.  

One, `backup` is expressed in a single function, with its own
collection of supporting functions.  It does just that: backup files
of any type. Here as [The Only Backup You'll Ever Need](./Backup.html).
Its use promotes a [Simple Versioning](./SimpleVersion.html) system.

The other application is a text-file based database which I'm pleased
to have used for decades.  It's named [/RDB](./UnixRelationalDB.html), 
"slashRDB".

Another facet of my work is a set of tools to convert collections of
functions into an application.  For example, the calling tree of the
backup function is on the order of 40 functions. Collecting those into
an application means rounding up all the subordinate functions into a
single file where the various entry points are accessible in one `app`
whose opening line is the familiar `sh-bang`.

## Reference

- abstract
- family
- file function 
- null-command
- pretty printer
- shell script
- shdoc
- smart file
- tag

## Definition


