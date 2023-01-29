#! /bin/bash

# This script was created to clear every file and folder in the current
# directory, except for itself (hints the name: "cleandir.sh")

for dir in *; do
    if [ $dir != 'cleandir.sh' ]; then
        rm -rf $dir
    fi
done
