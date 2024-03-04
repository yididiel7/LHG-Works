# Color configuration

A somewhat well-known configuration for man is enabling colors. This StackExchange answer provides a great intro to the technologies behind colorizing manpages while this one serves as a more practical guide to getting things working.

The gist is that you can add something like the following to your .bashrc 1 file:

## How does this work?

To understand how the above environment variables work it helps to review what steps normally happen when viewing a manpage:

    man renders a page from a (likely compressed) nroff or troff/groff document and pipes the result it into the pager program, usually less
    If the piped text indicates formatting that needs to be performed then less has to figure out how to accomplish this for terminal output
    less uses the (deprecated) termcap database to look up how to achieve effects like underline and bold. In reality it ends up using termcap’s successor, the terminfo database, which maintains support for the termcap interface. This gives back an escape string which corresponds to the specified effect for your particular terminal
    Using these nifty escape strings, less finally displays the manpage to the user

Manpages use formatting like bold (for sections) and underlines (for things like file names and arguments). These should already work out of the box when using the man command but will not change the text color.

For an idea of what capabilities less queries from the termcap database, a few of them (along with their terminfo database equivalents) are:
terminfo capname	termcap name	description
bold            	md          	turn on bold
blink           	mb          	turn on blinking
sgr0            	me          	turn off all attributes
smso            	so          	begin standout mode
rmso            	se          	exit standout mode
rev             	mr          	turn on reverse mode
dim             	mh          	turn on half-bright mode
rmul            	ue          	exit underline mode
smul            	us          	begin underline mode
Overwriting Escape Strings

Depending on your system, by the time the manpage reaches less it may already be formatted with escape strings which means that less does not have to do any work to figure out how to display it. The grotty manpage explains this behavior as well as the -c option which seems to apply to most nroff and troff/groff rendering programs:

    By default, grotty emits SGR escape sequences (from ISO 6429, also called ANSI color escapes) to change text attributes (bold, italic, colors).

and

    Use the -c switch to revert to the old behaviour, printing a bold character c with the sequence `c BACKSPACE c’ and an italic character c by the sequence `_ BACKSPACE c’.

So the manpage rendering program assumes that our terminal interprets a few basic ANSI color escape strings and makes use of them. This is a pretty safe assumption because ANSI codes were standardized a long time ago and modern terminal emulators conform to at least a subset of it. But what if we want to force less to figure out the escape codes on its own? We can use the -c option to force the old behavior and we’ll have man pass this option along when it invokes the renderer by setting the MANROFFOPT environment variable.

A behavior that we ignored earlier is that less actually looks for specific environment variables before proceeding to query termcap. These follow the format LESS_TERMCAP_ suffixed with a termcap name and manually define the escape strings to use. By using these we can essentially lie to less about how to achieve effects like bold so that bolding text also adds colors to it.
Setting Specific Effects

The tput command abstracts over different terminal types to output terminal-dependent escape sequences 2. This makes the configuration easier to maintain and will still work in the off-chance that your terminal does not use the normal ANSI escape sequences.

Most of the capnames used in the example are pretty self-explanatory. setaf and setab set the foreground and background color, respectively, using the color codes as defined in terminfo:
Color 	Code
black 	0
red 	1
green 	2
yellow 	3
blue 	4
magenta 	5
cyan 	6
white 	7

    Really this kind of environment variable belongs in the relatively-unknown lesskey file which has the capability of setting environment variables specifically for less. Unfortunately there is a bug in versions of less below 530 explained well here ↩
    These are horrible strings to write and look like “^[[33m”. The Bash Hackers Wiki has a great page on the topic. Try it out in the form tput setaf 2 | cat -v ↩


[Adding Colors to man](http://tinyurl.com/2cjh5um7)

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
