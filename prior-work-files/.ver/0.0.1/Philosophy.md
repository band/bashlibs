
# Function Philosophy

Let's raise s few philosophic questions about shell functions.

First of all, a function is meant to do one thing well with few side
effects.  Which suggests size may be a constraint.  I like to think
that if function has control flow statements, it should have but one.

On the subject of size, it's possible to have an awk script inside a
function; at some point it makes sense to put the awk script in a
separate file.  I've not developed a hard and fast practice about how
large an awk script is before it needs it's own file.

A big issue for the bash function is how well documented must it be.
I'd like to think functions are self-documenting, easily read by the
code.  We'll go thru a sequence of documentation features for a the
function.  These features would seem to place a performance penalty on
the function.  Before we're through, let's run a few timing tests on
that prospect.

Here is this folder's [Table of Contents](./Development.html).

## An Example

Since we claim a philosophical point here, and we're talking code, a
famous challenge in any language is a [quine
program](https://en.wikipedia.org/wiki/Quine_(computing)).  We'll base
our example on a function which may be called a `quine` since, in it's
fullest form doesn't require external input, though it does depend on
the shell `Environment`.  

That function is `fbdy` so named because it shows **F**unction
**B**o**DY**s.  We will go thru a sequence of steps, adding a feature
at a time, a line at a time.  The elementary function is shown here.
Each of the subsequent steps add a concept, where the link to the
concept is being developed below.


```sh
!include src/shell/fbdy_simple
```

Here the `$@` syntax is a shorthand for `$1 $2 $3 ...`, which means
*all the arguments to the function*.

### abstract

Now introduce an abstract, 

```sh
!include src/shell/fbdy_abstract
```

Where we'll see that an `abstract` is the first line of a function's
`shdoc`, or **sh**ell **doc**umentation.  More on that subject in it's
own chapter.

### default

Next add the syntax to permit a default argument.

```sh
!include src/shell/fbdy_default
```

which in this case is the function itself. At this point the default
behavior of the function is to display itself. 

### tag

To introduce the concept of a function `tag`, in this case the *date*
the function was recently updated.  We'll see a function to supply
the `date-stamp` when the library is routinely updated

- abstract
- date stamp 
- default argument
- function body
- myname
- parameter substitution
- shdoc
- tag
- usage

## Definition




