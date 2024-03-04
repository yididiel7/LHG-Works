# NvimTree - File Explorer [File Management](https://docs.rockylinux.org/books/nvchad/nvchad_ui/nvimtree/).

Like all file explorers, in nvimtree you can create, delete, and rename files. Since this is always with a textual approach, you will not have a convenient graphical widget but the directions will be shown in the statusline. All combinations have a confirmation prompt (y/n) to give a way to verify the operation and thus avoid inappropriate changes. This is particularly important for deletion of a file, as a deletion would be irreversible.

## The keys for modification are:

    a (add) allows the creation of files or folders, creating a folder is done by following the name with the slash /. E.g. /nvchad/nvimtree.md will create the related markdown file while /nvchad/nvimtree/ will create the nvimtree folder. The creation will occur by default at the location where the cursor is in the file explorer at that time, so the selection of the folder where to create the file will have to be done previously or alternatively you can write the full path in the statusline, in writing the path you can make use of the auto-complete function
    
    r (rename) to rename the selected file from the original name
    Ctrl + r to rename the file regardless of its original name
    
    d (delete) to delete the selected file or in case of a folder delete the folder with all its contents
    
    x (cut) to cut and copy the selection to the clipboard, can be files or folders with all its contents, with this command associated with the paste command you make the file moves within the tree
    
    c (copy) like the previous command this copies the file to the clipboard but keeps the original file in its location
    
    p (paste) to paste the contents of the clipboard to the current location
    
    y to copy only the file name to the clipboard, there are also two variants which are Y to copy the relative path and g + y to copy the absolute path

Advanced Features

Although disabled by default, nvimtree integrates some functionality to control a possible Git repository. Such functionality is enabled by using override of the base settings as described on the override section of the Template Chadrc page.

The related code is as follows:

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    side = "right",
  },
}

Once the Git functionality is enabled, our file tree will give us real-time status of our local files with respect to the Git repository.
Conclusion¶

The kyazdani42/nvim-tree.lua plugin provides the File Explorer to the Neovim editor, which is certainly one of the essential building blocks of the NvChad IDE, from which all common file operations can be performed. It also integrates advanced features, but these must be enabled. More information can be found on the Project Page.
