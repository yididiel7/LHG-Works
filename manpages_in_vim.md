---
# Description: "Increase Width of Vim Current Workspace"
# Author:      "Sr. Yididiel Hills"🐧️
# Date:        "Sun 2022-10-16 23:34:32+0300" 
---




Vim includes a man page viewer, :Man, in its runtime files.

Put this line in your vimrc:

runtime! ftplugin/man.vim

Now you can read syntax-highlighted man pages inside Vim by running :Man. For example:

:Man 3 printf

Even better, you can just place your cursor on a word in the buffer and press <Leader>K (\K) to see the man page for that word.

See :h find-manpage for complete usage and installation instructions.

# Change permissions on a file.
chmod u+x mivchon.sh

Vim documentation: autocmd
http://vimdoc.sourceforge.net/htmldoc/autocmd.html

Personalize your files with a custom header/footer.
https://reposhub.com/linux/shell-script-development/johannesthyssen-vim-signit.html

Increase Width of Vim Current Workspace

To increase the width of your current selection on the Vim editor, press Ctrl + w, and shortly followed by the SHIFT + ‘>’ combination.

To reduce the width of your current Vim selection, press Ctrl + w, and then SHIFT + ‘<’ combination.

Increase Height of Vim Current Workspace

To increase the height of your current workspace, use the combination press Ctrl + w, followed by SHIFT + ‘+’ combination. The illustration below shows

To decrease the height of the workspace, press Ctrl + w, followed by the - (minus) sign.

To ensure the height of the upper and lower workspaces is equal press Ctrl + w, followed by the = (equals) sign.






View_manpages-in-vim. Grep for the man pages.
Features and Usage
Viewing man pages

    :Man printf - open printf(1) man page in a split
    :Vman 3 putc - open putc(3) man page in a vertical split (read more here on what the manual page numbers mean, they are really useful)
    :Man pri<Tab> - command completion for man page names
    :Man 3 pri<Tab> - completion "respects" the man page section argument
    :Man 6 <Ctrl-D> - list all man pages from section 6

When editing nroff files

    :Man - (without arguments) open a current nroff file as a man page

When inside a man page buffer

    [[ and ]] - jump to prev/next section heading
    Ctrl-] - jump to man page for a word under cursor (works nicely with specially highlighted references to other man pages i.e. printf(3)), also defined for other tag mappings like g_Ctrl-], Ctrl-W_Ctrl-] etc.
    K - same as Ctrl-]
    Ctrl-T - jump *back* to the previous man page
    g/ - start option search (useful for quickly jumping to man page option description, example --quiet or -q)
    gx - open a link under cursor in a browser (vim feature)
    gf - jump to a file under cursor (vim feature, works nicely with C header files often found in section 2 and 3 man pages i.e. <sys/socket.h>)
    q - quit vim-man buffer

Using from the shell

You can use vim-man from the shell (instead of standard man program) using the following script:





Competer for You Competeme.                                                    
Plug 'https://github.com/ycm-core/YouCompleteMe.git'

YCM                                                                           
The best part.                                                                
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>                             
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

Syntastic is a syntax checking plugin for Vim It runs files through external  
syntax checkers and displays any resulting errors to the user.                
Plug 'vim-syntastic/syntastic'
