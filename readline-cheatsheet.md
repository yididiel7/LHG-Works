# readline-cheatsheet.txt

C   = Ctrl
M   = Alt
DEL = Backspace

http://www.math.utah.edu/docs/info/features_7.html

Essentials

C-b     Move back one character.
C-f     Move forward one character.
DEL     Delete the character to the left of the cursor.
C-d     Delete the character underneath the cursor.
C-_     Undo the last thing that you did.

Movement

C-a     Move to the start of the line.
C-e     Move to the end of the line.
M-f     Move forward a word.
M-b     Move backward a word.
C-l     Clear the screen, reprinting the current line at the top.

Killing

C-k     Kill the text from the current cursor position to the end of the line.
M-d     Kill from the cursor to the end of the current word, or if between words, to the end of the next word.
M-DEL   Kill from the cursor the start of the previous word, or if between words, to the start of the previous word.
C-w     Kill from the cursor to the previous whitespace. This is different than M-DEL because the word boundaries differ.

Yanking

C-y     Yank the most recently killed text back into the buffer at the cursor.
M-y     Rotate the kill-ring, and yank the new top. You can only do this if the prior command is C-y or M-y.

History

C-p    Move `up' through the history list.
C-n    Move `down' through the history list.
M-<    Move to the first line in the history.
M->    Move to the end of the input history, i.e., the line you are entering.
C-r    Search backward starting at the current line and moving `up' through the history as necessary. This is an incremental search.

C-s    Search forward starting at the current line and moving `down' through the the history as necessary. This is an incremental search.

M-p    Search backward starting at the current line and moving `up' through the history as necessary using a non-incremental search for a string supplied by the user.

M-n    Search forward starting at the current line and moving `down' through the the history as necessary using a non-incremental search for a string supplied by the user.

M-C-y   Insert the first argument to the previous command (usually the second word on the previous line). With an argument n, insert the nth word from the previous command (the words in the previous command begin with word 0). A negative argument inserts the nth word from the end of the previous command.

M-., M-_ Insert last argument to the previous command (the last word on the previous line). With an argument, behave exactly like yank-nth-arg.










