# Using Vim Spellchecking

Spell checking wouldn’t be very useful if you didn’t have any help correcting the misspelled words, or a way to tell the program that the word is actually correct. Let’s start with correcting words.

To move to a misspelled word, use ]s and [s. The ]s command will move the cursor to the next misspelled word, the **[s | s]** command will move the cursor back through the buffer to previous misspelled words.

Once the cursor is on the word, use **z=**, and Vim will suggest a list of alternatives that it thinks may be correct. For instance, if I highlight autocompletion and then use z=, I see something like figure 1:

 Just hit Enter if none of the suggestions work, or enter the number for the correct word.

What if Vim is wrong, and the word is correct? Use the zg command and Vim will add it to its dictionary. Simple as pie. You can also mark words as incorrect using zw.

If you don’t want to keep telling Vim explicitly every time you restart to turn on spelling, just add the following to your .vimrc:

```set spell spelllang=en_us```

## Substitute the appropriate region, of course.

Vim’s combination of syntax highlighting, autocompletion (using CTRL-p and CTRL-n), abbreviations and mappings, and spell-checking makes it a killer editor to write in. Even when I need to share materials with clients in ODF or Word format, I usually write first in Vim with HTML and then copy and paste into OpenOffice.org, which usually handles the formatting just fine.

 We get word completion for free

By turning on spell-checking in our ~/.vimrc, we’ll be turning on word completion as well. The following command will let us press *CTRL-N or CTRL-P* in insert-mode to complete the word we’re typing!

```set complete+=kspell```

Add words to the dictionary

We can add words like “RSpec” or “thoughtbot” to the spellfile (just a list of correctly-spelled words, not a list of magical incantations) by cursoring over those words in a file and typing:

Finding suggestions for bad words:

                            *z=*
z=          For the word under/after the cursor suggest correctly
            spelled words.  This also works to find alternatives
            for a word that is not highlighted as a bad word,
            e.g., when the word after it is bad.
            In Visual mode the highlighted text is taken as the
            word to be replaced.
            The results are sorted on similarity to the word being
            replaced.
            This may take a long time.  Hit CTRL-C when you get
            bored.

            If the command is used without a count the
            alternatives are listed and you can enter the number
            of your choice or press <Enter> if you don't want to
            replace.  You can also use the mouse to click on your
            choice (only works if the mouse can be used in Normal
            mode and when there are no line wraps).  Click on the
            first line (the header) to cancel.

            The suggestions listed normally replace a highlighted
            bad word.  Sometimes they include other text, in that
            case the replaced text is also listed after a "<".

            If a count is used that suggestion is used, without
            prompting.  For example, "1z=" always takes the first
            suggestion.

            If 'verbose' is non-zero a score will be displayed
            with the suggestions to indicate the likeliness to the
            badly spelled word (the higher the score the more
            different).
            When a word was replaced the redo command "." will
            repeat the word replacement.  This works like "ciw",
            the good word and <Esc>.  This does NOT work for Thai
            and other languages without spaces between words.


zg          Add word under the cursor as a good word to the first
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


                            *zG*
zG          Like "zg" but add the word to the internal word list
            |internal-wordlist|.


                            *zw*
zw          Like "zg" but mark the word as a wrong (bad) word.
            If the word already appears in 'spellfile' it is
            turned into a comment line.  See |spellfile-cleanup|
            for getting rid of those.


                            *zW*
zW          Like "zw" but add the word to the internal word list
            |internal-wordlist|.


zuw                         *zug* *zuw*
zug         Undo |zw| and |zg|, remove the word from the entry in
            'spellfile'.  Count used as with |zg|.


zuW                         *zuG* *zuW*
zuG         Undo |zW| and |zG|, remove the word from the internal
            word list.  Count used as with |zg|.
