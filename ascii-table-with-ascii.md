# Display an ASCII Table with ascii

Here is the scenario: You are typing away furiously at the command line when you suddenly need the ASCII hex code for the caret character (^). What do you do?

Sure, you could interrupt your typing and consult a GUI character map using the mouse, but why disturb the finger flow when you could easily open a new terminal with a keyboard shortcut and run a simple program that prints an ASCII chart?

That program is called ascii.

Installing

ascii is freely available from the repository (Arch/Linux). It is not installed by default, so install it using Synaptic or the command line.

``` $sudo pacman -Syu ```
``` $ sudo pacman -S ascii ```

## Using

Type ascii at the command prompt.

ascii

That’s it. An ASCII table of characters 0 through 127 will appear. A few options will adjust the output, and man ascii will provide the full details. Let’s see a few examples.

List only hex codes:

ascii -x



ascii -x shows a table containing hex codes only.

Show code for one character:

ascii A



ascii A. What is uppercase A? The newline is included because the Enter key was pressed.

ascii a



ascii a. Details for lowercase a.

You can even use a character’s official name:

ascii miniscule b



ascii miniscule b

ascii DEL



ascii DEL. The delete character.

Show code for a single character but without details:

ascii -s a



ascii -s a

Show codes for characters in a string:

ascii -s 'Linux is fun!'



ascii -s ‘Linux is fun!’ The single quotes are not included in the output since they delimit the string. Without the single quotes, only the first word will print.

Reverse conversions are also possible. Suppose you only know the decimal value of and ASCII character an wish to known what character it is?

ascii d52



ascii d52. What ASCII character has the decimal code 52?

To specify decimal, prefix the decimal value with a lowercase d or else the output will not be correct.

Reverse lookup using hex:

ascii 0x34



ascii 0x34. ASCII d52, or the number 4.

Prefix with 0x to denote hexadecimal.

How about a bit pattern lookup?

ascii 01010010



ascii 01010010. Uppercase R.

Even though the man page instructs a prefix, such as b or 0b, only the bit pattern by itself returned a result. Bit patterns beyond 127d will produce the meta characters not covered by the standard ASCII table.


It is possible to view character details greater than 127d, but these do not appear in ascii’s table.

For fun, feed fortune into ascii to view all character codes instead of the text:

ascii -s "$(fortune)"



Partial output from ascii “$(fortune)”

The output will vary. Include double quotes to allow command substitution and to handle spaces.

How about the current date?

ascii -s "$(date)"



Partial output from ascii -s “$(date)”

To print only the binary codes for each character (the fifth column):

ascii -s $(date) | awk '{print $5}'



ascii -s $(date) | awk ‘{print $5}’  Notice that double quotes are missing. The command still runs, but whitespace is not included in the output.

How about this? Remove the newlines to produce a series of ones and zeros containing the current date:

ascii -s $(date) | awk '{print $5}' | tr -d '\n'

ascii -s $(fortune) | awk '{print $5}' | tr -d '\n'

ascii -s $(fortune) | awk ‘{print $5}’ | tr -d ‘\n’ partial output. All bytes run together.

We can do the same for fortune:

ascii -s $(fortune) | awk '{print $5}' | tr -d '\n'



ascii -s $(fortune) | awk ‘{print $5}’ | tr -d ‘\n’

To test your sanity (or to make others vacate the room), pipe the result to espeak:

ascii -s $(fortune) | awk '{print $5}' | tr -d '\n' | espeak

Make sure to turn your speakers up loud for maximum annoyance! (It’s safe to assume that CTRL+C will be used quickly.)

With creativity, ascii can do more than show a simple ascii chart, so have fun!

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
