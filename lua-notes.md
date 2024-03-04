# I found a solution where you instead open nvim with

$ nvim -c "set rtp+=."

This works because according the "man nvim", you'll notice that --cmd 
runs BEFORE any vimrc, so it probably gets overridden. -c runs after 
reading the file, so it takes precedence.

[Create Neovim Plugins with Lua](https://youtu.be/wkxtHV1hzEY?si=6nlfiM49lRkNKkDq)
