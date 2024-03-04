# --------------------------------------------------------------
# Created By: Sr. Yididiel Hills
# Description: Jupyter Common Directories and File Locations
# Created Date:  Sun 11 Jun 2023 23:11:32 IDT
# [Installing the IPython kernel](https://tinyurl.com/y8ourfew).
# --------------------------------------------------------------

Commands like jupyter notebook start Jupyter applications. The jupyter command is primarily a namespace for subcommands. A command like jupyter-foo found on your PATH will be available as a subcommand jupyter foo.

## The jupyter Commands

The jupyter command can also be used to do actions other than starting a Jupyter application.
Command options
-h, --help

    Show help information, including available subcommands.

--config-dir

    Show the location of the config directory.

--data-dir

    Show the location of the data directory.

--runtime-dir

    Show the location of the runtime directory.

--paths

    Show all Jupyter directories and search paths.

--json

    Print directories and search paths in machine-readable JSON format.

## Common Directories and File Locations

Jupyter stores different files (i.e. configuration, data, runtime) in a number of different locations. Environment variables may be set to customize for the location of each file type.

Jupyter separates data files (nbextensions, kernelspecs) from runtime files (logs, pid files, connection files) from configuration (config files, custom.js).
Configuration files
Config files are stored by default in the ``` ~/.jupyter directory.```

To list the config directories currently being used you can run the below command from the command line:

``` $ jupyter --paths ```

The following command shows the config directory specifically:

``` jupyter --config-dir ```

## Data files

Jupyter uses a search path to find installable data files, such as kernelspecs and notebook extensions. When searching for a resource, the code will search the search path starting at the first directory until it finds where the resource is contained.

As mentioned above, to list the config directories currently being used you can run the below command from the command line:

``` $ jupyter --paths ```

The following command shows the data directory specifically:

``` $ jupyter --data-dir ```

Runtime files

Things like connection files, which are only useful for the lifetime of a particular process, have a runtime directory.

On Linux and other free desktop platforms, these runtime files are stored in $XDG_RUNTIME_DIR/jupyter by default. On other platforms, it’s a runtime/ subdirectory of the user’s data directory (second row of the table above).

An environment variable may also be used to set the runtime directory.

JUPYTER_RUNTIME_DIR

    Set this to override where Jupyter stores runtime files.

As mentioned above, to list the config directories currently being used you can run the below command from the command line:

``` $ jupyter --paths ```

The following command shows the runtime directory specifically:

``` $ jupyter --runtime-dir ```

[Common Directories and File Locations](https://tinyurl.com/2yesqodx).
