Next: More Node Commands,  Prev: Stand-alone Info,  Up: Top

2 Selecting a Node
******************

The most basic node commands are ‘n’, ‘p’, and ‘u’.  These move you
around the node structure of the file:

‘n’ (‘next-node’)
     Select the 'Next' node.

‘p’ (‘prev-node’)
     Select the 'Prev' node.

‘u’ (‘up-node’)
     Select the 'Up' node.

   The top line of each Info node contains “pointers” which describe
-----Info: (info-stnd)Node Commands, 60 lines --Top----------------------------------------------------------------------------------------------------------------------------------------
Basic Info command keys

H           Close this help window.
q           Quit Info altogether.
h           Invoke the Info tutorial.

k           Move up one line.
j           Move down one line.
PgUp        Scroll backward one screenful.
PgDn        Scroll forward one screenful.
M-b         Go to the beginning of this node.
M-e         Go to the end of this node.

TAB         Skip to the next hypertext link.
M-x select-reference-this-line  Follow the hypertext link under the cursor.
l           Go back to the last node seen in this window.

[           Go to the previous node in the document.
]           Go to the next node in the document.
C-x p       Go to the previous node on this level.
C-x n       Go to the next node on this level.
M-x up-node  Go up one level.
t           Go to the top node of this document.
M-x dir-node  Go to the main 'directory' node.

1...9       Pick the first...ninth item in this node's menu.
0           Pick the last item in this node's menu.
m           Pick a menu item specified by name.
r           Follow a cross reference specified by name.
M-x goto-node  Go to a node specified by name.

/           Search forward for a specified string.
{           Search for previous occurrence.
}           Search for next occurrence.
i           Search for a specified string in the index, and
              select the node referenced by the first entry found.
I           Synthesize menu of matching index entries.

C-g         Cancel the current operation.

---------------------
This is GNU Info version 7.1.  The current search path is:
/usr/share/info:.
---------------------

Commands available in Info windows:

