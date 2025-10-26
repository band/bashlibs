
# What's Different Here

While our wider subject is bash shell libraries, how to organize and
maintain them, a few words on the function itself will alert you to
what may likely surprise you.  Your first surprise is that "it's
functions all the way down" If you're unfamiliar with the reference,
read [this little joke about
turtles](https://en.wikipedia.org/wiki/Turtles_all_the_way_down).
Like the turtle, the function is the building block of any shell
application.

Here's the [Table of Contents](./Development.html)

## Listing the surprises

<!-- begin concept -->

1. We'll focus on shell function libraries, collections of functions,
   but abstain from editing a large library.  Rather writing small
   fuctions on the command line, testing as idividual `file function`
   updating the libraries by appending functions rather than editing
   libraries directly.

1. This is the last place you'll find any mention of a `shell script`
   since we're working with shell functions and their collections.

1. A colon **( : )**, carefully used in the guise of the
   `null-command` is a more useful shell comment.  You'll see very few
   sharp **( # )** comments here.

1. We'll frequently use the shell `pretty printer`, the **declare**
   built-in command with the minus `f` flag, thusly: 

         $ declare -f  some_function 
   
   formats the shell syntax in a standard and consistent manner,
   highlighting the decision, looping syntax, consistent function
   naming. It rejects the sharp comment, preferring the null-command
   format comment.

1. The null command has useful default properties, whose conditions
   require respect for it's limitations, and deserve an entire
   chapter.

1. The null command opens the door to three previously unrealized
   features in shell programming, namely:
   
        the `shdoc` -- think javadoc, pydoc in those languages,
        an `abstract` -- the first line of the shdoc, 
		and the `tag` -- where this todo is a sample

        : todo: factor this function into three parts; 
	
1. the `smart file` is a function returning an object, such as a file
   or directory, another function or a list these.

    <!-- --- IOU --	-->	

1. A `family` is a collection of functions sharing a naming
   convention:

        {fam}_{sub}
		
   where the the "fam" is the family name and the "sub" is a unique
   sub-function in the family.  Many sub-function names are hardly
   uniq. Such are *init, help, test, doc,* and *list*.  Sub-names may
   also have a sub name.  A family of functions will typically all be
   found in the same library.

1. While promoting shell libraries, where a library is a collection of
   functions in a file, there are two uses for a single function per
   file, called a `function file`.  A [function database] of all
   working functions is built in parallel to the development and
   run-time function libraries. The database is little more than
   library-named directories with a file per function in those
   directories.
	
## Applications

Within the collection of libraries, two applications stand out.  One,
`backup` is expressed in a single function, with its own collection of
supporting functions.  It does just that: backup files of any
type. Look for [The Only Backup You'll Ever Need].  The other
application is a text-file based database which I'm pleased to have
carried around nearly 40 years.  It's named [/RDB] "slash_R_D_B".

Another facet of my work is a set of tools to convert collections of
functions into an application.  For example, the calling tree of the
backup function is on the order of 40 functions. Collecting those into
an application means rounding up all the subordinate functions into a
single file where the various entry points are accessible in one `app`
whose opening line will be the familiar `sh-bang`.

# Concept

## Reference

- family
- file function 
- smart file
- abstract
- tag
- null-command
- pretty printer
- shell script
- shdoc
- 

## Definition

j
