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
    rm -fv testfile1.txt
fi

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

# Clean up from previous remote tests - ask first
if confirm "clean up from previous remote tests"; then
#    rm -rf ~/tmp/test_backup_dir
    rm -rfv ~/tmp/test_backup_dir/.bak
    rm -fv testfile2.txt
fi

# Test 2: backup_init with remote directory argument (was causing infinite loop)
echo "\nTest series 2: backup_init with remote directory argument"
mkdir -p ~/tmp/test_backup_dir
echo "test content 2" > testfile2.txt
backup_init ~/tmp/test_backup_dir
echo "pre-backup $BACKUP_DIRECTORY $VERSION_DIRECTORY"
backup_one testfile2.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "post backup: $BACKUP_DIRECTORY $VERSION_DIRECTORY"
echo "Test 2 passed"

echo "Test 2a: update testfile and backup"
echo "test 2a content" >> testfile2.txt
echo "pre-backup $BACKUP_DIRECTORY $VERSION_DIRECTORY"
backup_one testfile2.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 2a passed"

echo "Test 2b: update testfile and backup"
echo "test 2b content" >> testfile2.txt
echo "pre-backup $BACKUP_DIRECTORY $VERSION_DIRECTORY"
backup_one testfile2.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 2b passed"

echo "Test 2c: update an unchanged testfile and backup one more time"
backup_one testfile2.txt
if [[ $? -ne 0 ]]; then
    echo "rc: $?"
    exit 1
fi
echo "Test 2c passed"

debug_off
echo "\nAll tests completed."
backup_init
backup_one $0

