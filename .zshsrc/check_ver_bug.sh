# Check for .ver files that are hard-linked to other .ver files

for f in $(find .ver -type f); do
    inode=$(ls -i "$f" | awk '{print $1}')
    alllinks=$(find . -inum $inode)

    # Check if any OTHER .ver file shares this inode
    for link in $alllinks; do
        # Normalize paths for comparison
        norm_f="./$f"
        if [[ "$link" != "$norm_f" && "$link" =~ ^\./.ver/ ]]; then
            echo "BUG: $f is hard-linked to $link"
        fi
    done
done
