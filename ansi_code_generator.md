Installation

Download ansi and put it somewhere in your path. Make sure that it is executable (chmod a+x ansi works well). Bash will need to be present, but it is often installed by default. No external commands are used; this only uses bash's built-in features.

# Download
curl -OL git.io/ansi

# Make executable
chmod 755 ansi

# Copy to somewhere in your path
sudo mv ansi /usr/local/bin/

Not all features will work with all terminals. Your terminal determines if particular codes work. You can override the terminal detection logic and force ansi to output color codes with the environment variable ANSI_FORCE_SUPPORT set to any non-empty value.

[ANSI Code Generator](https://github.com/yididiel7/ansi).

# Write "Tests Examples"
ansi This acks like echo.

echo "$(ansi --yellow WARNING:) You might want to use this"

ansi --green --newline "Tests pass"

ansi --inverse Reversed video.

ansi --bg-yellow Echo, with colors.

ansi --green This is green text. SUCSSESS\!

ansi --red Some error has happend.

ansi --bg-blue --bg-red The last color setting wins.

ansi --no-newline --blue "Blue + " ; ansi --blue-intense intense blue

ansi --color-table

ansi --color-codes

# Change the terminal's title to the working directory and
# do not write anything to the terminal.
ansi --title="$(pwd)" --no-newline

# Reset the terminal colors, reset to the default font, move the cursor
# to row 1 column 1, and show the cursor if it was previously hidden.
# This long line is the same as the --reset option.
ansi --erase-display=2 --position=1,1 --show-cursor \
    --reset-font --reset-color

# Find out how many lines the terminal can display
ansi --report-window-chars | cut -d , -f 1


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
