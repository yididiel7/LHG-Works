

To delete a word, position the cursor at the beginning of the word and type dw . The word and the space it occupied are removed. To delete part of a word, position the cursor on the word to the right of the part to be saved. Type dw to delete the rest of the word.

daw : delete the word under the cursor
caw : delete the word under the cursor and put you in insert mode

Deleting Words in Vim

Use dw to delete word. Cursor placement is important! If your cursor is not on the first character, it will only delete from your cursor to the end of the word.
Use diw to delete inside word. Deletes the entire word that your cursor resides in.
Use dt to delete to character. Deletes from your cursor to the specified character.

Jumping to matches

If you ever need to jump to a matching opening or closing parenthesis, square bracket or curly brace you can simply enter % from NORMAL mode to jump to the match.

Change between Horizontal & Vertical Splits (VIM)
If you have a vim buffers arranged using split or vsplit, you can change between orientations with the following key bindings:

Ctrl+w k - will change a vsplit to a normal split split
Ctrl+w h - will change a split to a vsplit

Returning to normal mode

When my keyboard randomly lost functionality of the ESC key, I was left unable to escape out of insert mode, back into normal mode.

If you ever find yourself in this conundrum, you can use CTRL-C to escape back to normal mode.

The caveat to this is that CTRL-C does not trigger abbreviations or the InsertLeave event.

Alternate ways to quit out of Vim

In there I found these two useful ways for quitting out of Vim from Normal mode, as opposed to Command mode.

ZZ in normal mode is equivalent to :x   in command mode.
ZQ in normal mode is equivalent to :q! in command mode

Get the path to the current buffer in VIM
In VIM, you can get the path to the current buffer with the keybinding Ctrl+g. This will print that path to your statusline.

You can also get the path by using the % register:

:echo @%
Super helpful if you need to quickly copy/pasta that path for a coworker

https://www.tutorialspoint.com/vim/vim_registers.htm

Get the Current FileType in NVIM
If you’ve ever needed to debug a plugin, this might come in handy to get the current filetype. In my case, the filetype was not what I had assumed.

:set ft?
" or
:set filetype?
vim
If you’re curious to learn more, you can use :help ft to check out the docs on filetype

How to yank to system paste from Vim

**"*y Which I have now mapped to y.**
Couple this with outputting your scrollback buffer into Vim with Kitty for extra fun!
```
How to restrict visually selected replace
Make a visual selection in vim, then type :. You can do a search and replace by the normal means:
```
:'<,'>s/something/something else/g

The only problem with this is that it defaults to the whole line. So if, for example, you are trying to replace the / character within a selection on a line of an HTML or template file, this will screw up the closing tag of that line.

The trick here is to use %V in the matching portion.

:'<,'>s/\%Vsomething/something else/g

This restricts the match criteria to just the selection! Checkout :help %V.

Pretty format a json file in vim with jq
Viewing a minified or unformatted json in vim can be a headache. But luckily for us, that’s an easy fix if you have jq installed. The following command will pass the contents of your current buffer to the jq external command for formatting:

:!% jq .
vim
https://stedolan.github.io/jq/

Turning off a specific linter w/ALE
Ale comes configured with a set of default linters for each filetype it might encounter.

For typescript, if eslint is available as an executable, eslint will run, lint your code and display the results in vim. To turn off eslint for typescript you can set the variable g:ale_linters_ignore in your vimrc like this:

let g:ale_linters_ignore = {
      \   'typescript': ['eslint'],
      \}
VimScript
Currently, I’m going through the typescript exercism track and I want to be able to play around a little bit with the syntax and would prefer not having a typescript linter at the moment.

Ergonomically select text between parens
Operating on text within parens is pretty straight forward for a regular vim user.

To select: vi( or vi)

