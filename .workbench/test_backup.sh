#!/bin/zsh
# Test script to verify backup operation  

# Source the libraries
source initlib
# Set recursion limit to catch infinite loops
setopt LOCAL_OPTIONS
FUNCNEST=23

# Clean up from previous tests - ask first
if confirm "clean up from previous tests"; then
    find .bak -name testfile1.txt | xargs rm -v
    rm -f testfile1.txt
fi

source blib-init
#source blib-here
#source blib-mm3
source blib-gemini
# Create a test file
echo "test content" > testfile1.txt
# Test series 1: backup_init with no arguments (should work)
echo "Test series 1: backup_init with no arguments"
debug_on
backup_init
echo $BACKUP_DIRECTORY $VERSION_DIRECTORY
backup_one testfile1.txt
# check return code?
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 1 passed"

echo "Test 1a: update testfile and backup"
echo "test 1a content" >> testfile1.txt
backup_one testfile1.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 1a passed"

echo "Test 1b: update testfile and backup one more time"
echo "test 1b content" >> testfile1.txt
backup_one testfile1.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 1b passed"

echo "Test 1c: update an unchanged testfile and backup one more time"
backup_one testfile1.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 1c passed"

echo "\nAll tests completed."
echo "\nbackup $0"
backup_one $0
