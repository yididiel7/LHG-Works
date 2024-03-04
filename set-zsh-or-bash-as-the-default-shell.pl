# Set zsh as the default shell in your terminal. 

# Change The Shell >
# The best solution is just use the fallowing command to switch 

# $ chsh -s $(which zsh) 

# Changing shell for srhills. 
# Password:

# Shell changed.

# a b c d e f g h i j k l m n o p q r s t u v w x y z


Your snippet seems to be a variant of the one found under 
:help restore-cursor, which works the way you want:

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

  
