# How to fix font size in alacritty

Increase / Decrease font size while running

Try pressing ctrl +/- or cmd +-

Possible workaround is to use -o flag when running alacritty and set font.size to desired value. Can be done through .bash_aliases or your WM config to make it faster to use.

Example:

alacritty -o font.size=8

My alacritty config file is in ~/.config/alacritty/alacritty.yml with the following font settings:

# Font configuration
font:
  
  [...]

  # Point size
  size: 10.0

All other font configuration options are commented out. I verified that alacritty is indeed reading this config file using the -vvv flag.

However, whenever I open a new terminal window the font seems to be selected at random. Below a picture of two windows opened one right after the other.

Edit the .config/alacritty/alacritty.yml configuration file.
Update the fonts

I am using Fira Code for regular and bold fonts. I am using Menlo for Italic.

# Font configuration (changes require restart)
font:
  # The normal (roman) font face to use.
  normal:
    family: Fira Code
    # Style can be specified to pick a specific face.
    style: Regular

  # The bold font face
  bold:
    family: Fira Code
    # Style can be specified to pick a specific face.
    style: Bold

  # The italic font face
  italic:
    family: Menlo
    # Style can be specified to pick a specific face.
    style: Italic

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
