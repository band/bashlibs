```{=html}
<?xml version="1.0" encoding="utf-8"?>
```
\<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"\>
```{=html}
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
```
```{=html}
<head>
```
```{=html}
<!-- 2022-11-12 Sat 12:25 -->
```
```{=html}
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
```
```{=html}
<meta name="viewport" content="width=device-width, initial-scale=1" />
```
```{=html}
<title>
```
Shell Libraries
```{=html}
</title>
```
```{=html}
<meta name="generator" content="Org mode" />
```
```{=html}
<meta name="author" content="Marty McGowan" />
```
`<link rel="stylesheet" type="text/css" href="./style.css" />`{=html}
```{=html}
<script type="text/javascript">
/*
@licstart  The following is the entire license notice for the
JavaScript code in this tag.

Copyright (C) 2012-2019 Free Software Foundation, Inc.

The JavaScript code in this tag is free software: you can
redistribute it and/or modify it under the terms of the GNU
General Public License (GNU GPL) as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.  The code is distributed WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE.  See the GNU GPL for more details.

As additional permission under GNU GPL version 3 section 7, you
may distribute non-source (e.g., minimized or compacted) forms of
that code without the copy of the GNU GPL normally required by
section 4, provided you include this license notice and a URL
through which recipients can access the Corresponding Source.


@licend  The above is the entire license notice
for the JavaScript code in this tag.
*/
<!--/*--><![CDATA[/*><!--*/
 function CodeHighlightOn(elem, id)
 {
   var target = document.getElementById(id);
   if(null != target) {
     elem.cacheClassElem = elem.className;
     elem.cacheClassTarget = target.className;
     target.className = "code-highlighted";
     elem.className   = "code-highlighted";
   }
 }
 function CodeHighlightOff(elem, id)
 {
   var target = document.getElementById(id);
   if(elem.cacheClassElem)
     elem.className = elem.cacheClassElem;
   if(elem.cacheClassTarget)
     target.className = elem.cacheClassTarget;
 }
/*]]>*///-->
</script>
```
```{=html}
</head>
```
```{=html}
<body>
```
::: {#content}
```{=html}
<h1 class="title">
```
Shell Libraries
```{=html}
</h1>
```
::: {#table-of-contents}
```{=html}
<h2>
```
Table of Contents
```{=html}
</h2>
```
::: {#text-table-of-contents}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org289acc3">`{=html}1. Preface`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org53fb947">`{=html}2. Introduction`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgcc86d0f">`{=html}3. Shell Functions, How To
...`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#orgce0bedb">`{=html}3.1. Write a Shell Function`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org9d6336d">`{=html}3.2. Inspect a Function Body`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org50252dc">`{=html}3.3. Loop with Foreach`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org21409a0">`{=html}3.4. Collect Save and Reuse`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org651a9a2">`{=html}3.5. Introduced in this
Chapter`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgdcac213">`{=html}4. A Brief History of Shell
Commands`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org60e6afa">`{=html}4.1. New Concepts`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgae1a53e">`{=html}4.2. Shell Command History`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org0719e3b">`{=html}4.3. history list`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgebee328">`{=html}4.4. The simple step -- the
function`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org77ebc03">`{=html}4.5. Terminal Cut and Paste`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgac9333b">`{=html}4.6. Review`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org923525f">`{=html}5. Shdoc -- SHell DOC
comments`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org9d31802">`{=html}5.1. New Concepts`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org756ff97">`{=html}5.2. the Null Command`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org8dbbfaf">`{=html}5.3. Now the Function
Documentation`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgf0cc7fd">`{=html}5.4. Embedding a Modification
Date`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org5d87574">`{=html}5.5. The Date is Our First
Tag`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgab0cf49">`{=html}5.6. Building the Function
Database`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org05dfd9f">`{=html}5.7. awk digression`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org348b30a">`{=html}5.8. Activity`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org50133ae">`{=html}5.9. References`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orge4c8dc2">`{=html}6. Collecting Functions`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org2da048e">`{=html}6.1. Families`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org7031ca5">`{=html}6.2. Types of Libraries`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgc951bbd">`{=html}6.3. Collecting into
Applications`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orga450c4b">`{=html}7. Development Process`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org4e139dd">`{=html}7.1. using Backup`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org4dd55c3">`{=html}7.2. how frequently take a
"version"`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org72d6db6">`{=html}7.3. shdoc, tags, prep for Function Data
base`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgade030d">`{=html}7.4. DP, Cycle in One Principle library,
with others`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org59a3f8c">`{=html}8. Factor a Shell Script`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgdc23804">`{=html}9. System Tools`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org0fc2e5d">`{=html}9.1. Awk`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgebd6106">`{=html}9.2. Sed, Grep`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org436b07e">`{=html}10. Applications`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org8ba6f9b">`{=html}10.1. /RDB`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org439acd5">`{=html}10.2. Backup`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org77b064f">`{=html}10.3. Tags`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org38324cc">`{=html}10.4. Function Data Base`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#org7264d70">`{=html}11. Appendices`</a>`{=html}
```{=html}
<ul>
```
```{=html}
<li>
```
`<a href="#org19f24de">`{=html}11.1. The Script`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
`<a href="#orgfcb411a">`{=html}11.2. Writing Tools`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::

::: {#outline-container-org289acc3 .outline-2}
```{=html}
<h2 id="org289acc3">
```
[1]{.section-number-2} Preface
```{=html}
</h2>
```
::: {#text-1 .outline-text-2}
```{=html}
<p>
```
This book `<i>`{=html}`<i>`{=html}Shell
Libraries`</i>`{=html}`</i>`{=html} picks up an earlier ebook:
`<a href="https://leanpub.com/shellfunctions">`{=html}Shell
Functions`</a>`{=html}, which is updated here, and now the chapter
introducing "how-to -- create, save, and re-use"
`<a href="https://en.wikipedia.org/wiki/Bash_(Unix_shell)">`{=html}bash
shell`</a>`{=html} functions. Each chapter has worked examples built on
prior information, introducing new concepts, each thoroughly discussed,
and assessed for understanding.
```{=html}
</p>
```
```{=html}
<p>
```
The theme of the book is introduced in writing a few shell functions
which are then collected into a simple library. The goal, as one's
repertoire of functions grows, is to recognize which functions belong in
the same library.
```{=html}
</p>
```
```{=html}
<p>
```
While it's possible to put every function in one library, you'll soon
come to realize it's both unwieldy and more difficult to maintain. In my
experience functions collect towards higher level use (applications) and
lower level features (debugging, assertion checking, file and process
handling, ... )
```{=html}
</p>
```
```{=html}
<p>
```
Then, if there is an application to be advanced in this book, it's the
shell function development environment. In the Unix world, tools are
purposely small, single - purpose, and made more powerful by their
ability to connect to one another. No book on the shell is complete
without reference to a particular handful of sharp tools, notably awk,
grep, and sed. An application I have found useful over the years, is a
too-little used data-base /RDB, built mostly on a combination of awk and
the shell. It will have its own library here.
```{=html}
</p>
```
```{=html}
<p>
```
Two words of caution are in order. First a bit of self-criticism. Some
of my function libraries, when raised to an application, suggest
implementing in a higher-level language. I'm thinking of python here,
since I have done enough to realize its connection to databases. We'll
come across a few functions using a python or a Perl script.
```{=html}
</p>
```
```{=html}
<p>
```
The other word of caution is, if you're looking for how to write bash
script, that's defered to an Appendix. Most instruction on shell
script-writing, would be much simpler by composing a shell function. The
subversive point here is your answer to the question, "I have seen a
script which does that. Instead, could I do that with a few functions?"
```{=html}
</p>
```
:::
:::

::: {#outline-container-org53fb947 .outline-2}
```{=html}
<h2 id="org53fb947">
```
[2]{.section-number-2} Introduction
```{=html}
</h2>
```
::: {#text-2 .outline-text-2}
```{=html}
<p>
```
To proceed, the next chapter assumes you:
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
have an account on a computer with a terminal
```{=html}
</li>
```
```{=html}
<li>
```
as an alternative, go to the
`<a href="https://cloud.google.com/shell">`{=html}Google Cloud
Shell`</a>`{=html}; follow the link to the console.
```{=html}
</li>
```
```{=html}
<li>
```
have worked exercises in a shell tutorial such
`<a href="https://www.shellscript.sh/">`{=html}as here`</a>`{=html}.
```{=html}
</li>
```
```{=html}
<li>
```
for now, you do not need access to a file editor such as vi(m), emacs,
nano, ed, ...
```{=html}
</li>
```
```{=html}
<li>
```
but will soon.
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
This is not a shell tutorial. We are here to advance the use of shell
functions, and collect them into function libraries. System commands and
features are fully referenced when introduced. For example, the shell
syntax for
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
decision ( if - then - else )
```{=html}
</li>
```
```{=html}
<li>
```
repetition ( for, while ) and
```{=html}
</li>
```
```{=html}
<li>
```
selection ( case .. of .. esac )
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
are introduced in the context of a function,
```{=html}
</p>
```
```{=html}
<p>
```
Before proceeding, you may want to consult the authoritative source on
`<a href="https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html">`{=html}Shell
Functions`</a>`{=html}
```{=html}
</p>
```
```{=html}
<p>
```
`<i>`{=html}here, insert a summary of the sequence to
follow`</i>`{=html}
```{=html}
</p>
```
:::
:::

::: {#outline-container-orgcc86d0f .outline-2}
```{=html}
<h2 id="orgcc86d0f">
```
[3]{.section-number-2} Shell Functions, How To ...
```{=html}
</h2>
```
::: {#text-3 .outline-text-2}
```{=html}
<p>
```
In this chapter you will write, save, and re-use bash shell functions.
```{=html}
</p>
```
```{=html}
<p>
```
Many functions may be composed on the command line. The functions we'll
write in this chapter are short enough to fit on a single line. As you
get more comfortable writing on the command line, expect to write
functions extending and wrapping text on the terminal. At some point,
you will need an editor to write and maintain functions.
```{=html}
</p>
```
```{=html}
<p>
```
The e-book `<a href="https://leanpub.com/shellfunctions">`{=html}Shell
Functions`</a>`{=html} is updated in this chapter.
```{=html}
</p>
```
```{=html}
<p>
```
Each section of this chapter is simple enough to require a half an hour
of your time. When you've completed these exercises, you will be
comfortable creating, using, saving and re-using shell functions.
```{=html}
</p>
```
```{=html}
<p>
```
To get started, here are the few assumptions we make. That you:
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
have access to an open terminal window
```{=html}
</li>
```
```{=html}
<li>
```
can open simultaneous multiple terminal windows
```{=html}
</li>
```
```{=html}
<li>
```
are running the bash shell
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
The text is sprinkled with links to more detailed treatment of
fundamental topics. Each chapter offers suggestions with experiments
which when followed will enable the curious reader to grasp the
concepts.
```{=html}
</p>
```
:::

::: {#outline-container-orgce0bedb .outline-3}
```{=html}
<h3 id="orgce0bedb">
```
[3.1]{.section-number-3} Write a Shell Function
```{=html}
</h3>
```
::: {#text-3-1 .outline-text-3}
```{=html}
<p>
```
The simplest shell functions may be written on a single line at the
command prompt. In this chapter, you will write and use two simple shell
functions: `<b>`{=html}hello`</b>`{=html}, and
`<b>`{=html}today`</b>`{=html}.
```{=html}
</p>
```
:::

::: {#outline-container-org9ff3386 .outline-4}
```{=html}
<h4 id="org9ff3386">
```
[3.1.1]{.section-number-4} Hello World
```{=html}
</h4>
```
::: {#text-3-1-1 .outline-text-4}
```{=html}
<p>
```
In this chapter, and throughout the book, you may assume your command
prompt is the dollar sign, all the examples are entered at the command
line.
```{=html}
</p>
```
```{=html}
<pre class="example">

$ ...

</pre>
```
```{=html}
<p>
```
The `<i>`{=html}`<i>`{=html}Programmer's Birth
Announcement`</i>`{=html}`</i>`{=html} is `<b>`{=html}`<b>`{=html}Hello
World!`</b>`{=html}`</b>`{=html} Type this after your command prompt:
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell" id="org6cf284a">
<span style="color: #0000ff;">hello</span> () { <span style="color: #483d8b;">echo</span> <span style="color: #8b2252;">"Hello World!"</span>; }

</pre>
```
:::

```{=html}
<p>
```
So, on the above line, you type everything from
`<b>`{=html}`<b>`{=html}hello`</b>`{=html}`</b>`{=html} thru the closing
curly brace, followed by a carriage return. You use the function by
typing its name at the command line
```{=html}
</p>
```
```{=html}
<p>
```
You can see the formal definition of a function from the
`<i>`{=html}`<i>`{=html}declare`</i>`{=html}`</i>`{=html} builtin; type
this on your command line:
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
<span style="color: #0000ff;">hello</span> () { <span style="color: #483d8b;">echo</span> <span style="color: #8b2252;">"Hello World!"</span>; }
<span style="color: #483d8b;">declare</span> -f hello

</pre>
```
:::

```{=html}
<p>
```
Here is the function definition, followed by using it, and the shell's
response.
```{=html}
</p>
```
```{=html}
<p>
```
Notice your function has been slightly reformatted. More on that later.
```{=html}
</p>
```
:::
:::

::: {#outline-container-orgfa3dcb7 .outline-4}
```{=html}
<h4 id="orgfa3dcb7">
```
[3.1.2]{.section-number-4} Getting it right
```{=html}
</h4>
```
::: {#text-3-1-2 .outline-text-4}
```{=html}
<p>
```
The function definition syntax:
```{=html}
</p>
```
```{=html}
<pre class="example">
for var in list ; do command(s) using var ... ; done/

This example suffices:

#+BEGIN_EXAMPLE
        1   $ for opt in {a..z}; do dateArg $opt; done
        2   a: Sat
        3   b: Oct
        4   c: Sat Oct 29 13:34:32 2022
        5   d: 29
        6   e: 29
        7   f: f
        8   g: 22
        9   h: Oct
       10   i: i
       11   j: 302
       12   k: 13
       13   l:  1
       14   m: 10
       15   n: 
       16   
       17   o: o
       18   p: PM
       19   q: q
       20   r: 01:34:32 PM
       21   s: 1667064872
       22   t: 
       23   u: 6
       24   v: 29-Oct-2022
       25   w: 6
       26   x: 10/29/2022
       27   y: 22
       28   z: -0400
       29   $

</pre>
```
```{=html}
<p>
```
Of special note are the ''n'' and ''t'' arguments. You can likely
distinguish their meaning.
```{=html}
</p>
```
```{=html}
<p>
```
Now, some of your explanations come easier. Since the day, the hour or
the minutes many be the same number, some letter options may give the
same result, and therefore, still be ambiguous.
```{=html}
</p>
```
```{=html}
<p>
```
You've assigned the first positional parameter, and you can likely
figure out how to deal with the second, third, ... etc. Also, notice, if
you haven't done this before, you've just assigned and used a
`<b>`{=html}`<b>`{=html}shell variable`</b>`{=html}`</b>`{=html}, in
this case the variable `<i>`{=html}opt`</i>`{=html}. You assign it just
by the name, and (in the for loop) substitute the value with a leading
dollar sign: `<b>`{=html}`<b>`{=html}\$opt`</b>`{=html}`</b>`{=html}.
So, in this case,
`<b>`{=html}`<b>`{=html}dateArg`</b>`{=html}`</b>`{=html} is invoked
with each of the lower case letters since the
`<i>`{=html}{a..z}`</i>`{=html} list expands into the list. Limited
subsets are possible, as are the Upper Case and numbers, which work as
well:
```{=html}
</p>
```
```{=html}
<pre class="example">
1   $ echo {10..13}
2   10 11 12 13
3   $

</pre>
```
```{=html}
<p>
```
`<b>`{=html}`<b>`{=html}exercise:`</b>`{=html}`</b>`{=html}
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
run the example with the Upper Case letters.
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::

::: {#outline-container-org5d44780 .outline-4}
```{=html}
<h4 id="org5d44780">
```
[3.1.3]{.section-number-4} Next Steps
```{=html}
</h4>
```
::: {#text-3-1-3 .outline-text-4}
```{=html}
<p>
```
Think about this using the latest example. How would you write a
`<b>`{=html}`<b>`{=html}foreach`</b>`{=html}`</b>`{=html} function to
simplify the whole command to this:
```{=html}
</p>
```
```{=html}
<p>
```
foreach dateArg {a..z}
```{=html}
</p>
```
:::
:::
:::

::: {#outline-container-org9d6336d .outline-3}
```{=html}
<h3 id="org9d6336d">
```
[3.2]{.section-number-3} Inspect a Function Body
```{=html}
</h3>
```
::: {#text-3-2 .outline-text-3}
```{=html}
<p>
```
In this section, you will:
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
use wild-card parameters
```{=html}
</li>
```
```{=html}
<li>
```
use numeric parameters
```{=html}
</li>
```
```{=html}
<li>
```
use default parameters
```{=html}
</li>
```
```{=html}
<li>
```
evaluate a deferred expression
```{=html}
</li>
```
```{=html}
<li>
```
set positional parameters
```{=html}
</li>
```
```{=html}
<li>
```
create a function to display functions
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
Recall, in a `<a href="#orgfa3dcb7">`{=html}previous
section`</a>`{=html}, you were asked
```{=html}
</p>
```
```{=html}
<p>
```
`<i>`{=html}what would you name a function to display a Function
BoDY`</i>`{=html}?
```{=html}
</p>
```
```{=html}
<p>
```
I think we'll call it
`<b>`{=html}`<b>`{=html}fbdy`</b>`{=html}`</b>`{=html}.
```{=html}
</p>
```
```{=html}
<p>
```
To review:
```{=html}
</p>
```
```{=html}
<pre class="example">
1   $ declare -f hello
2   hello () 
3   { 
4       echo "hello world"
5   }
6   $

</pre>
```
```{=html}
<p>
```
By the way, if you've logged off and logged back in since the previous
section, you've lost the function definition and will have to re-enter
it. In a future exercise, you will learn a simple means to recover your
work from day-to-day, session-to-session.
```{=html}
</p>
```
:::

::: {#outline-container-org8e602da .outline-4}
```{=html}
<h4 id="org8e602da">
```
[3.2.1]{.section-number-4} More about arguments
```{=html}
</h4>
```
::: {#text-3-2-1 .outline-text-4}
```{=html}
<p>
```
To this point, we have only used the first positional parameter; here we
see how to refer to individual arguments, something more than the
successive parameters in an argument list.
```{=html}
</p>
```
```{=html}
<p>
```
In addition to the numbered positional parameters: 1, 2, 3, ... you will
learn of other parameter features. Introductory features express all
positional parameters, report the number of positional parameters, and
assigning a default value to a positional parameter. So here's how to
set positional parameters.
```{=html}
</p>
```
```{=html}
<p>
```
Enter these commands
```{=html}
</p>
```
```{=html}
<pre class="example">
1   set a b c    # set 3 positional parameters to a b c
2   echo $@      # show them
3   echo $#      # how many?
4   echo here is One: $1
5   eval echo here is the last one: \$$#
6   echo here is Two: $2
7   echo here is Two: ${2:-Two}
8   echo here is Four: ${4:-four}

</pre>
```
```{=html}
<p>
```
Notice the use of `<i>`{=html}eval`</i>`{=html} in the fifth example. At
the end, `<i>`{=html}escape`</i>`{=html} the first dollar sign, and the
second one inserts the number of the last parameter. The
`<i>`{=html}eval`</i>`{=html} defers the evaluation until the parameter
substitution is made. Therefore the `<i>`{=html}echo`</i>`{=html}
command sees "here is the last one: \$3"
```{=html}
</p>
```
```{=html}
<p>
```
Also note the \# symbol. It sets off a shell comment. Shortly we'll
introduce a more useful means, and note the reason why.
```{=html}
</p>
```
```{=html}
<p>
```
The last two steps demonstrate the use of the
`<b>`{=html}`<b>`{=html}default`</b>`{=html}`</b>`{=html} argument if
the positional parameter is set on not.
```{=html}
</p>
```
:::
:::

::: {#outline-container-orgdebc9f4 .outline-4}
```{=html}
<h4 id="orgdebc9f4">
```
[3.2.2]{.section-number-4} experiments
```{=html}
</h4>
```
::: {#text-3-2-2 .outline-text-4}
```{=html}
<p>
```
Experiment with other arguments to the set command.
```{=html}
</p>
```
```{=html}
<pre class="example">

$ set - x          # turns on command tracing
$  ...             # execute some commands, before you
$ set +x           # turn it off
$ set +x a b c     # also sets 3 parameters

</pre>
```
```{=html}
<p>
```
You may use a "set --" convention to set the positional parameters.
Though it's not necessary. Experiment with other choices.
```{=html}
</p>
```
```{=html}
<pre class="example">

$ set -- one Two seven # replaces any previous setting, as does
$ set $3 four five     # keep one, add others
$ set $@ six seven     # keep all, add a few
$ set one $@           # ...

</pre>
```
:::
:::

::: {#outline-container-orgb2a55bf .outline-4}
```{=html}
<h4 id="orgb2a55bf">
```
[3.2.3]{.section-number-4} questions
```{=html}
</h4>
```
::: {#text-3-2-3 .outline-text-4}
```{=html}
<p>
```
In the examples, what do you understand:
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
what the at sign ''($@)'' means?</li> <li>what the sharp/hash ''($#)''
means?
```{=html}
</li>
```
```{=html}
<li>
```
what does the `<i>`{=html}eval`</i>`{=html} command do? hint: omit it
from the command line.
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
In the next section we will see ho to use the positional parameters
within a function.
```{=html}
</p>
```
:::
:::

::: {#outline-container-org7b28dce .outline-4}
```{=html}
<h4 id="org7b28dce">
```
[3.2.4]{.section-number-4} The function body
```{=html}
</h4>
```
::: {#text-3-2-4 .outline-text-4}
```{=html}
<p>
```
You can take advantage of this information to write a function that
returns a function. As you write this function, think of
`<i>`{=html}what is a good
`<b>`{=html}`<b>`{=html}default`</b>`{=html}`</b>`{=html}
argument?`</i>`{=html} Enter these, a line at a time:
```{=html}
</p>
```
```{=html}
<pre class="example">
1 $ declare -f hello                   # as before
2 $ fbdy () { declare -f $1; }         # the simple version
3 $ fbdy hello                         # same as before
4 $ fbdy fbdy                          # no kidding!, so why not ...
5 $ fbdy () { declare -f ${1:-fbdy}; } # so ...
6 $ fbdy                               # shows how to do it!, and
7 $ fbdy () { declare -f ${@:-fbdy}; } # permits ...
8 $ fbdy hello fbdy                    # whew, let's take a break
</pre>
```
```{=html}
<p>
```
Note, to this point we have not had to use an editor to compose the few
functions we've introduced. It's a useful feature, but not one we'll
push to extremes.
```{=html}
</p>
```
```{=html}
<p>
```
At step 5, we introduced the notion of a `<i>`{=html}convenient
default`</i>`{=html}. The idea of a convenient default is to
`<i>`{=html}self-document`</i>`{=html} a function. This one is so
simple, with a so-suggestive name, it's prime value is to introduce the
technique, with increasing payback over time.
```{=html}
</p>
```
```{=html}
<p>
```
Not the changes from steps 5 thru 8. This time the introduction of the
wild-card `<i>`{=html}all the arguments`</i>`{=html}. Take every
opportunity to use that feature. Only restricting to specific arguments
when necessary.
```{=html}
</p>
```
:::

```{=html}
<ol class="org-ol">
```
```{=html}
<li>
```
`<a id="org3006d9f">`{=html}`</a>`{=html}questions`<br />`{=html}

::: {#text-3-2-4-1 .outline-text-5}
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
were you able to follow each step?
```{=html}
</li>
```
```{=html}
<li>
```
what does the final
`<b>`{=html}`<b>`{=html}fbdy`</b>`{=html}`</b>`{=html} do with no
arguments?
```{=html}
</li>
```
```{=html}
</ul>
```
:::

```{=html}
</li>
```
```{=html}
</ol>
```
:::

::: {#outline-container-org1917e1e .outline-4}
```{=html}
<h4 id="org1917e1e">
```
[3.2.5]{.section-number-4} assesment
```{=html}
</h4>
```
::: {#text-3-2-5 .outline-text-4}
```{=html}
<p>
```
Review if necessary, your understanding of
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
wild-card parameters
```{=html}
</li>
```
```{=html}
<li>
```
default parameters
```{=html}
</li>
```
```{=html}
<li>
```
setting positional parameters
```{=html}
</li>
```
```{=html}
<li>
```
how the function body is displayed. hint: search `<i>`{=html}bash shell
declare`</i>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::
:::

::: {#outline-container-org50252dc .outline-3}
```{=html}
<h3 id="org50252dc">
```
[3.3]{.section-number-3} Loop with Foreach
```{=html}
</h3>
```
::: {#text-3-3 .outline-text-3}
```{=html}
<p>
```
Now you will work with the `<i>`{=html}for`</i>`{=html} syntax to
produce a `<b>`{=html}`<b>`{=html}foreach`</b>`{=html}`</b>`{=html}
function that handles many loop requirements.
```{=html}
</p>
```
```{=html}
<p>
```
You will use the built-in `<i>`{=html}shift`</i>`{=html} command to
control our positional parameters, and the
`<i>`{=html}local`</i>`{=html} command to define a variable.
```{=html}
</p>
```
```{=html}
<p>
```
The shell has other useful looping constructs, namely the
`<i>`{=html}while`</i>`{=html} loop. Our focus here, the
`<i>`{=html}for`</i>`{=html} loop. The while loop is useful in
situations where the loop test may be more complicated than
`<i>`{=html}is there another argument to deal with?`</i>`{=html} In this
example, we will use a known list of arguments, the for loop is
appropriate.
```{=html}
</p>
```
```{=html}
<p>
```
You will use the for loop to write a function in a prior exercise with
function arguments, namely;
```{=html}
</p>
```
```{=html}
<pre class="example">
$ foreach dateArg {a..z}
</pre>
```
```{=html}
<p>
```
Recall the `<b>`{=html}`<b>`{=html}dateArg`</b>`{=html}`</b>`{=html}
function;
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
$ dateArg () { date <span style="color: #8b2252;">"+$1: %$1"</span>; }

</pre>
```
:::

```{=html}
<p>
```
So, the reason for the foreach function should now be clear:
```{=html}
</p>
```
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
execute the first argument, a function or command,
```{=html}
</li>
```
```{=html}
<li>
```
for each of the remaining arguments.
```{=html}
</li>
```
```{=html}
</ul>
```
```{=html}
<p>
```
The bash shell has the syntactic sugar `<i>`{=html}{a..z}`</i>`{=html}
to produce the lower case letters as separate arguments in any command.
```{=html}
</p>
```
:::

::: {#outline-container-orgfe692ab .outline-4}
```{=html}
<h4 id="orgfe692ab">
```
[3.3.1]{.section-number-4} The `<i>`{=html}for`</i>`{=html} syntax
```{=html}
</h4>
```
::: {#text-3-3-1 .outline-text-4}
```{=html}
<p>
```
Recall the earlier example with the
`<b>`{=html}`<b>`{=html}dateArg`</b>`{=html}`</b>`{=html} function:
```{=html}
</p>
```
```{=html}
<p>
```
`<i>`{=html}for var in list... ; do command(s) using \$var ...;
done`</i>`{=html}
```{=html}
</p>
```
```{=html}
<p>
```
specifically:
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
$ for opt<span style="color: #a020f0;"> in</span> {a..z}; <span style="color: #a020f0;">do</span> dateArg $<span style="color: #a0522d;">opt</span>; <span style="color: #a020f0;">done</span>

</pre>
```
:::

```{=html}
<p>
```
If you don't have your
`<b>`{=html}`<b>`{=html}dateArg`</b>`{=html}`</b>`{=html} function
handy, re-enter it now. Then type the above command to execute it.
Notice the generic opt argument could be any relevant name. Also, notice
the position of the dateArg function; it is called once per lower-case
letter.
```{=html}
</p>
```
:::
:::

::: {#outline-container-org4938f0a .outline-4}
```{=html}
<h4 id="org4938f0a">
```
[3.3.2]{.section-number-4} The foreach function
```{=html}
</h4>
```
::: {#text-3-3-2 .outline-text-4}
```{=html}
<p>
```
Enter this text to create your function and test it.
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
<span style="color: #0000ff;">foreach</span> () { <span style="color: #483d8b;">local</span> <span style="color: #a0522d;">cmd</span>=<span style="color: #8b2252;">"$1"</span>; <span style="color: #483d8b;">shift</span>; <span style="color: #a020f0;">for</span> arg<span style="color: #a020f0;"> in</span> <span style="color: #8b2252;">"$@"</span>; <span style="color: #a020f0;">do</span> $<span style="color: #a0522d;">cmd</span> $<span style="color: #a0522d;">arg</span>; <span style="color: #a020f0;">done</span>; }
foreach dateArg a e i o u <span style="color: #b22222;"># </span><span style="color: #b22222;">a purposely shorter list</span>
fbdy foreach dateArg
</pre>
```
:::

```{=html}
<p>
```
Note the ease of displaying functions. Here are the results of those
commands.
```{=html}
</p>
```
```{=html}
<pre class="example">
foreach () { local cmd=$1; shift; for arg in $@; do $cmd $arg; done; }
foreach dateArg a e i o u
a: Sun
e: 30
i: i
o: o
u: 7
$
fbdy foreach dateArg
foreach () 
{ 
    local cmd=$1;
    shift;
    for arg in $@;
    do
        $cmd $arg;
    done
}
dateArg () 
{ 
    date "+$1: %$1"
}
$
</pre>
```
:::
:::

::: {#outline-container-org2034493 .outline-4}
```{=html}
<h4 id="org2034493">
```
[3.3.3]{.section-number-4} questions:
```{=html}
</h4>
```
::: {#text-3-3-3 .outline-text-4}
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
compare the `<b>`{=html}`<b>`{=html}foreach`</b>`{=html}`</b>`{=html}
function with the `<i>`{=html}for`</i>`{=html} command
```{=html}
</li>
```
```{=html}
<li>
```
notice the additional syntax in the function
```{=html}
</li>
```
```{=html}
<li>
```
explain what the `<i>`{=html}shift`</i>`{=html} keyword does.
```{=html}
</li>
```
```{=html}
<li>
```
did you notice how the function body was displayed?
```{=html}
</li>
```
```{=html}
<li>
```
what is the meaning of the `<i>`{=html}local`</i>`{=html} keyword
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::
:::

::: {#outline-container-org21409a0 .outline-3}
```{=html}
<h3 id="org21409a0">
```
[3.4]{.section-number-3} Collect Save and Reuse
```{=html}
</h3>
```
::: {#text-3-4 .outline-text-3}
```{=html}
<p>
```
Before we get ahead of ourselves lets use the tools we now have to
collect our functions, save them in a function library, and see how we
can re-us them in subsequent sessions on the computer.
```{=html}
</p>
```
```{=html}
<p>
```
Lets anticipate what we need to arrive at the last step.
```{=html}
</p>
```
:::

::: {#outline-container-orge544cae .outline-4}
```{=html}
<h4 id="orge544cae">
```
[3.4.1]{.section-number-4} Accessing a Function Library
```{=html}
</h4>
```
::: {#text-3-4-1 .outline-text-4}
```{=html}
<p>
```
The shell builtin, `<i>`{=html}source`</i>`{=html} reads a
`<b>`{=html}`<b>`{=html}file`</b>`{=html}`</b>`{=html} into the current
shell as if's contents had been typed at the command line. We already
have the means to store our functions into a file, at this point without
having used a text editor. Nor will we have to use one just yet.
```{=html}
</p>
```
```{=html}
<p>
```
I find it useful to store the functions in an executable file on your
PATH. When you login, you are running a terminal shell, in our case
`<i>`{=html}bash`</i>`{=html}. Confirm this by running this command:
```{=html}
</p>
```
```{=html}
<pre class="example">

$ echo $SHELL
/usr/local/bin/bash
$ ...
</pre>
```
```{=html}
<p>
```
Which in this case is in the `<i>`{=html}usr/local/bin`</i>`{=html}
`<b>`{=html}directory`</b>`{=html}. If you
```{=html}
</p>
```
```{=html}
<pre class="example">

$ echo $PATH
/Users/martymcgowan/bin:/Users/martymcgowan/git/dfg/bin: ....
...:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:...
$ ...
</pre>
```
```{=html}
<p>
```
you see the directories on your PATH were you will find the executable
files. More later on selecting and adding directories to your PATH. If
you are on a well-administered system, your system administrator will
have set up a default PATH when you login.
```{=html}
</p>
```
```{=html}
<p>
```
I recommend you put your function library in a
`<i>`{=html}./bin`</i>`{=html} directory, and personally use files whose
name ends in `<i>`{=html}lib`</i>`{=html}. Prepare to store your
library:
```{=html}
</p>
```
```{=html}
<pre class="example">

$ mkdir $HOME/bin
$ PATH=$HOME/bin:$PATH    # put this in your ~/.bash_profile
$...
</pre>
```
```{=html}
<p>
```
Where `<b>`{=html}`<b>`{=html}\~`</b>`{=html}`</b>`{=html} is a
shorthand for your `<i>`{=html}\$HOME`</i>`{=html} directory.
```{=html}
</p>
```
:::
:::

::: {#outline-container-org53cd2f5 .outline-4}
```{=html}
<h4 id="org53cd2f5">
```
[3.4.2]{.section-number-4} Writing your first Function Library
```{=html}
</h4>
```
::: {#text-3-4-2 .outline-text-4}
```{=html}
<p>
```
At last, the payoff. making you have the functions defined in your
current session. Just in case, here they are.
```{=html}
</p>
```
```{=html}
<pre class="example">
$ hello () { echo "Hello World!"; }
$ today () { date +%Y%m%d; }
$ dateArg () { date "+$1: %$1"; }
$ fbdy () { declare -f ${@:-fbdy}; }
$ foreach () { local cmd=$1; shift; for arg in $@; do $cmd $arg; done; }
</pre>
```
```{=html}
<p>
```
Enter them by typing on the command line. Now execute this command:
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
$ fbdy hello today dateArg fbdy foreach | tee $<span style="color: #a0522d;">HOME</span>/bin/ch01lib
<span style="color: #0000ff;">hello</span> () 
{ 
    <span style="color: #483d8b;">echo</span> <span style="color: #8b2252;">"Hello World!"</span>
}
<span style="color: #0000ff;">today</span> () 
{ 
    date +%Y%m%d
}
<span style="color: #0000ff;">dateArg</span> () 
{ 
    date <span style="color: #8b2252;">"+$1: %$1"</span>
}
<span style="color: #0000ff;">fbdy</span> () 
{ 
    <span style="color: #483d8b;">declare</span> -f ${<span style="color: #a0522d;">@</span>:-fbdy}
}
<span style="color: #0000ff;">foreach</span> () 
{ 
    <span style="color: #483d8b;">local</span> <span style="color: #a0522d;">cmd</span>=$<span style="color: #a0522d;">1</span>;
    <span style="color: #483d8b;">shift</span>;
    <span style="color: #a020f0;">for</span> arg<span style="color: #a020f0;"> in</span> $<span style="color: #a0522d;">@</span>;
    <span style="color: #a020f0;">do</span>
        $<span style="color: #a0522d;">cmd</span> $<span style="color: #a0522d;">arg</span>;
    <span style="color: #a020f0;">done</span>
}
$ chmod +x $<span style="color: #a0522d;">HOME</span>/bin/ch01lib

</pre>
```
:::

```{=html}
<p>
```
The last command makes the file executable, so when you return, you may
```{=html}
</p>
```
```{=html}
<pre class="example">

$ source ch01lib  # reading your functions into your shell
</pre>
```
:::
:::
:::

::: {#outline-container-org651a9a2 .outline-3}
```{=html}
<h3 id="org651a9a2">
```
[3.5]{.section-number-3} Introduced in this Chapter
```{=html}
</h3>
```
::: {#text-3-5 .outline-text-3}
:::

::: {#outline-container-orgd52dcc5 .outline-4}
```{=html}
<h4 id="orgd52dcc5">
```
[3.5.1]{.section-number-4} Commands and Features
```{=html}
</h4>
```
::: {#text-3-5-1 .outline-text-4}
```{=html}
<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
```
```{=html}
<colgroup>
```
```{=html}
<col  class="org-left" />
```
```{=html}
<col  class="org-left" />
```
```{=html}
</colgroup>
```
```{=html}
<thead>
```
```{=html}
<tr>
```
```{=html}
<th scope="col" class="org-left">
```
command or concept
```{=html}
</th>
```
```{=html}
<th scope="col" class="org-left">
```
category
```{=html}
</th>
```
```{=html}
</tr>
```
```{=html}
</thead>
```
```{=html}
<tbody>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
chmod
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
command
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
date
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
command
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
declare
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
echo
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
command
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
eval
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
file
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
object
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
for
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell keyword
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
function
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell keyword
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
HOME
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell variable
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
local
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
mkdir
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
command
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
parameter expansion
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
concept
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
PATH
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell variable
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
positional parameter
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
concept
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
set
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
shell variable
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
object
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
shift
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
source
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
shell builtin
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
tee
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
command
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
<tr>
```
```{=html}
<td class="org-left">
```
unix manual page
```{=html}
</td>
```
```{=html}
<td class="org-left">
```
object
```{=html}
</td>
```
```{=html}
</tr>
```
```{=html}
</tbody>
```
```{=html}
</table>
```
```{=html}
<p>
```
Help is close at hand:
```{=html}
</p>
```
::: org-src-container
```{=html}
<pre class="src src-shell">
man chmod    <span style="color: #b22222;"># </span><span style="color: #b22222;">for the concise details of a command (chmod)</span>
<span style="color: #483d8b;">help</span> -m for  <span style="color: #b22222;"># </span><span style="color: #b22222;">... of a shell keyword (for) or builtin</span>
man man      <span style="color: #b22222;"># </span><span style="color: #b22222;">and</span>
<span style="color: #483d8b;">help</span> -m help <span style="color: #b22222;"># </span><span style="color: #b22222;">be sure to read the Options</span>

</pre>
```
:::
:::
:::

::: {#outline-container-orgde25c90 .outline-4}
```{=html}
<h4 id="orgde25c90">
```
[3.5.2]{.section-number-4} Functions
```{=html}
</h4>
```
::: {#text-3-5-2 .outline-text-4}
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
dateArg
```{=html}
</li>
```
```{=html}
<li>
```
fbdy
```{=html}
</li>
```
```{=html}
<li>
```
foreach
```{=html}
</li>
```
```{=html}
<li>
```
hello
```{=html}
</li>
```
```{=html}
<li>
```
today
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::

::: {#outline-container-org9735da9 .outline-4}
```{=html}
<h4 id="org9735da9">
```
[3.5.3]{.section-number-4} References
```{=html}
</h4>
```
::: {#text-3-5-3 .outline-text-4}
```{=html}
<ul class="org-ul">
```
```{=html}
<li>
```
bash shell
`<a href="https:/en.wikipedia.org/wiki/Bash_(Unix_shell)">`{=html}https:/en.wikipedia.org/wiki/Bash\_(Unix_shell)`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
date manual page
`<a href="https://duckduckgo.com/?q=unix+date+man+page">`{=html}https://duckduckgo.com/?q=unix+date+man+page`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
GNU Shell Functions
`<a href="https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html">`{=html}https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
one sh-bang
`<a href="https://mcgowans.org/pubs/marty3/commonplace/software/onlyOneShBang.html">`{=html}https://mcgowans.org/pubs/marty3/commonplace/software/onlyOneShBang.html`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
shell builtin
`<a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html">`{=html}https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
shell functions ebook
`<a href="https://leanpub.com/shellfunctions">`{=html}https://leanpub.com/shellfunctions`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
shell keyword
`<a href="https://www.gnu.org/software/bash/manual/html_node/Reserved-Word-Index.html">`{=html}https://www.gnu.org/software/bash/manual/html_node/Reserved-Word-Index.html`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
shell tutorial
`<a href="https://www.shellscript.sh/">`{=html}https://www.shellscript.sh/`</a>`{=html}
```{=html}
</li>
```
```{=html}
<li>
```
terminal shell
`<a href="https://cloud.google.com/shell">`{=html}https://cloud.google.com/shell`</a>`{=html}
```{=html}
</li>
```
```{=html}
</ul>
```
:::
:::
:::
:::

::: {#outline-container-orgdcac213 .outline-2}
```{=html}
<h2 id="orgdcac213">
```
[4]{.section-number-2} A Brief History of Shell Commands
```{=html}
</h2>
```
::: {#text-4 .outline-text-2}
:::

::: {#outline-container-org60e6afa .outline-3}
```{=html}
<h3 id="org60e6afa">
```
[4.1]{.section-number-3} New Concepts
```{=html}
</h3>
```
:::

::: {#outline-container-orgae1a53e .outline-3}
```{=html}
<h3 id="orgae1a53e">
```
[4.2]{.section-number-3} Shell Command History
```{=html}
</h3>
```
::: {#text-4-2 .outline-text-3}
:::

::: {#outline-container-orga289860 .outline-4}
```{=html}
<h4 id="orga289860">
```
[4.2.1]{.section-number-4} Editor Modes
```{=html}
</h4>
```
:::
:::

::: {#outline-container-org0719e3b .outline-3}
```{=html}
<h3 id="org0719e3b">
```
[4.3]{.section-number-3} history list
```{=html}
</h3>
```
::: {#text-4-3 .outline-text-3}
```{=html}
<p>
```
`<b>`{=html}positional parameter`</b>`{=html} to the letter
`<i>`{=html}F`</i>`{=html}, just as it would be when
`<b>`{=html}J`</b>`{=html} goes forward.
```{=html}
</p>
```
:::
:::

::: {#outline-container-orgebee328 .outline-3}
```{=html}
<h3 id="orgebee328">
```
[4.4]{.section-number-3} The simple step -- the function
```{=html}
</h3>
```
:::

::: {#outline-container-org77ebc03 .outline-3}
```{=html}
<h3 id="org77ebc03">
```
[4.5]{.section-number-3} Terminal Cut and Paste
```{=html}
</h3>
```
:::

::: {#outline-container-orgac9333b .outline-3}
```{=html}
<h3 id="orgac9333b">
```
[4.6]{.section-number-3} Review
```{=html}
</h3>
```
:::
:::

::: {#outline-container-org923525f .outline-2}
```{=html}
<h2 id="org923525f">
```
[5]{.section-number-2} Shdoc -- SHell DOC comments
```{=html}
</h2>
```
::: {#text-5 .outline-text-2}
:::

::: {#outline-container-org9d31802 .outline-3}
```{=html}
<h3 id="org9d31802">
```
[5.1]{.section-number-3} New Concepts
```{=html}
</h3>
```
:::

::: {#outline-container-org756ff97 .outline-3}
```{=html}
<h3 id="org756ff97">
```
[5.2]{.section-number-3} the Null Command
```{=html}
</h3>
```
:::

::: {#outline-container-org8dbbfaf .outline-3}
```{=html}
<h3 id="org8dbbfaf">
```
[5.3]{.section-number-3} Now the Function Documentation
```{=html}
</h3>
```
::: {#text-5-3 .outline-text-3}
:::

::: {#outline-container-orgd7aacd6 .outline-4}
```{=html}
<h4 id="orgd7aacd6">
```
[5.3.1]{.section-number-4} the first functions
```{=html}
</h4>
```
:::
:::

::: {#outline-container-orgf0cc7fd .outline-3}
```{=html}
<h3 id="orgf0cc7fd">
```
[5.4]{.section-number-3} Embedding a Modification Date
```{=html}
</h3>
```
:::

::: {#outline-container-org5d87574 .outline-3}
```{=html}
<h3 id="org5d87574">
```
[5.5]{.section-number-3} The Date is Our First Tag
```{=html}
</h3>
```
::: {#text-5-5 .outline-text-3}
:::

::: {#outline-container-org8a0bcaf .outline-4}
```{=html}
<h4 id="org8a0bcaf">
```
[5.5.1]{.section-number-4} The Shell Documentation
```{=html}
</h4>
```
:::

::: {#outline-container-org2fc2323 .outline-4}
```{=html}
<h4 id="org2fc2323">
```
[5.5.2]{.section-number-4} Functions Abstracts
```{=html}
</h4>
```
:::
:::

::: {#outline-container-orgab0cf49 .outline-3}
```{=html}
<h3 id="orgab0cf49">
```
[5.6]{.section-number-3} Building the Function Database
```{=html}
</h3>
```
::: {#text-5-6 .outline-text-3}
:::

::: {#outline-container-org16082d2 .outline-4}
```{=html}
<h4 id="org16082d2">
```
[5.6.1]{.section-number-4} Functions yet to define
```{=html}
</h4>
```
:::
:::

::: {#outline-container-org05dfd9f .outline-3}
```{=html}
<h3 id="org05dfd9f">
```
[5.7]{.section-number-3} awk digression
```{=html}
</h3>
```
::: {#text-5-7 .outline-text-3}
```{=html}
<p>
```
`<b>`{=html}Do this:`</b>`{=html} Read the
`<a href="https://en.wikipedia.org/wiki/AWK">`{=html}main
article`</a>`{=html}.
```{=html}
</p>
```
:::
:::

::: {#outline-container-org348b30a .outline-3}
```{=html}
<h3 id="org348b30a">
```
[5.8]{.section-number-3} Activity
```{=html}
</h3>
```
:::

::: {#outline-container-org50133ae .outline-3}
```{=html}
<h3 id="org50133ae">
```
[5.9]{.section-number-3} References
```{=html}
</h3>
```
:::
:::

::: {#outline-container-orge4c8dc2 .outline-2}
```{=html}
<h2 id="orge4c8dc2">
```
[6]{.section-number-2} Collecting Functions
```{=html}
</h2>
```
::: {#text-6 .outline-text-2}
:::

::: {#outline-container-org2da048e .outline-3}
```{=html}
<h3 id="org2da048e">
```
[6.1]{.section-number-3} Families
```{=html}
</h3>
```
::: {#text-6-1 .outline-text-3}
:::

::: {#outline-container-org89369ca .outline-4}
```{=html}
<h4 id="org89369ca">
```
[6.1.1]{.section-number-4} names
```{=html}
</h4>
```
:::

::: {#outline-container-orgf40e665 .outline-4}
```{=html}
<h4 id="orgf40e665">
```
[6.1.2]{.section-number-4} generic sub-functions, e.g. \_init
```{=html}
</h4>
```
:::
:::

::: {#outline-container-org7031ca5 .outline-3}
```{=html}
<h3 id="org7031ca5">
```
[6.2]{.section-number-3} Types of Libraries
```{=html}
</h3>
```
::: {#text-6-2 .outline-text-3}
:::

::: {#outline-container-org92f3226 .outline-4}
```{=html}
<h4 id="org92f3226">
```
[6.2.1]{.section-number-4} system, low-level
```{=html}
</h4>
```
:::

::: {#outline-container-org4be1683 .outline-4}
```{=html}
<h4 id="org4be1683">
```
[6.2.2]{.section-number-4} application oriented
```{=html}
</h4>
```
:::

::: {#outline-container-org9cdb191 .outline-4}
```{=html}
<h4 id="org9cdb191">
```
[6.2.3]{.section-number-4} collection plate
```{=html}
</h4>
```
:::
:::

::: {#outline-container-orgc951bbd .outline-3}
```{=html}
<h3 id="orgc951bbd">
```
[6.3]{.section-number-3} Collecting into Applications
```{=html}
</h3>
```
:::
:::

::: {#outline-container-orga450c4b .outline-2}
```{=html}
<h2 id="orga450c4b">
```
[7]{.section-number-2} Development Process
```{=html}
</h2>
```
::: {#text-7 .outline-text-2}
:::

::: {#outline-container-org4e139dd .outline-3}
```{=html}
<h3 id="org4e139dd">
```
[7.1]{.section-number-3} using Backup
```{=html}
</h3>
```
:::

::: {#outline-container-org4dd55c3 .outline-3}
```{=html}
<h3 id="org4dd55c3">
```
[7.2]{.section-number-3} how frequently take a "version"
```{=html}
</h3>
```
:::

::: {#outline-container-org72d6db6 .outline-3}
```{=html}
<h3 id="org72d6db6">
```
[7.3]{.section-number-3} shdoc, tags, prep for Function Data base
```{=html}
</h3>
```
:::

::: {#outline-container-orgade030d .outline-3}
```{=html}
<h3 id="orgade030d">
```
[7.4]{.section-number-3} DP, Cycle in One Principle library, with others
```{=html}
</h3>
```
:::
:::

::: {#outline-container-org59a3f8c .outline-2}
```{=html}
<h2 id="org59a3f8c">
```
[8]{.section-number-2} Factor a Shell Script
```{=html}
</h2>
```
:::

::: {#outline-container-orgdc23804 .outline-2}
```{=html}
<h2 id="orgdc23804">
```
[9]{.section-number-2} System Tools
```{=html}
</h2>
```
::: {#text-9 .outline-text-2}
:::

::: {#outline-container-org0fc2e5d .outline-3}
```{=html}
<h3 id="org0fc2e5d">
```
[9.1]{.section-number-3} Awk
```{=html}
</h3>
```
::: {#text-9-1 .outline-text-3}
:::

::: {#outline-container-orgb935147 .outline-4}
```{=html}
<h4 id="orgb935147">
```
[9.1.1]{.section-number-4} in functions, size objective
```{=html}
</h4>
```
:::
:::

::: {#outline-container-orgebd6106 .outline-3}
```{=html}
<h3 id="orgebd6106">
```
[9.2]{.section-number-3} Sed, Grep
```{=html}
</h3>
```
:::
:::

::: {#outline-container-org436b07e .outline-2}
```{=html}
<h2 id="org436b07e">
```
[10]{.section-number-2} Applications
```{=html}
</h2>
```
::: {#text-10 .outline-text-2}
:::

::: {#outline-container-org8ba6f9b .outline-3}
```{=html}
<h3 id="org8ba6f9b">
```
[10.1]{.section-number-3} /RDB
```{=html}
</h3>
```
:::

::: {#outline-container-org439acd5 .outline-3}
```{=html}
<h3 id="org439acd5">
```
[10.2]{.section-number-3} Backup
```{=html}
</h3>
```
:::

::: {#outline-container-org77b064f .outline-3}
```{=html}
<h3 id="org77b064f">
```
[10.3]{.section-number-3} Tags
```{=html}
</h3>
```
:::

::: {#outline-container-org38324cc .outline-3}
```{=html}
<h3 id="org38324cc">
```
[10.4]{.section-number-3} Function Data Base
```{=html}
</h3>
```
:::
:::

::: {#outline-container-org7264d70 .outline-2}
```{=html}
<h2 id="org7264d70">
```
[11]{.section-number-2} Appendices
```{=html}
</h2>
```
::: {#text-11 .outline-text-2}
:::

::: {#outline-container-org19f24de .outline-3}
```{=html}
<h3 id="org19f24de">
```
[11.1]{.section-number-3} The Script
```{=html}
</h3>
```
::: {#text-11-1 .outline-text-3}
:::

::: {#outline-container-orgbb8804b .outline-4}
```{=html}
<h4 id="orgbb8804b">
```
[11.1.1]{.section-number-4} the app_script
```{=html}
</h4>
```
:::

::: {#outline-container-org2daef1b .outline-4}
```{=html}
<h4 id="org2daef1b">
```
[11.1.2]{.section-number-4} an actual sh-bang
```{=html}
</h4>
```
:::

::: {#outline-container-org7857a43 .outline-4}
```{=html}
<h4 id="org7857a43">
```
[11.1.3]{.section-number-4} the only sh-bang you'll ever need
```{=html}
</h4>
```
:::
:::

::: {#outline-container-orgfcb411a .outline-3}
```{=html}
<h3 id="orgfcb411a">
```
[11.2]{.section-number-3} Writing Tools
```{=html}
</h3>
```
:::
:::
:::

::: {#postamble .status}
```{=html}
<p class="author">
```
Author: Marty McGowan
```{=html}
</p>
```
```{=html}
<p class="date">
```
Created: 2022-11-12 Sat 12:25
```{=html}
</p>
```
```{=html}
<p class="validation">
```
`<a href="http://validator.w3.org/check?uri=referer">`{=html}Validate`</a>`{=html}
```{=html}
</p>
```
:::

```{=html}
</body>
```
```{=html}
</html>
```