To delete: di( or di(

But that hand stretch between shift and 9 or shift and 0 is sorta weird. Vim has a built in ergonomic shortcut for this operation though.

To select: vib

To delete: dib

Much easier on the ol’ hands.

Picked this trick up watching the terrific Vim Un-Alphabet screencast series.

Use `g*` to go to the next word
Another trick I’ve learned from Vim Un-Alphabet is g*. You probably use the star command to find instances of a word throughout your file, and when you do that the search looks like this:

/\
The escaped angle brackets to the left and to the right are word boundaries. You can search for the word under the cursor without the word boundaries with g*.

Repeat subs with `g&` and `:&` and `:&&`
The tricks from Vim Un-Alphabet keep coming. Repeating your substitution is a cool trick and you can do it one of 3 ways.

g& will repeat the last substitution you did, but for the whole file, whatever file you’re in at the moment.

:& will repeat the last substitution on the line you are on but you get to change the flags if you want. So you can decide now to make it global with :&g.

:&& will repeat the last substitution on the line you are on with the flags you used for that substitution.

3 very nice tricks to smooth out your workflow when making substitutions.

## Jump to the last place you were in INSERT mode

I’ve known for a while that you can jump to the last place you edited with the gi command but it’s always been slightly annoying to me that gi places you into 

INSERT mode.
```
To get back to the same place, but in NORMAL mode you can use the ^ mark by typing `^. 
This mark is reset everytime you leave edit mode. You can see what that mark is set to with :marks ^ 
Shoutout to Josh Branchaud and his Vim Un-Alphabet series for teaching me a new vim trick!
```
Word navigation when underscores are in the word Phil Capel posted a til recently that talked about using the _ character as a word boundary by removing it from the iskeyword list with:

:se iskeyword-=_
VimScript
So now w navigates to the next underscore in long_id_for_var and you can copy long with yiw when your cursor is on long.

My addendum to this is that navigating with W will still go to the next space separated word, B will go the beginning of the previous space separated word, and if your cursor is on long, yiW will copy long_if_for_var.

Use the word under the cursor with Ctrl-R Ctrl-A
Everybody at Hashrocket has some solution for searching for the word under the cursor.

Some people created a mapping, but as I try to keep to native vim functionality as much as possible I copied the current word with yiw and then typed:

:Rg 0
VimScript
Where 0 writes whatever is in register 0 to the command.

Instead, the command mapping ` writes the word currently under the cursor to the command, so I can just skip theyiw. ``` vimscript :Rg ``` Will search for the word under the cursor. See:help c_CTRL-R_CTRL-A` for more info.

Use :helpgrep to search plugin help files too
I learned recently from Josh Branchaud’s Vim Un-Alphabet screencast series about searching your help files with :helpgrep.

This works with the help files for your plugins too. For instance:

:helpgrep Author:  Tim Pope
Will search for the string “Author: Tim Pope" and will return entries for all plugins that Tim Pope authored that you have installed.

:set backupcopy=yes to trigger fs events for node
While trying to get hot module reloading working with parcel today I noticed that sometimes parcel’s server didn’t register when a file was saved.

It turns out that vim has some weird behaviour around writing files that prevents node’s filesystem watcher from getting events that the file changed.

You can read about that weird behaviour here

You can get around this behaviour with:

:set backupcopy=yes
according to vim help backupcopy this will:

> make a copy of the file and overwrite the original one

triggering the fs event.

UUIDs in Vim with Ruby/JavaScript 🆔
UUID’s (universally unique identifiers) are really handy. I use them for all sorts of things, like key props in a React map, and I like to have them easily accessible when writing code.

Today I wrote two Vim mappings to support this workflow. I can shell out to Ruby and use SecureRandom:

" Insert a UUID with Ruby
nnoremap ruid :read !ruby -e "require 'securerandom'; p SecureRandom.uuid"
vim
Or, if you’re happier in the JavaScript ecosystem, here’s a similar command using Node and the uuid library. I did not have to install uuid, it was already available to me.

" Insert a UUID with JS
nnoremap juid :read !node -e "var uuid = require('uuid'); console.log(uuid.v4())"

Change up to next underscore "_" in vim
ct_ will change up to the underscore and leave it be.

cf_ will change up to the underscore and eat it as well.
```
Alternatively, you can use set iskeyword-=_ which will make the “_" character a valid word boundary. This might be preferable if you, like me, tend to use ciw more often than just cw.

EDIT: Because iskeyword is how the syntax highlighting is managed, you’ll probably notice that for methods/functions that contain keywords the highlighting is strange after playing with this. I found that I like nnoremap e :set iskeyword-=_diw:set iskeyword+=_i as a way to allow me to more easily edit the words I want without messing with the highlighting.

Vim Mark That Test! 🔖
This week Chris Erin taught me a technique that has changed my testing game: Vim mark your current Ruby test with mA.

When writing TDD-style code in a test-crazy language like Ruby, I tend to follow a predictable workflow: create a test, watch it fail, bounce around the code making changes, and run/edit the test again. This loop can repeat for hours on a complex feature.

There are many ways you could navigate back to your test from elsewhere; a very efficient method is to mark it in Vim with mA. Like any mark, you can return to it with `A. Why ‘A’? Capitalized marks are file marks and are valid between files. With this command, you can mindlessly jump back to your test from anywhere in the jumplist stack.

Ergodox vim input for numpad keys can be wonky
I use the ergodox ez keyboard. When you’re setting it up you can select either the numpad value of a key, or the shifted/regular value. These will behave slightly differently depending on your settings for application keypad mode. This is something that is set at the application layer, so you may end up dealing with vim recieing Ok if you are trying to type +. You can either try to find the way to get your application (in my case Manjaro’s terminal emulator) to change the keypad mode (I couldn’t find that), or you can setup an innoremap section in your vimrc to cover the cases where you definitely don’t want the escape sequence.

:inoremap Oq 1
:inoremap Or 2
:inoremap Os 3
:inoremap Ot 4
:inoremap Ou 5
:inoremap Ov 6
:inoremap Ow 7
:inoremap Ox 8
:inoremap Oy 9
:inoremap Op 0
:inoremap On .
:inoremap OQ /
:inoremap OR *
:inoremap Ol +
:inoremap OS -
:inoremap OM
This sequence is for PuTTY, but you can see which key to put after the O by looking at what registers on keydown events. Alternatively, for ergodox users, only use the shifted/regular values for keys.

Search and Replace Control Characters In Vim
In vim, if you want to search and replace non-printable control characters (for example you have ^M scattered throughout your file and it’s messing up an import) you can use ctrl+v+. The ctrl+v allows you to type the control character, but you must hold down control for both of the key presses.

:%s/ctrl+v+M/
This would search and replace all non-printable ^M characters in your text.

Repeat Last Command Mode Command in Vim ♻️
To repeat your last Vim command mode command, use the @ register.

@:
After doing this once, continue to call the command with @@. A use case would be continuing to expand a pane in increments of two via :resize +2.

Add visual fold markers to Vim's gutter
TIL that you can display visual fold markers in Vim’s gutter by setting the foldcolumn!

set foldcolumn=2
vim
The number indicates how wide the gutter holding the fold marks should be.
This also makes the folds openable via mouse, which may be useful for some folks.
For more info: :h foldcolumn

Pass args to a custom vim command
Custom commands are easy in vim:

:command HelloWorld echo "hello world"
:HelloWorld
" outputs hello world
vim
But what if I want to pass an arg to the command?

First you have to specify that you want args with the -narg flag. Then you need to have declare where the args would go with ``. vim :command! -narg=1 Say :echo "hello" :Say world " outputs hello world

fill your quickfix window with lint
File names I can’t jump to frustrate me. Today I ran $ npx eslint and my computer said “I looked at a file, and found a problem on this line, in this column. Do you want to see it? Good for you. Go type out the file name in your editor then."

ButI wanted a jump list of all the eslint errors in my project. Eslint is a kind of compiler, right? Vim knows compilers.

:set makeprg=npx\ eslint\ -f\ unix

Now I can

:make

and behold!

:cw

I can now see all of the errors and warnings for the project, and nimbly jump betwixt.

Vim Tags in Visual Mode 🏷
This is my 400th TIL! 🎉

I’ll file this under ‘Vim is endlessly composable’. Today I learned that Vim tags can be used to define a range in visual mode. Here’s how you’d fold your code between two Vim tags.

Go to the first tag. If you marked it 1, here’s how you’d do that:

m1
vim
Enter visual mode and extend to your second tag 2:

m2
vim
Enter command mode and fold the range:

:fold
vim
Which automatically extends to:

:'<,'>fold
vim
I use this in big markdown files to hide all but the thing I’m currently working on. Enjoy.

Vim Reverse Sort
I use Vim’s :sort all the time. If I can’t have a more meaningful algorithm than alphabetical, at least my lists are in some kind of order.

This function comes in surprisingly useful while writing GitHub-style checkbox lists.

- [x] Check mail
- [ ] Play guitar
- [x] Write TIL
Markdown
Sorting this list alphabeticaly puts the undone items at the top.

- [ ] Play guitar
- [x] Check mail
- [x] Write TIL
Markdown
Reverse the order (in classic Vim style) with a bang:

:sort!

Alternative to the escape key in Vim
Sometimes you need to escape, and you can’t use the esc key. Whether its missing, on a touch bar, or you simply don’t want to stretch your fingers away from home row, it’s nice to have another option.

In Vim, Ctrl+[ sends an escape character, equivalent to pressing the escape key.

Now you can easily get back to normal mode.

Pretty-Print JSON in NeoVim/Vim using jq
I’ve written here before about how to pretty-print JSON in Vim but since then I have found an even easier method using jq.

jq is an amazing command line utility for processing, querying and formatting JSON. I use it all the time when I get a response from an API request and I want to extract information or simply to pretty-print it with colors. All you have to do is pipe the curl results into jq:

curl https://til.hashrocket.com/api/developer_posts.json?username=doriankarter | jq

You can also use jq inside of NeoVim to pretty print a JSON string, right in your buffer using this command:

:%!jq

Iterating Quickfix with Vim-Unimpaired 🏁
Vim’s quickfix buffer is a place I spend a lot of time. Iterating through it can be done in a couple of ways:

:cprevious
:cnext
:cfirst
:clast
Or shortened:

:cp
:cn
:cfir
:cla
vim-unimpaired has some nice mappings to help.

[q     :cprevious
]q     :cnext
[Q     :cfirst
]Q     :clast
With [q and ]q we’re flying through those results.

h/t Dorian

Open the Vim Quickfix
Today I learned a new Vim command, :copen or :cope. The headline for this command is that it “open[s] a window to show the current list of errors". The side benefit is that if you already have quickfix window in your buffers, like you would after greping the codebase, it will open or reopen that quickfix buffer.

See :help :copen for more info.

Reset a Vim Split
When I make a Vim horizontal split, the two panes are evenly sized. I then often use :resize n to make one pane larger or smaller. To restore the panes to their evenly sized split, use =. In the Hashrocket dotfiles, this translates to CTRL + W =.

Send a Command's Output to Vim (Part II) ↪️
In a Hashrocket blog post, 10 Vim Commands for a Better Workflow, I wrote about :.!, which replaces the output of ` with your current line. Today I learned what this technique is called: _filtering_. From the docs: > filter is a program that accepts text at standard input, changes it in some way, and sends it to standard output. You can use the commands below to send some text through a filter, so that it is replaced by the filter output. An even shorter version is just!!in normal mode. A use case for this would be writing docs, where command-line output (ls,curl, etc.) can help demonstrate an idea. Check out:help !!` to see all the permutations of this interesting command.

Go to next ALE error
Has ALE overtaken your vim setup like it has mine? It constantly runs linters, compilers and formatters, just waiting for you to slip up so that it can put an X in the gutter.

Those X’s are really quite handy. They generally point me to the next place in the code that I need to make a change.

To get there quickly you can goto the next ALE error with:

:ALENext
VimScript
This will stop at the last error in the file though. To have it wrap around use:

:ALENextWrap
VimScript
I really enjoy vim-unimpaired‘s handy bracket mappings, but I don’t use ]a that move between args (because I don’t use args very often).

To setup my own handy bracket mappings for ALE:

:nmap ]a :ALENextWrap
:nmap [a :ALEPreviousWrap
:nmap ]A :ALELast
:nmap [A :ALEFirst
VimScript

Open FZF Result In A Split In Vim
The fzf.vim plugin allows you to do speedy fuzzy searches for filenames and line-by-line content.

Once you’ve narrowed down the results and found what you’re interested in, you can hit ` and a new buffer will open over what was already in the window. You can also open that file as a split. HittingCtrl-xwill open the file under the cursor as a horizontal split. HittingCtrl-v` will alternatively open that file as a vertical split.

Edit A File Starting On The Last Line
Generally when you start editing a file whether as a new Vim session (vim file.txt) or in an existing Vim session (:e file.txt), your cursor will be positioned at the beginning of the file.

You can start editing a file with the cursor positioned at the end of a file using an edit command – include + with no line number. This may be useful for a large file or even if you just know that you’ll be adding content directly to the bottom of the file.

If you are starting a new Vim session:

$ vim + file.txt
Bash
or if you are already in a Vim session:

:e + file.txt
See man vim or :h +cmd for more details.

Edit A File At A Specific Line Number In Vim
I use long-running Vim sessions where I constantly open files as new buffers with the :edit (or :e) command. Generally, when I open a new file I end up with the cursor at the top of the buffer and go from there. But what if I have a specific line number in mind and I want the cursor to start there?

The :edit command can receive arguments, including a line number argument. To open up to line 159, I can include the +159 argument in the command.

:edit +159 path/to/the/file.txt
See :h :edit and :h +cmd for more details about how :edit works and what the different arguments can do.

Search Backward Through A File
There are a number of ways to search for a match in a file. One I use quite often is hitting * while the cursor is over the word I want to find matches for. It searches forward jumping to the next occurrence of that word.

It turns out there is a way of doing the same thing, but searching backward to the previous occurrence of the word. If you hit # with the cursor over a word, it will jump backward through the file until it finds an occurrence of that word. Keep hitting # to keep searching backward.

See :h # for more details.

Clear Out The Jump List In Vim
Vim uses a jump list to track all they jumps you’ve made during a session. Vim can even be configured to keep a record of those jumps between sessions. This is really handy for a long-lived project, but what if you want those jumps cleared out?

You can clear them out for the current and subsequent windows using :clearjumps. The jump list for existing windows will be unchanged and once you start a new session, the full jump list will be restored.

See :h :clearjumps for more details.

Navigate To The Nth Column On A Line In Vim
You can navigate the cursor to a specific column of the current line using the | character. For instance typing

45|
will navigate your cursor to the 45th column of the current line. If you type a number that exceeds the number of columns on the line, your cursor will be placed on the last column.

Here is what the help files have to say about |:

|			To screen column [count] in the current line.
			|exclusive| motion.  Ceci n'est pas une pipe.

Change DOS to Unix text file format in VIM
The last few times I had to use a .txt file as an input, I’ve run into difficult-to-troubleshoot parsing errors. What could be wrong? I check and re-check the text file, and I can’t find any mistakes!

If the text file came from a Windows machine, this may due to a difference in line-ending between DOS and Unix text files. You can check and change this file format in Vim.

Open your file in Vim and, in normal mode, type :set ff? to see what the file format is. If it is DOS, then type :set ff=unix to change it to Unix.

Normal Mode Binding To Just Quit
I’m already familiar with the normal mode binding to write and quit – ZZ. It turns out there is an equivalent binding to quit without writing. Hit ZQ and Vim will quit the current window disregarding any unsaved changes. This behaves in the same way as if you had executed the :q! command.

See :help ZQ.

Quit When There Is An Argument List
To start a Vim session with multiple files in the argument list, name multiple files when invoking Vim:

$ vim README.md LICENSE
Bash
The first file in the argument list, and the current buffer, is README.md. The last file in the argument list is LICENSE.

At this point if you try to quit, Vim will prevent you saying 1 more file to edit. If we look at the docs for :q and :wq, we see something along the lines of:

> This fails when the last file in the argument list has not been edited.

Vim wants to ensure that you’ve paid attention to every file that you loaded up into your argument list. If you’d like to quit regardless. then this is where the :q! and :wq! variants come in handy. This commands will skip the argument list check.

Set Vim Filetype or Syntax with Modeline
Here’s a problem I faced today: I’m writing a Thor CLI. The convention for that project is a file called cli, written in Ruby but with no .rb extension. Vim highlights it and otherwise treats it like a conf file, but it’s Ruby. I want my editor to progamatically recognize that and act accordingly.

One solution is Vim’s modeline. With modeline enabled, either of these settings will enable syntax highlighting on buffer read. They can both be used at the same time as shown.

# vi: syntax=ruby
# vi: filetype=ruby

def ruby_here
end

Using vim-surround With A Visual Selection
The vim-surround plugin allows you to do a variety of actions that have to do with the surrounding characters of text objects.

The S keystroke allows you to surround a visual selection with the following character.

First, make a visual selection. Then hit S. Then hit a surround character such as ( or [ and the area of text that has been visually selected will be wrapped with the respective surround characters.

Reverse sort lines in Vim
Vim provides sort command for ordering lines in an ascending order, but what if you want to sort the lines in a reverse order?

Linux’s tail to the rescue!

First select the lines to be reversed in visual mode with V (big V) then execute this Linux command from Vim’s command prompt:

:'<,'>!tail -r

[Hashrocket | /hashrocket/tilex](https://til.hashrocket.com/vim)

## Vim Commands
---------------

m{letter}        (place mark)

'{letter}        (go to mark)

R ... <Esc>      (replace characters until <Esc> is hit)

:split {file}    (split window)

CTRL-Wj          (move up a window)

CTRL-Wk          (move down a window)

CTRL-Wo          (make the current window the only window)

## vim syntax files
Mentioning this is like opening Pandora's box, but ... if you really want to dig into the vim syntax highlighting topic, it may help to know that there are vim syntax files included with your Unix or Linux vim distribution. These files will have names like this:

c.vim
cpp.vim
csh.vim
html.vim
java.vim
perl.vim
sh.vim
zsh.vim

If you have the Unix locate command installed they are easy to find, like this:

locate java.vim
