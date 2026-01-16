#!/bin/zsh
# Test proper backup -> version workflow

debug() { : ; }
error() { echo "ERROR: $*"; }
version_bump() {
    local bump=$1; local ver=$2
    IFS='.' read -r major minor patch <<< "$ver"
    case $bump in
        major) echo "$((major + 1)).0.0" ;;
        minor) echo "$major.$((minor + 1)).0" ;;
        patch) echo "$major.$minor.$((patch + 1))" ;;
    esac
}

source ./vnlib
export VERSION_DIRECTORY=.ver
export BACKUP_DIRECTORY=.bak

echo "=== Workflow Test: Proper backup -> version cycle ==="

echo -e "\n1. Create initial file"
echo "Initial content" > testfile2
cat testfile2

echo -e "\n2. Create first backup (creates new .bak/testfile2)"
cp testfile2 .bak/testfile2
ls -li .bak/testfile2

echo -e "\n3. Create version 0.0.1"
version_new testfile2 p
echo "Result: $?"
[ -f .ver/0.0.1/testfile2 ] && ls -li .ver/0.0.1/testfile2

echo -e "\n4. Modify the working file"
echo "Modified content - version 2" > testfile2
cat testfile2

echo -e "\n5. Create NEW backup (should create new file, not overwrite)"
# Proper way: remove old backup first, then copy new one
rm -f .bak/testfile2
cp testfile2 .bak/testfile2
ls -li .bak/testfile2

echo -e "\n6. Create version 0.0.2 (should succeed now)"
version_new testfile2 p
echo "Result: $?"
[ -f .ver/0.0.2/testfile2 ] && ls -li .ver/0.0.2/testfile2

echo -e "\n7. Verify different inodes"
ls -li .ver/*/testfile2

echo -e "\n8. Cleanup"
rm -f testfile2 .bak/testfile2
rm -rf .ver/0.0.1 .ver/0.0.2

echo -e "\n=== Test Complete ==="
