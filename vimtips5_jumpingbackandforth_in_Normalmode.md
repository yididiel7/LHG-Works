# Vim tip 5: jumping back and forth in Normal mode

Find yourself working on a large file? Or perhaps handling multiple buffers? Vim makes it easy to navigate previous locations:

    Ctrl+o navigate to the previous location in the jump list (think o as old)
    Ctrl+i navigate to the next location in the jump list (i and o are usually next to each other)
    g; go to the previous change location
    g, go to the newer change location
    gi place the cursor at the same position where it was left last time in the Insert mode

# info Use

:jumps to view the jump list. See :h jump-motions for more details.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