C-a     (beginning-of-line)             Move to the start of the line
C-b     (scroll-backward-page-only)     Scroll backward in this window staying within node
C-d     (scroll-half-screen-down)       Scroll down by half screen size
C-e     (down-line)                     Scroll down by lines
C-f     (scroll-forward-page-only)      Scroll forward in this window staying within node
C-g     (abort-key)                     Cancel current operation
C-h     (scroll-backward)               Scroll backward in this window
TAB     (move-to-next-xref)             Move to the next cross reference
LFD     (down-line)                     Scroll down by lines
C-k     (up-line)                       Scroll up by lines
C-l     (redraw-display)                Redraw the display
RET     (down-line)                     Scroll down by lines
C-n     (next-line)                     Move down to the next line
C-p     (prev-line)                     Move up to the previous line
C-r     (isearch-backward)              Search interactively for a string as you type it
C-s     (isearch-forward)               Search interactively for a string as you type it
C-u     (scroll-half-screen-up)         Scroll up by half screen size
C-v     (scroll-forward-page-only)      Scroll forward in this window staying within node
C-x C-b (list-visited-nodes)            Make a window containing a menu of all of the currently visited nodes
C-x C-c (quit)                          Quit using Info
C-x C-f (view-file)                     Read the name of a file and select it
C-x C-g (abort-key)                     Cancel current operation
C-x C-v (view-file)                     Read the name of a file and select it
C-x 0   (delete-window)                 Delete the current window
C-x 1   (keep-one-window)               Delete all other windows
C-x 2   (split-window)                  Split the current window
C-x N   (search-previous)               Repeat last search in the reverse direction
C-x ^   (grow-window)                   Grow (or shrink) this window
C-x b   (select-visited-node)           Select a node which has been previously visited in a visible window
C-x f   (all-files)                     Show all matching files
C-x n   (next-node)                     Select the Next node
C-x o   (next-window)                   Select the next window
C-x p   (prev-node)                     Select the Prev node
C-x t   (tile-windows)                  Divide the available screen space among the visible windows
C-x w   (toggle-wrap)                   Toggle the state of line wrapping in the current window
C-y     (up-line)                       Scroll up by lines
ESC C-f (show-footnotes)                Show the footnotes associated with this node in another window
ESC C-g (abort-key)                     Cancel current operation
ESC TAB (move-to-prev-xref)             Move to the previous cross reference
ESC C-v (scroll-other-window)           Scroll the other window
ESC SPC (scroll-forward-page-only)      Scroll forward in this window staying within node
ESC -   (add-digit-to-numeric-arg)      Add this digit to the current numeric argument
ESC /   (tree-search)                   Search this node and subnodes for a string
ESC 0 .. ESC 9(add-digit-to-numeric-arg)Add this digit to the current numeric argument
ESC <   (beginning-of-node)             Move to the start of this node
ESC >   (end-of-node)                   Move to the end of this node
ESC b   (beginning-of-node)             Move to the start of this node
ESC e   (end-of-node)                   Move to the end of this node
ESC f   (forward-word)                  Move forward a word
ESC r   (move-to-window-line)           Move the cursor to a specific line of the window
ESC v   (scroll-backward-page-only)     Scroll backward in this window staying within node
ESC x   (execute-command)               Read a command name in the echo area and execute it
ESC {   (tree-search-previous)          Go to previous match in Info sub-tree
ESC }   (tree-search-next)              Go to next match in Info sub-tree
ESC Right(forward-word)                 Move forward a word
ESC Left(backward-word)                 Move backward a word
ESC Up  (prev-line)                     Move up to the previous line
ESC Down(next-line)                     Move down to the next line
ESC PgUp(scroll-other-window-backward)  Scroll the other window backward
ESC PgDn(scroll-other-window)           Scroll the other window
SPC     (scroll-forward)                Scroll forward in this window
,       (next-index-match)              Go to the next matching index item from the last 'i' command
/       (search)                        Read a string and search for it
0       (last-menu-item)                Select the last item in this node's menu
1 .. 9  (menu-digit)                    Select this menu item
<       (first-node)                    Select the first node in this file
=       (display-file-info)             Show full file name of node being displayed
>       (last-node)                     Select the last node in this file
?       (search-backward)               Read a string and search backward for it
G       (last-node)                     Select the last node in this file
H       (get-help-window)               Display help message
I       (virtual-index)                 List all matches of a string in the index
O       (goto-invocation-node)          Find the node describing program invocation
R       (toggle-regexp)                 Toggle the usage of regular expressions in searches
S       (search-case-sensitively)       Read a string and search for it case-sensitively
[       (global-prev-node)              Move backwards or up through node structure
]       (global-next-node)              Move forwards or down through node structure
b       (scroll-backward-page-only)     Scroll backward in this window staying within node
d       (scroll-half-screen-down)       Scroll down by half screen size
e       (end-of-node)                   Move to the end of this node
f       (scroll-forward-page-only)      Scroll forward in this window staying within node
g       (first-node)                    Select the first node in this file
h       (get-info-help-node)            Visit Info node '(info)Help'
i       (index-search)                  Look up a string in the index for this file
j       (next-line)                     Move down to the next line
k       (prev-line)                     Move up to the previous line
l       (history-node)                  Select the most recently selected node
m       (menu-item)                     Read a menu item and select its node
n       (next-node)                     Select the Next node
p       (prev-node)                     Select the Prev node
q       (quit)                          Quit using Info
r       (xref-item)                     Read a footnote or cross reference and select its node
s       (search)                        Read a string and search for it
t       (top-node)                      Select the node 'Top' in this file
u       (scroll-half-screen-up)         Scroll up by half screen size
w       (scroll-backward-page-only-set-window)Scroll backward in this window staying within node and set default window size
x       (delete-window)                 Delete the current window
z       (scroll-forward-page-only-set-window)Scroll forward in this window staying within node and set default window size
{       (search-previous)               Repeat last search in the reverse direction
}       (search-next)                   Repeat last search in the same direction
Right   (forward-char)                  Move forward a character
Left    (backward-char)                 Move backward a character
Up      (up-line)                       Scroll up by lines
Down    (down-line)                     Scroll down by lines
PgUp    (scroll-backward)               Scroll backward in this window
PgDn    (scroll-forward)                Scroll forward in this window
Home    (beginning-of-node)             Move to the start of this node
End     (end-of-node)                   Move to the end of this node
DEL     (scroll-backward)               Scroll backward in this window
BackTab (move-to-prev-xref)             Move to the previous cross reference
M-C-f   (show-footnotes)                Show the footnotes associated with this node in another window
M-C-g   (abort-key)                     Cancel current operation
M-TAB   (move-to-prev-xref)             Move to the previous cross reference
M-C-v   (scroll-other-window)           Scroll the other window
M-SPC   (scroll-forward-page-only)      Scroll forward in this window staying within node
M--     (add-digit-to-numeric-arg)      Add this digit to the current numeric argument
M-/     (tree-search)                   Search this node and subnodes for a string
M-0 .. M-9(add-digit-to-numeric-arg)    Add this digit to the current numeric argument
M-<     (beginning-of-node)             Move to the start of this node
M->     (end-of-node)                   Move to the end of this node
M-b     (beginning-of-node)             Move to the start of this node
M-e     (end-of-node)                   Move to the end of this node
M-f     (forward-word)                  Move forward a word
M-r     (move-to-window-line)           Move the cursor to a specific line of the window
M-v     (scroll-backward-page-only)     Scroll backward in this window staying within node
M-x     (execute-command)               Read a command name in the echo area and execute it
M-{     (tree-search-previous)          Go to previous match in Info sub-tree
M-}     (tree-search-next)              Go to next match in Info sub-tree
---------------------

