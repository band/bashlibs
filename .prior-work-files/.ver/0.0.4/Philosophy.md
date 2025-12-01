
# Function Philosophy

Here is the [Table of Contents](./Development.html).

Is there a "function philosophy"?  Raising the question makes it so,
provided the questions lead to a usefuel outlook on the subject of
functions.

Let's raise a few philosophic questions about shell functions.

First of all, a function is meant to do one thing well with few side
effects.  Which suggests size may be a constraint.  I like to think
that if function has control flow statements, it should have but one.

On the subject of size, it's possible to have an awk script inside a
function; at some point it makes sense to put the awk script in a
separate file.  I've not developed a hard and fast practice about how
large an awk script is before it needs it's own file.

A big issue for the bash function is how well documented must it be.
I'd like to think functions are self-documenting, easily read by the
code.  We'll go thru a sequence of documentation features for a
function.  These features would seem to place a performance penalty on
the function.  Before we're through, let's run a few timing tests on
that prospect.  The philosophic question in this chapter is *How, and
what features serve the objective of sufficiently documented
function*?

## An Example

Since we claim a philosophical point here, and we're talking code, a
famous challenge in any language is a [quine
program](https://en.wikipedia.org/wiki/Quine_(computing)).  We'll base
our example on a function which may be called a `quine` since, in it's
fullest form doesn't require external input, though it does depend on
the shell `Environment`.

That function is `aFunctionBody` so named because it shows its own source: 

```sh
!include ./src/shell/aFunctionBody
```
and here is its execution, which produced the file displaying the result:

```
$ aFunctionBody  | tee shell/aFunctionBody 
aFunctionBody () 
{ 
    : writes itself on the output;
    declare -f aFunctionBody
}

```

A big issue for the bash function is how well documented must it be.
I'd like to think functions are self-documenting, easily read by the
code.  We'll go thru a sequence of documentation features for a
function.  These features would seem to place a performance penalty on
the function.  Before we're through, let's run a few timing tests on
that prospect.  The philosophic question in this chapter is *How, and
what features serve the objective of sufficiently documented
function*?

## Practical Application

This leads us to a much-used function to display the function bodies
of it's arguments.  It's called **F**unction**B**o**DY**.  We will go
thru a sequence of steps, adding a feature at a time, a line at a
time.  

### simple

The elementary function is shown here.  Each of the subsequent
steps add a concept, where the link to the concept is being developed
below.


```sh
!include ./src/shell/fbdy_simple
```

Here the `$@` syntax is a shorthand for `$1 $2 $3 ...`, which means
*all the arguments to the function*.

### abstract

Now introduce an abstract, 

```sh
!include ./src/shell/fbdy_abstract
```

Where we'll see that an `abstract` is the first line of a function's
`shdoc`, or **sh**ell **doc**umentation.  More on that subject in it's
own chapter.

### default

Next add the syntax to permit a default argument.

```sh
!include ./src/shell/fbdy_defaul
```

which in this case is the function itself. If no arguments are
suopplied, then display `fbdy` itself, otherwise, display the bodies
of function arguments.

### tag

To introduce the concept of a function `tag`, in this case the *date*
the function was recently updated.  


```sh
!include ./src/shell/fbdy_tag
```

##  abstract

Shows the abstract of the function. Requires the
[abstract](./shell/abstract)` function

```sh
!include ./src/shell/fbdy_abstract
```
## shdoc 



We'll see a function to supply
the `date-stamp` when the library is routinely updated


- date stamp 
- function body
- myname
- parameter substitution
- usage

## Definition




