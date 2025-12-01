
# Alias Dictionary

My aliases are found in ~/.alias.rc, and sourced from 
the ~/.user profile.

 Besides the `alias` command itself to show tham at any time, I've
 installed a few helpers.


- ag  - an Alias eGrep
- ahelp -  the Alias HELPer
- sava - SAVe the current Aliasesd  ( in ~/.alias.rc )
- ua - User Aliases, the list of the aliases 


## ag

For example:

    $ ag `s p`
 
Grep for `s p`.  Letter 's', then a space followed by the letter 'p',
looking for aliases beginning with the letter 'p'

!include src/s_p.txt

## ahelp


!include src/ahelp.txt


## sava

```

$ ag sava
alias sava='a=~/.alias.rc; (alias;echo alias)>$a; backup $a; ahelp'
~.$

```

Note the use of:

- a shell variable: **a**
- a sub-shell: **( ... )**
- a local **backup** utility saves, or backs up the alias file
- and **ahelp**

## ua

```
$ ag ua=
alias ua='alias | sed '\''s/=.*//; s/^alias //'\'''
$
```

Note the use of the **=** sign to isolate the alias name

## The Dictionary

        $ ua | sed 's/^/### /'

Produces the list as a three-level header

### a2 -- two character aliases

Don't forget the `ta` function, short for Type minus A

### a3 -- like a2

### ag -- see above

### ahelp -- see above

### aotd -- Alias of The Day

edit to reflect a reacent addition

### ba 

 Here, `ta $(ua) looks for non-alias names

### bbf -- Backup the current Backup fiels,

but not those not already backup up

### btop -- Top Backed up file

in a single **.bak/** directory, no deeper

### cb -- Clean, than Backup (bbf)


### clipboard

shorthand, memory device for `pbcopy`

### cx -- Chmod +x


### def -- show the function Definition


### df1 -- Diff, highlist 1st


### df2 -- Diff, highlight 2nd


### do_wh -- define do_whlib


### ea -- Each numberic Arg


### f2bin -- Retire


### fpf -- First Printed File

from a list of full-path File names, delivers first or last depending on time sort

### fsfg -- 


### fsu -- 


### ft -- 


### funlib -- 


### fx -- 


### info -- 


### initall -- 


### j -- 


### jm -- 


### lbf -- 


### libprof -- 


### mfind -- 


### ne -- 


### nipd -- 


### nzs -- 


### off -- 


### on -- 


### page -- 

### pd --   shorthand for PickDir

### pbx -- 


### prep -- 


### python -- 


### qaddr -- 


### qbk -- 


### sava -- 


### sff -- 


### tea -- 


### top24 -- 


### trdh -- 


### ua -- 


### vgrep -- 


### xd -- 


### xeq -- 


### xlrt -- 


### xrt -- 


### xup -- 

## commands

+ `ahelp    | md_quote | tee src/ahelp.txt`
+ `ag 's p' | md_quote  | tee src/s_p.txt`
+ `open $(pdmd AliasDictionary.md)`

