## vim-multiline-comment.md

For those tasks I use most of the time block selection.

Put your cursor on the first # character, press CtrlV (or CtrlQ for gVim), and go down until the last commented line and press x, that will delete all the # characters vertically.

## For commenting a block of text is almost the same:

    First, go to the first line you want to comment, press CtrlV. This will put the editor in the VISUAL BLOCK mode.
    Then using the arrow key and select until the last line
    Now press ShiftI, which will put the editor in INSERT mode and then press #. This will add a hash to the first line.
    Then press Esc (give it a second), and it will insert a # character on all other selected lines.
For commenting a block of text is almost the same: First, go to the first line you want to comment, press Ctrl``V , and select until the last line. Second, press Shift``I``#``Esc (then give it a second), and it will insert a # character on all selected lines.

## Method 4 – Visual Mode

You can also use Vim visual mode to comment out a block of code.
Start by navigating to the line you wish to start commenting out. Next, press the Ctrl + V keys to enable visual mode.

Using the up and down arrow keys, select all the lines you wish to comment out. Vim will insert a highlight at the beginning of each line to indicate the line is selected.

With the target lines selected, press Shift + I to enter insert mode.

Next, enter the comment symbol for the target file. In this case, we need to insert the pound (#) symbol to comment Python code.

Finally, press the ESC key, and Vim will comment out all the selected lines.

## How to Uncomment Multiple Lines

You may also need to uncomment out multiple lines. To do this, you can use the visual mode.

Start by navigating to the line you wish to uncomment, then press Ctrl + V to activate highlight mode.

Using the up and down arrow keys, select all the lines you want to uncomment. Once you have the region selected, press the X key to remove the comments.

Another method is to use a command to remove all lines starting with the comment symbol.

The command for that is:

:%s/^<comment symbol>/

## Visual Block Mode

First, move the cursor to the first char of the first line in block code you want to comment, then type:

Ctrl + v

then vim will go into VISUAL BLOCK mode. Use j to move the cursor down until you reach the last line of your code block. Then type:

Shift + i

now vim goes to INSERT mode and the cursor is at the first char of the first line. Finally, type # then ESC and the code block is now commented.

To decomment, do the same things but instead of type Shift + I, you just type x to remove all # after highlight them in VISUAL BLOCK mode.

**Vim commands for movement**


```
When using movement commands, you can put a number in front of them to make 
Vim complete a command multiple times. For example, 5h will move your cursor 
five spaces to the left, and 90j will put your cursor at the beginning of the 
90th line down from where your cursor currently is.
```
h - Moves the cursor to the left

l - Moves the cursor to the right

j - Moves the cursor down one line

k - Moves the cursor up one line

H - Puts the cursor at the top of the screen

M - Puts the cursor in the middle of the screen

L - Puts the cursor at the bottom of the screen

w - Puts the cursor at the start of the next word

b - Puts the cursor at the start of the previous word

e - Puts the cursor at the end of a word

0 - Places the cursor at the beginning of a line

$ - Places the cursor at the end of a line

) - Takes you to the start of the next sentence

( - Takes you to the start of the previous sentence

} - Takes you to the start of the next paragraph or block of text

