
# Organizing Shell Libraries

This book expands on an earlier work, Shell Functions, to build a
practice of shell libraries.  Specifically, `bash` shell function
libraries. Each developer, a tool-maker will have work clusters which
take shape as applications, general- and special-purpose groups of
functions.  Here, we'll investigate collections of functions, first as
libraries - physical files - and other associations we'll recognize as
families and groups of lists.  

An emerging theme in this work recognizes the natural ebb and flow in
the life of a function, it's neighbors, clients and subodinate
features.  "Where is the best home for this function?" is the
perennial question. Often, it's easily answered.  The excitement is in
the margins.  Searching for a function's home gives rise to study
models of the develpment work flow.


## Sections

Since the chapters forming here need an organiztion of their own, here's 
our opening organization:

- INTRODUCTION

with chapters on 

	- What's Different



For the time being, then, here's what's here:

!include work/chapters.txt


- LIBRARIES

- APPLICATIONS

- DOCUMENTATION TOOLS

decidedly using Markdown, with this book as it's prime example

- APPENDIX

    - Unix (R) uiliites used in the work
	- Local function libraries (particular to the Documentation Tools)
	
## Conceptual Changes

### Multiple Document Instances

Since this chapter is now the Table of Contents for a Document
Collection, the `src/chapters.txt` file redirects the content to
include document-dependent Chapters.

A few functions control the breadth of the chapter content:

- `docopy` "Document COPY" - the stem of the document directory
- `docopy_list` - reads a table of chapter, copy pairs selected
  against the copy attribute
- `main_document` - for the current copy
- `doc_init` - set or reset the copy, whose default is **doc**

The single file `src/chapters.txt` redirects the chapter list to the
`doc` copy of it's chapters.  The current `bin/mklib` supports the
capability


## Markdown Concepts to Learn

1. how to hand list sequencing
1. new, simple pandoc markdown features
1. here is the **pemd** function to produce the HTML copy.

```sh
!include src/shell/pemd
```

# Concept

Besides the self-referential reference v definition concept,
the early section here now includes Conceptual Changes.
## Shell Features

### The Tab
### The Null Command
### Unix Commands
### Syntax, Tricks, gotchas
### Python and Awk 
   
## reference, definition

Each file may have `Reference`, `Definition`, and `deprecated`
sections where references need link to a definition, definition shows
satisfying link.  The deprecated section may be commented out.

## Reference


 While the temptation is strong to describe the development
cycle, that process is finding its way to a separate document.
<!-- 
  use a level of indirection to collect the current COPYs chapters

  ... see the MK_CHAPTERS function ...
  -->
  
  
  

## Definition

<!--

## deprecated

1. xhylib 
   workup the **xhylib** process, it's part of both/either
   the **Development Loop** and the **Value of an Alias**.


  -->
