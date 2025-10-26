3a4,10
> <!--
>   1. TAB the Changelog twice, to open the ##'s
>   2. scroll to the ## after Unreleased 
>   3. TAB twice on that paragraph
>   -->
> ## Abstract
> 
5a13,15
> Inspect the [source of this document](./Changelog.md); here is the
> [pending](#pending) change.
> 
7,8c17,18
< CHANGELOG](https://keepachangelog.com/), and this project
< adheres to [Semantic Versioning](https://semver.org/). 
---
> CHANGELOG](https://keepachangelog.com/), and this project adheres to
> [Semantic Versioning](https://semver.org/).
16a27,28
> + remove personal libraries from control group
> 
35a48,100
> 
> ## [0.1.3] - pending
> 
> ### Added 
> 
> - `prep_version` comparing latest_version to prepped backups
> - `unuabslib` - UNUsed functions with Abstracts
> - `unusedlib` - UNUsed functions withOut Abstracts
> - `commandlib` -  functions `date_fmt SaveF`
> 
> ### Changed
> 
> - `.bash_profile` incorporate **iterm2** tools
> - moved **reshorelib** to personal directory
> - `prep_version` ignore **Changelog**
> - `retired` is now *lib/hibernate/retiredlib*
> 
> ### Removed
> 
> - `table_history` - a plan to eliminate functions better done inline
> - **whsrc** in behalf of `whlib`
> - moved `{html,path,reference,shd}lib` functions to
>   `{function,program,...}lib`s
> - *alias* functions `al_{b1,central,funs,list,type} fm_hist`, cutting
>   the cord on managing aliases with functionlibs.  Using direct
>   **alias** *sava* instead
> - *backup* functions `backup_{abstracts,clean,named,need,top}`
> - *cqdata* functions specific to personal usage
> - *docfence* `_fine
> 
> ### Fixed
> 
> - `fun_dupsfm{1,2}` to account for Libs in separate directories,
> 
> ## [0.1.2] - 2024-07-26
> 
> ### Added 
> 
> - `save_F` demonstration function: an /RDB how to, correct a Field in a Table
> - `m3b` - the personal directory
> - `dfg_context` - abbreviated context which wraps lines
> - `fuze{,_comm}` - experimental `fuse`
> 
> ### Changed
> 
> - `wrap_up` function, removed leaks
> - moved `mk_{examples,chapters}` to htmllib
> - moved  `clock, punch` families in **clocklib** to personal directory  
> 
> ### Removed
> 
> - `financelib` to personal directory
> 
< .ver/0.1.2/Changelog.md
> .bak/Changelog.md

