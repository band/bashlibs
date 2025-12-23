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
	

### Versioning
- code for making a first version (e.g., "0.0.1") link
- then for subsequent version links
- figure out how to manage moving from patch to minor to major version
  numbers and keeping the hard links straight  
  - there are some functions: `next_version`  
  

