#!/usr/bin/env bash
#
# To setup a PATH for a folder, and include all subfolders N deep.
# Add the following function to your shell (.bash_profile) and call it when
# setting the PATH variable.  For example:
#
#   export PATH=$PATH:$(deep_path)
#
# matt.a.feenstra@gmail.com

N_DEEP=4
MY_RECURSED_FOLDER=$HOME/scripts

function deep_path ()
{
  str="$(find $MY_RECURSED_FOLDER -maxdepth $N_DEEP -type d | sed 's/\./$MY_RECURSED_FOLDER/' | tr "\n" ":")"
  echo ${str::-1}
}

### For example:

echo -e "\nmy original PATH is:\n\n$PATH\n-----\n"

echo -e "adding this to your profile, with deep_path:"
echo -e "\texport PATH=\$PATH:\$(deep_path):/some/other/path\n\n"
echo -e "would become:\n\texport PATH=$PATH:$(deep_path):/some/other/path\n"
