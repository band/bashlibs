# Shell library installation script
# the main procedure is:
# - download the release directory
# - cd to release directory
# - run `sh_install.sh`
#   - options:
#     - install in the current directory (only update `initlib`
#     - install in another directory (update `initlib` and copy library files
#
# TODO: workout the two install options
# TODO: write up a README.md for
#   (1) installing the library package
#   (2) putting the functions into practice
#
shlib_install () {
    : uses: sed
    fullpath() { ( cd "$1" && pwd -P ) }
    # get directory/path to hold the libraries
    local lib_dir
    read "lib_dir?Enter library install directory path: "
    lib_dir=$(fullpath "${lib_dir/#\~/$HOME}")
    local dest="$lib_dir/initlib"
    # replace last line of `initlib` with "init_here $lib_dir"
    { sed '$d' initlib; print -r "init_here $lib_dir" } > "$dest"
    # copy the libraries to $lib_path
    local libs=(zshutilib backuplib versionlib releaselib)
    for lib in $libs; do
	cp -v $lib $lib_dir
    done
}
shlib_install


