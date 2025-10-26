
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

A word on collections of functions.  For the time-being, the words
collections and group will retain their generic meaning:
>  *an accumulation of objects gathered for study, comparison, or exhibition*

This hierarchy of function groups will serve here:

- `package` -- one or more apps
- `app`-- one higher level function with many entry points, *man* page worthy
- `library` -- a source file of functions, one or more `families`
- `family` -- functions sharing an underscore defining common prefix
- `utility` -- functions widely across many apps, likely a single
  library of otherwise unconnected utility.

!include ./src/Sections.md


