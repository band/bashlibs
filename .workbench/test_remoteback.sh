#!/bin/zsh
# Test script to verify backup operation to non-local directories

# Source the libraries
source initlib
# Set recursion limit to catch infinite loops
setopt LOCAL_OPTIONS
FUNCNEST=23

# Clean up from previous tests - ask first
if confirm "clean up from previous tests"; then
#    rm -rf /tmp/test_backup_dir
    rm -f testfile2.txt
fi

source blib-init
#source blib-uno
#source blib-here
source blib-gemini
# Create a test file

debug_on
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
echo "\nbackup $0"
backup_init
backup_one $0