Commands available in the echo area:

C-a     (echo-area-beg-of-line)         Move to the start of this line
C-b     (echo-area-backward)            Move backward a character
C-d     (echo-area-delete)              Delete the character under the cursor
C-e     (echo-area-end-of-line)         Move to the end of this line
C-f     (echo-area-forward)             Move forward a character
C-g     (echo-area-abort)               Cancel or quit operation
C-h     (echo-area-rubout)              Delete the character behind the cursor
TAB     (echo-area-complete)            Insert completion
LFD     (echo-area-newline)             Accept (or force completion of) this line
C-k     (echo-area-kill-line)           Kill to the end of the line
C-l     (redraw-display)                Redraw the display
RET     (echo-area-newline)             Accept (or force completion of) this line
C-q     (echo-area-quoted-insert)       Insert next character verbatim
C-t     (echo-area-transpose-chars)     Transpose characters at point
C-u     (universal-argument)            Start (or multiply by 4) the current numeric argument
C-x DEL (echo-area-backward-kill-line)  Kill to the beginning of the line
C-y     (echo-area-yank)                Yank back the contents of the last kill
ESC     (echo-area-abort)               Cancel or quit operation
Right   (echo-area-forward)             Move forward a character
Left    (echo-area-backward)            Move backward a character
Home    (echo-area-beg-of-line)         Move to the start of this line
End     (echo-area-end-of-line)         Move to the end of this line
DEL     (echo-area-rubout)              Delete the character behind the cursor
M-C-g   (echo-area-abort)               Cancel or quit operation
M-TAB   (echo-area-tab-insert)          Insert a TAB character
M-C-v   (echo-area-scroll-completions-window)Scroll the completions window
M--     (add-digit-to-numeric-arg)      Add this digit to the current numeric argument
M-0 .. M-9(add-digit-to-numeric-arg)    Add this digit to the current numeric argument
M-?     (echo-area-possible-completions)List possible completions
M-b     (echo-area-backward-word)       Move backward a word
M-d     (echo-area-kill-word)           Kill the word following the cursor
M-f     (echo-area-forward-word)        Move forward a word
M-y     (echo-area-yank-pop)            Yank back a previous kill
M-DEL   (echo-area-backward-kill-word)  Kill the word preceding the cursor
---------------------

The following commands can only be invoked via M-x:

M-x end-of-line
     Move to the end of the line
M-x scroll-forward-set-window
     Scroll forward in this window and set default window size
M-x scroll-backward-set-window
     Scroll backward in this window and set default window size
M-x prev-window
     Select the previous window
M-x find-menu
     Move to the start of this node's menu
M-x visit-menu
     Visit as many menu items at once as possible
M-x select-reference-this-line
     Select reference or menu item appearing on this line
M-x menu-sequence
     Read a list of menus starting from dir and follow them
M-x up-node
     Select the Up node
M-x goto-node
     Read a node name and select it
M-x man
     Read a manpage reference and select it
M-x dir-node
     Select the node '(dir)'
M-x print-node
     Pipe the contents of this node through INFO_PRINT_COMMAND
M-x clear-search
     Clear displayed search matches
M-x info-version
     Display version of Info being run
M-x describe-key
     Print documentation for KEY
M-x where-is
     Show what to type to execute a given command
M-x describe-command
     Read the name of an Info command and describe it
M-x set-screen-height
     Set the height of the displayed window
M-x index-apropos
     Grovel all known info file's indices for a string and build a menu
M-x describe-variable
     Explain the use of a variable
M-x set-variable
     Set the value of an Info variable
-----Info: *Info Help*, 262 lines --Top----------------------------------------------------------------------------------------------------------------------------------------------------

