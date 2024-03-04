# Zsh Vi Mode

books Usage

Use ESC or CTRL-[ to enter Normal mode.

But some people may like the custom escape key such as jj, jk and so on, if you want to custom the escape key, you can learn more from here.
History

    ctrl-p : Previous command in history
    ctrl-n : Next command in history
    / : Search backward in history
    n : Repeat the last /

Mode indicators

Normal mode is indicated with block style cursor, and Insert mode with beam style cursor by default.
Vim edition

In Normal mode you can use vv to edit current command line in an editor (e.g. vi/vim/nvim...), because it is bound to the Visual mode.

You can change the editor by ZVM_VI_EDITOR option, by default it is $EDITOR.
Movement

    $ : To the end of the line
    ^ : To the first non-blank character of the line
    0 : To the first character of the line
    w : [count] words forward
    W : [count] WORDS forward
    e : Forward to the end of word [count] inclusive
    E : Forward to the end of WORD [count] inclusive
    b : [count] words backward
    B : [count] WORDS backward
    t{char} : Till before [count]'th occurrence of {char} to the right
    T{char} : Till before [count]'th occurrence of {char} to the left
    f{char} : To [count]'th occurrence of {char} to the right
    F{char} : To [count]'th occurrence of {char} to the left
    ; : Repeat latest f, t, F or T [count] times
    , : Repeat latest f, t, F or T in opposite direction

Insertion

    i : Insert text before the cursor
    I : Insert text before the first character in the line
    a : Append text after the cursor
    A : Append text at the end of the line
    o : Insert new command line below the current one
    O : Insert new command line above the current one

Surround

There are 2 kinds of keybinding mode for surround operating, default is classic mode, you can choose the mode by setting ZVM_VI_SURROUND_BINDKEY option.

    classic mode (verb->s->surround)

    S" : Add " for visual selection
    ys" : Add " for visual selection
    cs"' : Change " to '
    ds" : Delete "

    s-prefix mode (s->verb->surround)

    sa" : Add " for visual selection
    sd" : Delete "
    sr"' : Change " to '

Note that key sequences must be pressed in fairly quick succession to avoid a timeout. You may extend this timeout with the ZVM_KEYTIMEOUT option.
How to select surround text object?

    vi" : Select the text object inside the quotes
    va( : Select the text object including the brackets

Then you can do any operation for the selection:

    Add surrounds for text object

    vi" -> S[ or sa[ => "object" -> "[object]"
    va" -> S[ or sa[ => "object" -> ["object"]

    Delete/Yank/Change text object

    di( or vi( -> d
    ca( or va( -> c
    yi( or vi( -> y
