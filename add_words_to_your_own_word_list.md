# To add words to your own word list:

zg  Add word under the cursor as a good word to the first
    name in 'spellfile'.  A count may precede the command
    to indicate the entry in 'spellfile' to be used.  A
    count of two uses the second entry.

    In Visual mode the selected characters are added as a
    word (including white space!).
    When the cursor is on text that is marked as badly
    spelled then the marked text is used.
    Otherwise the word under the cursor, separated by
    non-word characters, is used.

    If the word is explicitly marked as bad word in
    another spell file the result is unpredictable.


zG  Like "zg" but add the word to the internal word list
    |internal-wordlist|.


zw  Like "zg" but mark the word as a wrong (bad) word.
    If the word already appears in 'spellfile' it is
    turned into a comment line.  See |spellfile-cleanup|
    for getting rid of those.


zW  Like "zw" but add the word to the internal word list
    |internal-wordlist|.

zuw
zug Undo |zw| and |zg|, remove the word from the entry in
    'spellfile'.  Count used as with |zg|.

zuW
zuG Undo |zW| and |zG|, remove the word from the internal
    word list.  Count used as with |zg|.

:spellgood! works for adding a word (e.g. de Bruijn) containing a space. :spellgood!de Bruijn

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
