
:highlight CursorLine guibg=lightblue ctermbg=lightgray
You can use :vert h [your topic] to open help vertically.

You can use the following command:

cnoreabbrev H vert h

To make vim replace H by vert h automatically in command line.

Also you can use this abbreviation:

cnoreabbrev HR vert bo h

To open the help window on the right side of the screen. (see :h :botright for more details on bo)

Well it depends on the behavior you are expecting, let says that you should play with :lefta[bove], :rightb[elow], :to[pleft] and :bo[tright] and see which one you prefer. I prefer :botright over :rightbelow because what ever my layout is, I'll get a help windows of the full height of the screen. With :rightbelow is I already have an horizontal split my help window will be of the height of this split.


    :sp filename for a horizontal split
    :vsp filename or :vs filename for a vertical split

     Vim Airline Themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'   
