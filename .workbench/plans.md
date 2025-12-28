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
