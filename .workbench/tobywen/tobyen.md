::::::::::::::::::::::::::::::::: {#content}
# The Only Backup You\'ll Ever Need {#the-only-backup-youll-ever-need .title}

:::: {#table-of-contents}
## Table of Contents

::: {#text-table-of-contents}
- [1. The Only Backup You\'ll Ever Need](#orgbfa94a1)
  - [1.1. backup Introduction](#org16f7a76)
  - [1.2.
    functions   [[functions]{.functions} [tangle]{.tangle}]{.tag}](#org828249f)
  - [1.3. comment   [[recursion]{.recursion}]{.tag}](#orgc5b2309)
  - [1.4. Code reader\'s guide](#org9c69c9e)
    - [1.4.1. getting
      started   [[set]{.set} [parameter]{.parameter}]{.tag}](#org7effc40)
    - [1.4.2. down the
      chain   [[recursion]{.recursion}]{.tag}](#orgbfe91ab)
    - [1.4.3. and back up](#org7f0d4b0)
    - [1.4.4. general
      principals   [[quietly]{.quietly} [ignore]{.ignore}]{.tag}](#org61f1867)
  - [1.5. Auxiliary Code   [[auxiliary]{.auxiliary}]{.tag}](#orgaa40fa4)
  - [1.6. An application   [[REPAIR]{.REPAIR}]{.tag}](#org1d45b6f)
  - [1.7. make the library, application](#orgfedbb5c)
- [2. reference   [[version]{.version}]{.tag}](#orgd447326)
:::
::::

:::::::::::::::::::::::::::: {#outline-container-orgbfa94a1 .outline-2}
## [1]{.section-number-2} The Only Backup You\'ll Ever Need {#orgbfa94a1}

:::: {#text-1 .outline-text-2}
::: org-src-container
``` {.src .src-sh}
function copyright_backup
{ 
    comment "Copyright (C) 2009-2022, JYATL - Just Yet Another Testing Lab";
    comment "mailto: mcgowan (at) alum DOT mit DOT edu";
    : bkp: appleton.home./Users/applemcg/Dropbox/commonplace/software/backupfunction.org
}
function backup_files
{ 
    : returns names of the current backup files
    trace_call $*;
    indir .bak ls
}
function backup_filesNot
{ 
    : this should be collapsed into a more general command
    trace_call $*;
    find ${*:-.} -type f | grep -v '\/\.'
}
function backup_init
{ 
    source auxlib;
    copyright_backup
}
function backup_lib
{ 
    : is this really necessary?
    : since the only reason for eXecutable is to find the file
    : on your PATH
    trace_call $*;
    backup $*;
    chmod +x $*
}
function backup_sync
{ 
    : removing a file before backing up, pushes any backup down the chain
    : preserving the latest copy but it's no longer a "backup_file". 
    : the "indir .. backup *" uses only the .BAK names in it's parent
    trace_call $*;
    ignore pushd ./.bak;
    set $(indir .. ls * | command comm -13 - <(ls *));
    backup $*;
    rm -f $*;
    indir .. backup *;
    popd 1>&2
}
function backup_version
{ 
    : create a version -- after sync for all current backup files
    trace_call $*;
    report_nondirectory .bak && return 1;
    backup_sync;
    ln .bak/* $(needir .ver/$(ymd_hms))
}
function backup_depth
{ 
    find .bak | awk -F/ '{ print NF }' | sort | uniq -c | sort -n -k2
}
```
:::

here is how I learned to
[repeatString](http://askubuntu.com/questions/299710/how-to-determine-if-a-string-is-a-substring-of-another-in-bash)
::::

:::: {#outline-container-org16f7a76 .outline-3}
### [1.1]{.section-number-3} backup Introduction {#org16f7a76}

::: {#text-1-1 .outline-text-3}
This idea for a simple **backup** function, stems from my days at
Fidessa, where the question arose:

\> When using a script to back up a file, what if you successively copy
the file down a chain of suffixes, say .001, .002, ..., but it\'s not
long enough?

For example, you may have stopped at .004, when it was the non-existent
.005 you really needed.

``` {#org7830f5e .example}

$ cp this.003 this.004
$ cp this.002 this.003
$ cp this.001 this.002
$ cp this.txt this.001
```

Here are the [requirements for this
backup](../version/quickSimpleVersion.html), and the related simple
version command.

To save unlimited backups, the file system offers a ready solution.
Rather than play with suffixes, just push a differing copy of the
current file down a directory stack. Do this indefinitely until you\'re
satisfied. In practice, I\'ve seen this grow to thirty-something entries
before the need to clean-up arose.

``` {#orgc877990 .example}

$ ...
$ cp .bak/.bak/.bak/this.txt  .bak/.bak/.bak/.bak/this.txt 
$ cp .bak/.bak/this.txt       .bak/.bak/.bak/this.txt 
$ cp .bak/this.txt            .bak/.bak/this.txt 
$ cp this.txt                 .bak/this.txt 
```

Notice the first line, \"...\". It suggests \"one more if needed\". With
this backup, You\'ll never run out of backup directories. Also, notice
that after copying this.txt to .bak, then .bak/this.txt is identical to
the current file. That suggests an even simpler *version*-ing system,
which is the subject of [this
note.](https://mcgowans.org/pubs/marty3/commonplace/version/quickSimpleVersion.html::*Introduction)

This paper is part of my [Commonplace Book](../book.html)
:::
::::

::::: {#outline-container-org828249f .outline-3}
### [1.2]{.section-number-3} functions   [[functions]{.functions} [tangle]{.tangle}]{.tag} {#org828249f}

:::: {#text-1-2 .outline-text-3}
::: org-src-container
``` {.src .src-sh}
function backup                      # (backup)
{ 
    : backup file arguments
    case $1 in 
        "")                          # (gracefully)
            usage file ... recursively backup to .bak/.bak/...;
            return
        ;;
        *) 
            local fun=backup_$1
            is_function $fun && {
                shift
                $fun $*
                return
            }
        ;;
    esac;
    trace_call $*;                   # (trace)
    foreach backup_one "$@"
}
function backup_here                 # (backup_here)
{
    : recursively backup one
    report_notcalledby backup_one && return 1   
    set $1 .bak ${2:-$PWD};          # (set)
    [[ -d $2 ]] || mkdir $2;         # (mkdir)
    [[ $3 == $PWD ]] && {            # (base directory)
        cmp $1 $2/$1 2> /dev/null 1>&2 && return # (cmp)
    };
    [[ -f $2/$1 ]] && {            # more work to do, so
        cd $2;                        # recursively descend
        backup_here $1 $3             # and backup this too
    } || {                         # OR ...
        mv $1 $2/$1;                  # (to the backup)
        [[ $3 == $PWD ]] && {         # (back to home base)
            cp $2/$1 $1;              # (current)
            timestamp $2/$1 $1;       # (sametime)
            return
        };
        cd ..;                        # (recursively ascend)
        backup_here $1 $3
    }
}
function backup_one                   # (backup_one)
{ 
    : allows non-local file names
    report_notfile $1 && return 1;
    report_notcalledby backup && return 2  # (notcalledby)
    ignore pushd $(dirname $1);       # (ignore)
    backup_here $(basename $1);       # (invoked)
    ignore popd
}
```
:::
::::
:::::

:::: {#outline-container-orgc5b2309 .outline-3}
### [1.3]{.section-number-3} comment   [[recursion]{.recursion}]{.tag} {#orgc5b2309}

::: {#text-1-3 .outline-text-3}
The three **backup** functions (backup, backup_here, and backup_one)
highlight an approach I\'m now taking. The function now named
[backup_here](#coderef-backup_here){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-backup_here');"
onmouseout="CodeHighlightOff(this, 'coderef-backup_here');"} was
originally the first *backup* function I wrote. As a unit-test, I tested
it on single files in the current directory. I tested the simple
features before adding the ability to backup multiple files and files
not in the current directory. So, as the *backup* function evolved to
add these separate features, the new features are recognized by new
names. While these names are accessible to the user, they are rarely
needed, and backing up a single file in the same directory works to the
same original interface.

The instances of [notcalledby](#coderef-notcalledby){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-notcalledby');"
onmouseout="CodeHighlightOff(this, 'coderef-notcalledby');"} effectively
turn the function into a local function. Comment the statement out to
perform a unit test of the function.
:::
::::

:::::::::::: {#outline-container-org9c69c9e .outline-3}
### [1.4]{.section-number-3} Code reader\'s guide {#org9c69c9e}

::: {#text-1-4 .outline-text-3}
:::

:::: {#outline-container-org7effc40 .outline-4}
#### [1.4.1]{.section-number-4} getting started   [[set]{.set} [parameter]{.parameter}]{.tag} {#org7effc40}

::: {#text-1-4-1 .outline-text-4}
The first trick is on the first line, using a
[set](#coderef-set){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-set');"
onmouseout="CodeHighlightOff(this, 'coderef-set');"} idiom, which in
this case, sets the shell\'s *positional parameters*. Here, the first
parameter, \$1 is unchanged and was assigned the name of the backup
file; the second is assigned the name of the backup directory, `.bak`,
while the third parameter is assigned either the **second** argument to
the function (\$2), or defaults to the current directory (\$PWD).

  param   source         means
  ------- -------------- -------------------
  1       \$1            backup file
  2       **.bak**       backup directory
  3       \$2 or \$PWD   current directory

When [invoked](#coderef-invoked){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-invoked');"
onmouseout="CodeHighlightOff(this, 'coderef-invoked');"} the first time,
the second argument is empty, so the third positional parameter is set
to the current working directory. Now the assurance offered by
****backup_one**** insulating the [backup](#coderef-backup){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-backup');"
onmouseout="CodeHighlightOff(this, 'coderef-backup');"} function from
multiple file names is seen to be useful. The third parameter then holds
the starting directory of the backup chain as a means of branching;
either are we starting down the chain, or are we done, having returned
from the last nested recursive call.

Then create ([mkdir](#coderef-mkdir){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-mkdir');"
onmouseout="CodeHighlightOff(this, 'coderef-mkdir');"}) a missing backup
(*.bak*) directory.
:::
::::

:::: {#outline-container-orgbfe91ab .outline-4}
#### [1.4.2]{.section-number-4} down the chain   [[recursion]{.recursion}]{.tag} {#orgbfe91ab}

::: {#text-1-4-2 .outline-text-4}
If we are just starting down the chain, the condition for [base
directory](#coderef-base%20directory){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-base directory');"
onmouseout="CodeHighlightOff(this, 'coderef-base directory');"} is true.
Therefore, and only this first time, is it necessary to compare the
current file `$1` with it\'s most recent backup `$2/$1`, which by the
way, needn\'t exist. If they are identical the comparison
[cmp](#coderef-cmp){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-cmp');"
onmouseout="CodeHighlightOff(this, 'coderef-cmp');"} succeeds and there
is no further need of comparing with other files. Return. There is
nothing further to do.

Since there may not be a ****backup file**** `$2/$1`, a decision is
necessary. If there is a backup file, since it\'s now known to be
different, some precautions are necessary. Since there is a backup file,
it too must be backed up. So, go to the backup directory and recursively
descend through any backup directories.

At some point there is no backup file. Why? We\'ve descended to the
bottom of the chain of existing backups.

On the very first pass, you may have created the backup directory, the
**cmp** failed, the existence of a lower name is irrelevant (for the
moment). So, now we are in a directory that has a proper backup file,
and the directory below does not, and therefore is ready for the file to
move [to the backup](#coderef-to%20the%20backup){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-to the backup');"
onmouseout="CodeHighlightOff(this, 'coderef-to the backup');"}
directory.
:::
::::

:::: {#outline-container-org7f0d4b0 .outline-4}
#### [1.4.3]{.section-number-4} and back up {#org7f0d4b0}

::: {#text-1-4-3 .outline-text-4}
And worth thinking about for a moment. We have just moved the backup
file to a lower directory that was open to receive it. The directory we
are now in is now in a position to retrieve the file in its parent. If
we are [back to home base](#coderef-back%20to%20home%20base){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-back to home base');"
onmouseout="CodeHighlightOff(this, 'coderef-back to home base');"}, then
we need to copy the [current](#coderef-current){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-current');"
onmouseout="CodeHighlightOff(this, 'coderef-current');"} file we just
moved into the top backup, now back to the base directory. And, as a
little flourish, set the time stamp on the file to the
[sametime](#coderef-sametime){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-sametime');"
onmouseout="CodeHighlightOff(this, 'coderef-sametime');"} as the
just-moved file. And return. We\'re done.

If on the other hand, we have not returned up to the base directory,
then we [recursively ascend](#coderef-recursively%20ascend){.coderef
onmouseover="CodeHighlightOn(this, 'coderef-recursively ascend');"
onmouseout="CodeHighlightOff(this, 'coderef-recursively ascend');"} the
backup directory tree. Remember on the way up we are returning to a
directory whose backup copy had just been pulled down. And we do this
until we return to the base directory.
:::
::::

:::: {#outline-container-org61f1867 .outline-4}
#### [1.4.4]{.section-number-4} general principals   [[quietly]{.quietly} [ignore]{.ignore}]{.tag} {#org61f1867}

::: {#text-1-4-4 .outline-text-4}
Before leaving, I\'m employing some general principals that my shell
practice has evolved:

- do nothing gracefully

Here, the easy thing to do is give the user a help message. For those
commands which will do nothing without an argument, take the opportunity
to show a **help** message. In this case, remind the user the arguments
are files and may be many of them.

A grace I\'ve learned to use: when there is a main function like
`backup` with a number of related sub-functions, allow a command-line
user the option of using a space, rather

- [trace](#coderef-trace){.coderef
  onmouseover="CodeHighlightOn(this, 'coderef-trace');"
  onmouseout="CodeHighlightOff(this, 'coderef-trace');"} your execution.

While I like to trace every function, the exception here is the
preponderant use of **backup** from the command line, or other script,
and the much rarer use of backup_here or backup_one in similar
circumstances.

- use semantic commands, in this case [ignore](#coderef-ignore){.coderef
  onmouseover="CodeHighlightOn(this, 'coderef-ignore');"
  onmouseout="CodeHighlightOff(this, 'coderef-ignore');"} the standard
  output

This is a big deal with me. Here is the code for **ignore** and, while
we\'re at it **quietly**:

``` {#orgfb2b918 .example}

function ignore
{ 
    $@ > /dev/null
}
function quietly
{ 
    $@ 2> /dev/null
}
```

I would just as soon suffer any inefficiency at run-time to use a
semantic function over the syntactic means. Syntax is for those who need
it to feel they understand the medium. Semantics is for those of use
who\'d like to read what they are doing.

E.g:

``` example

ignore   the (standard) output of this command.
quietly  do this command -- I don't need the error messages.
```

Question: do you think this means anything:

``` example

quietly ignore everything   
```

is a vast improvement over

``` example

everything 2>&1 >/dev/null         # or
everything 2>/dev/null >/dev/null   
```
:::
::::
::::::::::::

:::: {#outline-container-orgaa40fa4 .outline-3}
### [1.5]{.section-number-3} Auxiliary Code   [[auxiliary]{.auxiliary}]{.tag} {#orgaa40fa4}

::: {#text-1-5 .outline-text-3}
You have noted there are a number of commands in the backup code you
won\'t find in the \*nix utilities on any system you\'ve seen. So, here
is the description (and code) for the [Auxiliary Library](auxlib.html)
:::
::::

:::: {#outline-container-org1d45b6f .outline-3}
### [1.6]{.section-number-3} An application   [[REPAIR]{.REPAIR}]{.tag} {#org1d45b6f}

::: {#text-1-6 .outline-text-3}
This challenge, noted in my [Software diary on Tuesday, 28th,
2015](swdiary.html) is to produce a fully-functioning application of the
library functions. There are three pieces: the functions above, the
remainder of the functions in the backup library, and any functions in
the auxiliary library.

Also the tooling it takes to move the pieces into place and write their
separate instances.
:::
::::

:::: {#outline-container-orgfedbb5c .outline-3}
### [1.7]{.section-number-3} make the library, application {#orgfedbb5c}

::: {#text-1-7 .outline-text-3}
As it now stands, here is the sequence to create both the local library,
and wrap it up as an application. For the reader, I\'ve hidden the most
of the backup functions in a library I\'m not showing in the on-line
document, but are available to an editor of this OrgMode source (and in
the run-time code library and application).
:::
::::
::::::::::::::::::::::::::::

:::: {#outline-container-orgd447326 .outline-2}
## [2]{.section-number-2} reference   [[version]{.version}]{.tag} {#orgd447326}

::: {#text-2 .outline-text-2}
1.  <http://mcgowans.org/pubs/marty3/commonplace/software/backupfunction.html>
    -- this paper, online
2.  My [Commonplace Book](../book.html)
3.  [Companion, simple versioning
    system](../version/quickSimpleVersion.html)
:::
::::
:::::::::::::::::::::::::::::::::

::: {#postamble .status}
Author: Marty McGowan

Created: 2022-08-30 Tue 14:01

[Validate](https://validator.w3.org/check?uri=referer)
:::
