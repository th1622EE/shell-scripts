#! /usr/bin/bash

###############################################################################
# HOW TO USE THIS SCRIPT
###############################################################################
# 1. Save this script in the directory containing all your repos
# 2. Change to repos directory when you want to run this script to update repos
# 3. Run the script by typing ./updaterepos.sh from bash terminal
###############################################################################

for sd in * ; do
    if [ $sd != 'updaterepos.sh' ]; then
        cd $sd ; git fetch && git merge && echo "Successfully updated $sd repo" && cd ..
    fi
done
