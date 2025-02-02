#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <NewName> (e.g. $0 MyNewProject) Note: The new name must not contain whitespace."
    exit 1
fi

NEW_NAME="$1"

# Validate that the new name contains no whitespace.
if [[ "$NEW_NAME" =~ \  ]]; then
    echo "Error: The new name must not contain whitespace."
    exit 1
fi

# Rename occurrences in file contents, excluding the .git directory and the package.json file.
grep -rl 'Template' . --exclude-dir=.git --exclude="package.json" --exclude="bootstrap.sh" --exclude="bootstrap.ps1" | while read -r file; do
    sed -i "s/Template/$NEW_NAME/g" "$file"
done

# Rename files and directories.
find . -depth -name '*Template*' | while read -r file; do
    newfile=$(echo "$file" | sed "s/Template/$NEW_NAME/g")
    mv "$file" "$newfile"
done

echo "Renaming complete!"
