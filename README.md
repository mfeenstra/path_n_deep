# path_n_deep

## To recurse into, and include all sub-folders, under a certain folder, for your shell environment's PATH variable.

matt.a.feenstra@gmail.com

-----

### Output from the example script:

```sh
my original PATH is:

.:/c/Users/matta/scripts:/usr/local/bin:/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/Wbem:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
-----

adding this to your profile, with deep_path:
        export PATH=$PATH:$(deep_path):/some/other/path


would become:
        export PATH=.:/c/Users/matta/scripts:/usr/local/bin:/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/Wbem:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/c/Users/matta/scripts:/c/Users/matta/scripts/pacman:/c/Users/matta/scripts/pacman/n_2_deep:/c/Users/matta/scripts/pacman/n_2_deep/n_3_deep_1:/c/Users/matta/scripts/pacman/n_2_deep/n_3_deep_2:/c/Users/matta/scripts/pacman/n_2_deep/n_3_deep_2/n_4_deep_1:/c/Users/matta/scripts/tmp:/c/Users/matta/scripts/vim_setup:/c/Users/matta/scripts/vim_setup/files:/some/other/path

```
