# The following table describes basic vi commands.

## Table 6–1 Starting vi

Command 
	

Description 

vi filename
	

Open or create file 

vi
	

Open new file to be named later 

vi -r filename
	

Recover crashed file 

view filename
	

Open file read-only

Table 6–2 Cursor Commands

Command 
	

Description 

h
	

Move left one character 

j
	

Move down one line 

k
	

Move up one line 

l
	

Move right one character 

w
	

Move right one word 

W
	

Move right one word (past punctuation) 

b
	

Move left one word 

B
	

Move left one word (past punctuation) 

e
	

Move to end of current word 

Return
	

Move down one line 

Backspace
	

Move left one character 

Spacebar
	

Move right one character 

H
	

Move to top of screen 

M
	

Move to middle of screen 

L
	

Move to bottom of screen 

Ctrl-F
	

Page forward one screen 

Ctrl-D
	

Scroll forward one-half screen 

Ctrl-B
	

Page backward one screen 

Ctrl-U
	

Scroll backward one-half screen 

Table 6–3 Inserting Characters and Lines

Command 
	

Description 

a
	

Insert characters to right of cursor 

A
	

Insert characters at end of line 

i
	

Insert characters to left of cursor 

I
	

Insert characters at beginning of line 

o
	

Insert line below cursor 

O
	

Insert line above cursor 

Table 6–4 Changing Text

Command 
	

Description 

cw
	

Change word (or part of word) to right of cursor 

cc
	

Change line 

C
	

Change from cursor to end of line 

s
	

Substitute string for character(s) from cursor forward 

r
	

Replace character at cursor with one other character 

r Return
	

Break line 

J
	

Join current line and line below 

xp
	

Transpose character at cursor and character to right 

~
	

Change case of letter (uppercase or lowercase)

u
	

Undo previous command 

U
	

Undo all changes to current line 

:u
	

Undo previous last-line command 

Table 6–5 Deleting Text

Command 
	

Description 

x
	

Delete character at the cursor 

X
	

Delete character to the left of the cursor 

dw
	

Delete word (or part of word to right of cursor) 

dd
	

Delete line containing the cursor 

D
	

Delete part of line to right of cursor 

dG
	

Delete to end of file 

d1G
	

Delete from beginning of file to cursor 

:5,10 d
	

Delete lines 5-10 

Table 6–6 Copying and Moving Text

Command 
	

Description 

yy
	

Yank or copy line 

Y
	

Yank or copy line 

p
	

Put yanked or deleted line below current line 

P
	

Put yanked or deleted line above current line 

:1,2 co 3
	

Copy lines 1-2 and put after line 3 

:4,5 m 6
	

Move lines 4-5 and put after line 6 

Table 6–7 Setting Line Numbers

Command 
	

Description 

:set nu
	

Show line numbers 

:set nonu
	

Hide line numbers 

Table 6–8 Setting Case-sensitivity

Command 
	

Description 

:set ic
	

Searches should ignore case 

:set noic
	

Searches should be case sensitive 

Table 6–9 Finding a Line

Command 
	

Description 

G
	

Go to last line of file 

1G
	

Go to first line of file 

21G
	

Go to line 21 

Table 6–10 Searching and Replacing

Command 
	

Description 

/string
	

Search for string

?string
	

Search backward for string

n
	

Find next occurrence of string in search direction

N
	

Find previous occurrence of string in search direction

:g/search/s//replace/g
	

Search and replace 

Table 6–11 Clearing the Screen

Command 
	

Description 

Ctrl-L
	

Clear (refresh) scrambled screen 

Table 6–12 Inserting a File Into a File

Command 
	

Description 

:r filename
	

Insert (read) file after cursor 

:34 r filename
	

Insert file after line 34 

Table 6–13 Saving and Quitting

Command 
	

Description 

:w
	

Save changes (write buffer) 

:w filename
	

Write buffer to named file 

:wq
	

Save changes and quit vi 

ZZ
	

Save changes and quit vi 

:q!
	

Quit without saving changes  

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
