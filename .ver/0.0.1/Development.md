
# State of Development

This document serves as the Table of Contents for this folder's
Documents.  While the temptation is strong to describe the development
cycle, that process is finding its way to a separate document.

<!-- 
  use a level of indirection to collect the current COPYs chapters

  ... see the MK_CHAPTERS function ...
  -->

## Chapters

For the time begin, then, here's what's here:

!include src/chapters.txt

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
1. here is the **pdmd** function to produce the HTML copy.

```sh
!include src/shell/pdmd
```

# Concept

Besides the self-referential reference v definition concept,
the early section here now includes Conceptual Changes.
   
## reference, definition

Each file may have `Reference`, `Definition`, and `deprecated`
sections where references need link to a definition, definition shows
satisfying link.  The deprecated section may be commented out.

## Reference

## Definition

<!--

## deprecated

1. xhylib 
   workup the **xhylib** process, it's part of both/either
   the **Development Loop** and the **Value of an Alias**.


  -->
