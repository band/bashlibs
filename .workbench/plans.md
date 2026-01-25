# PLANS (every project needs a plan - Peter Kaminski)
- notes and outlines of planned, or wished for, Shell Libraries work.


## Backups and Versions
- making a working model from MM3's notes, notions, and code

### Backup
- document the backup process of building the `.bak/` directory trees

- outline how to manage and prune the tree using Versions  
  - quick thought is using hard links from `.ver/M.m.p/` directories
    to specific files in the `.bak/` directory tree
  - provide a way to prune the `.bak/` tree to only keep files linked
    with `ver/` tree versions  
  - some shell notes:  
```
# find all regular files with more than 1 hard link.
find . -type f -links +1

# Show the link count alongside the filename
find . -type f -links +1 | xargs ls -l

# find backed up files with only 1 hard link
find .bak/.bak -type f -links 1

# find backed up specific file with only 1 hard link
#  candidate for pruning
find .bak/.bak -name $filename -links 1
```

 - `prune_bakfiles` function coded
   - better name `backup_prunefiles` since it cleans up the `.bak/`
     directory  

#### backup workflow
- `source backuplib` (install lib functions)
- `backup_init` (set up ENV vars; defaults are `.bak/` and `.ver/`)
- list files available for backup
- list files that are backed up
- backup one or more files
  - primary functions: `backup` and `backup_one`
- utilities:
  - `backup_prunefiles`: remove .bak/ files not linked with a version
    file
	


### Versioning
- code for making a first version (e.g., "0.0.1") link
- then for subsequent version links
- figure out how to manage moving from patch to minor to major version
  numbers and keeping the hard links straight  
  - there are some functions: `next_version`  

- version processing outline:
```
 create next_version of $file
 if this is the first version, then
   vernum=${1-0.0.1} # if no vernum specified use 0.0.1
   mkdir .ver/$vernum if it does not exist
   ln -f .bak/$file .ver/$vernum/$file

 if this is just the next Patch version, then
   find latest vernum for $file
   mkdir .ver/$vernum if it does not exist
   ln -f .bak/$file .ver/$vernum/$file   
```

- `versionlib/version_new` function working

- some version utilities
  - find and list versioned files and `.bak/` copies
  - see function `version_findlinks` in `versionlib` 

#### versioning workflow  
- `source versionlib` (install lib functions)
- list current version files: `version_files` function in `versionlib`  
- primary functions: `version_new` and `version_bump`  
- other utility functions:  
  - `latest_version` and `all_versions` for a specified file
  - simple way to see all versions of all files: `tree -a .ver/`  

## 2025-12-31: backup and versioning operational model

- `backup` is used to save copies of files that have been changed
- **backup** saves copies of files in a `.bak/` directory hierarchy;
  the `.bak/` level is increased every time a file processed by
  `backup` differs from the copy of that file in the `.bak/`
  directory.
  - right now there is no limit to the hierarchy of `.bak/filename`
    files
  - complete copies of files are stored in the `.bak/` hierarchy
  
- the functions used for backup include:
  - `backup`
  - `backup_init`: initialize ENV variables
  - `backup_one`
  - `backup_here`: recursive movement of a file down the `.bak/` tree
  - `backup_prunefiles`: remove files in `.bak/` tree not versioned
    (cf. **Versioning**)
  
- TODO: cleanup and improve readability for all functions used.
	- figure out the licensing of this code

- suggested and existing functions for managing backup (`.bak/`)
  trees:
  - `backup_files`: list first-level backed up files
  - list files in **cwd** that are candidates for backup
  - list files in `.bak/` that do not exist in **cwd** (candidates for
    deletion) (right now `backup_outdated` does this)  

## 2026-01-03: version_new has a bug: apparently .ver/ files can end up linked to .ver/files
	- **TODO**: need to think about checking that latest version differs from the .bak/file copy?
		- there is something very brittle about this version/backup model  
    - 2026-01-06: versionlib 0.1.2 fixes this bug
	  - some brittleness remains
	  
## 2026-01-08: next steps
	- DONE: update git repo
	- DONE: backup and version_new `.src` files
	- TODO: create a changelog for this project
	
	- cleanup and review `backuplib`
		- then push to repo in `bashlibs/.src/` directory
	
	- prune the backup directory
		- this will serve to test `backup_prunefiles`
		- possibly put the "dry-run" guard in the next release?
          (definitely need a changelog)  

## 2026-01-19:  
	- DONE: separate zsh and bash libraries development
		- TODO: sync bash libraries with working zsh libs
	- TODO: streamline shell function dev initialization
	- TODO: minimize the number of functions needed for backup and
      version  
	- TODO: manage backups and versions in remote directories  
	
## 2026-01-22:  
	- work practice note: the libraries can be sourced in any Terminal
      instance.
	- `initlib [backup-directory-path]` is sourced  in the current
      working directory. In many cases the cwd is the
      backup-directory. What is the use case for using a separate
      directory?  
	- there is only one ENV var: BACKUP_DIRECTORY, which is the path
      to the directory that houses `.bak` and `.env`. 
	  - hmmm... is there a use case for separating `.bak` and `.env`
        into different directories? In any case, these two directories
        cannot span filesystems (hard-link constraint).  
    - DONE: `backup_status` function  
	
	- TODO: check where to include `with_strict` function  
		- examine use and value of using `dirs` built-in  
		
	- TODO: convert use of "echo" with "printf" (claude.ai opinion):  
		- Use printf '%s\n' "$var" as a direct echo "$var" replacement
		- For literal strings, echo "Error: file not found" is still
          fine  
	  - Why printf is better for scripts
	    - Consistent and predictable Works the same across all POSIX shells:
	```
	printf '%s\n' "$variable" # Always safe, always works
```
	    - Better control
		```
	printf '%s\n' "$var" # Just the variable, one newline
	printf '%s' "$var" # No newline
	printf '<%s>\n' "$var" # Formatted output
```

