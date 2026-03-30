# Changelog

All notable changes to this project and workbench are documented in this file.

Inspect the [source of this document](./Changelog.md); here is the [pending](#pending) change.

The format is based on [Keep a CHANGELOG](https://keepachangelog.com/), and this project adheres to 
[Semantic Versioning](https://semver.org/).

## [Unreleased]

The first Major release of the "Backup-Version-Release Library Package"

+ document the package, the libraries, the download, and installation.

+ incorporate BVRLib content into the Shell Libraries documentation.

### Added 

### Changed

### Deprecated

### Removed

### Fixed

### Security


## [0.1.5] - pending

Probably bug fixes and in use practice changes.

### Added 

- 

### Changed

- 

### Removed

- 

### Fixed

- 

## [0.1.4] - 2026-03-30

Added "-v" or "-V" arguments for the "backup, version, release"
package libraries.  

For example: once libraries are installed version info is available
like this  
```
 $ release -v
releaselib version 0.2.0
```

### Added 

- "librarynamev" function added to each library when copied into a release

### Changed

- `release_one` function; added creating "librarynamev" functions


## [0.1.3] - 2026-03-16

Cleanup and refactorings for library `case` statements for each of the
backup, version, release libraries. For example, `releaselib` has a
function named `release` that accepts the argument "status". A status
function is available for "backup" and "version".

### Changed

```
backuplib
initlib
releaselib
shlib_install.sh
versionlib
zshutilib
```

## [0.1.2] - 2026-03-08

First release to have version info at the top of the library files.
  
### Added 

* these libraries:

```
backuplib
initlib
releaselib
shlib_install.sh
versionlib
zshutilib
```


