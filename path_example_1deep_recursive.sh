#!/usr/bin/env bash

# To setup a PATH for a folder, and include all subfolders N deep, for example:
#
#   export PATH=$PATH:$(find $THEMSCRIPTS -maxdepth 1 -type d | sed 's/\./$THEMSCRIPTS/' | tr "\n" ":")
#
# Set each desired parent folder to a variable
#
# matt.a.feenstra@gmail.com

N_DEEP=4
MY_RECURSED_FOLDER=$HOME/scripts

echo -e "\noriginal PATH:\n\n$PATH\n-----"
echo -e "\nwould become:\n"

str="$PATH:$(find $MY_RECURSED_FOLDER -maxdepth $N_DEEP -type d | sed 's/\./$MY_RECURSED_FOLDER/' | tr "\n" ":")"

# remove that last colon

echo ${str::-1}