{ - Takes you to the start of the previous paragraph or block of text

Ctrl + f - Takes you one page forward

Ctrl + b - Takes you one page back

gg - Places the cursor at the start of the file

G - Places the cursor at the end of the file

# - Where # is the number of a line, this command takes you to the line specified
[Vim commands for movement](https://www.keycdn.com/blog/vim-commands)

Vim commands for editing
#

Those who use Vim tend to use the term "yank" where most people would use the terms copy and paste. 
Therefore, the command for copying a word is yw, which stands for yank word, and the command for pasting 
whatever has been copied is p, meaning put. If you look up additional commands in the future, it can be 
confusing if you don't know what yank and put mean when using Vim.

You also have two options for how to select text. You can either use commands like dd, 
which deletes a single line, and yy, which copies a single line, or you can highlight 
text and then copy it to the unnamed register. The paste commands work the same whether 
you've highlighted text or used a command to automatically copy it.

As with movement commands, putting a number in front of the command can increase the number 
of times a task is completed. For instance, putting a number in front of yy will increase the 
number of lines copied, so 5yy will copy five lines.

yy - Copies a line

yw - Copies a word

y$ - Copies from where your cursor is to the end of a line

v - Highlight one character at a time using arrow buttons or the h, k, j, l buttons

V - Highlights one line, and movement keys can allow you to highlight additional lines

p - Paste whatever has been copied to the unnamed register

d - Deletes highlighted text

dd - Deletes a line of text

dw - Deletes a word

D - Deletes everything from where your cursor is to the end of the line

d0 - Deletes everything from where your cursor is to the beginning of the line

dgg - Deletes everything from where your cursor is to the beginning of the file

dG - Deletes everything from where your cursor is to the end of the file

x - Deletes a single character

u - Undo the last operation; u# allows you to undo multiple actions

Ctrl + r - Redo the last undo

. - Repeats the last action

# Vim commands for searching text


Like many other text editors, Vim allows you to search your text and find and replace text within your document. If you opt to replace multiple instances of the same keyword or phrase, you can set Vim up to require or not require you to confirm each replacement depending on how you put in the command.

/[keyword] - Searches for text in the document where keyword is whatever keyword, phrase or string of characters you're looking for

?[keyword] - Searches previous text for your keyword, phrase or character string

n - Searches your text again in whatever direction your last search was

N - Searches your text again in the opposite direction

:%s/[pattern]/[replacement]/g - This replaces all occurrences of a pattern without confirming each one

:%s/[pattern]/[replacement]/gc - Replaces all occurrences of a pattern and confirms each one

# Vim commands for working with multiple files


You can also edit more than one text file at a time. Vim gives you the ability to either 
split your screen to show more than one file at a time or you can switch back and forth between documents. 
As with other functions, commands make going between documents or buffers, as they're referred to with Vim, 
as simple as a few keystrokes.

:bn - Switch to next buffer

:bp - Switch to previous buffer

:bd - Close a buffer

:sp [filename] - Opens a new file and splits your screen horizontally to show more than one buffer

:vsp [filename] - Opens a new file and splits your screen vertically to show more than one buffer

:ls - Lists all open buffers

Ctrl + ws - Split windows horizontally

Ctrl + wv - Split windows vertically

Ctrl + ww - Switch between windows

Ctrl + wq - Quit a window

Ctrl + wh - Moves your cursor to the window to the left

Ctrl + wl - Moves your cursor to the window to the right

Ctrl + wj - Moves your cursor to the window below the one you're in

Ctrl + wk - Moves your cursor to the window above the one you're in

# Marking text (visual mode)


Visual mode allows you to select a block of text in Vim. 
Once a block of text is selected you can use visual commands 
to perform actions on the selected text such as deleting it, copying it, etc.

v - starts visual mode, you can then select a range of text, and run a command

V - starts linewise visual mode (selects entire lines)

Ctrl + v - starts visual block mode (selects columns)

ab - a block with ()

aB - a block with {}

ib - inner block with ()

iB - inner block with {}

aw - mark a word

Esc - exit visual mode

Once you've selected a particular range of text, you can then run a command 
on that text such as the following:

d - delete marked text

y - yank (copy) marked text

> - shift text right

< - shift text left

~ - swap case (upper or lower)
7. Tab pages


Just like any browser, you can also use tabs within Vim. 
This makes it incredibly easy to switch between multiple files 
while you're making some code changes instead of working 
in one single file, closing it, and opening a new one. 
Below are some useful Vim commands for using tab pages:

:tabedit file - opens a new tab and will take you to edit "file"

gt - move to the next tab

gT - move to the previous tab

#gt - move to a specific tab number (e.g. 2gt takes you to the second tab)

:tabs - list all open tabs

:tabclose - close a single tab
Simple Vim workflow example


If you haven't had a chance to play around with Vim much yet, 
you might be wondering what a simple workflow looks like when using it. 
It's relatively simple:

    Open a new or existing file with vim filename.
    Type i to switch into insert mode so that you can start editing the file.
    Enter or modify the text with your file.
    Once you're done, press the escape key Esc to get out of insert mode and back to command mode.
    Type :wq to save and exit your file.

Of course, there is so much more you can do with Vim, however as a beginner, 
the above steps are what a simple Vim workflow looks like.

