# VHS CHRAM VHS

Write terminal GIFs as code for integration testing and demoing your CLI tools.

Welcome to VHS

The above example was generated with VHS (view source).
Tutorial

To get started, install VHS and create a new .tape file.

vhs new demo.tape

Open the .tape file with your favorite $EDITOR.

vim demo.tape

Tape files consist of a series of commands. The commands are instructions for VHS to perform on its virtual terminal. For a list of all possible commands see the command reference.

# Where should we write the GIF?
Output demo.gif

# Set up a 1200x600 terminal with 46px font.
Set FontSize 46
Set Width 1200
Set Height 600

# Type a command in the terminal.
Type "echo 'Welcome to VHS!'"

# Pause for dramatic effect...
Sleep 500ms

# Run the command by pressing enter.
Enter

# Admire the output for a bit.
Sleep 5s

Once you've finished, save the file and feed it into VHS.

vhs demo.tape

All done! You should see a new file called demo.gif (or whatever you named the Output) in the directory.
A GIF produced by the VHS code above

For more examples see the examples/ directory.
Installation

    Note VHS requires ttyd and ffmpeg to be installed and available on your PATH.

Use a package manager:

# macOS or Linux
brew install vhs

# macOS (via MacPorts)
sudo port install vhs

# Arch Linux (btw)
pacman -S vhs

# Nix
nix-env -iA nixpkgs.vhs

# Debian/Ubuntu
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
# Install ttyd from https://github.com/tsl0922/ttyd/releases
sudo apt update && sudo apt install vhs ffmpeg

# Fedora/RHEL
echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo
# Install ttyd from https://github.com/tsl0922/ttyd/releases
sudo yum install vhs ffmpeg

# Void Linux
sudo xbps-install vhs

# Windows
scoop install vhs

Or, use Docker to run VHS directly, dependencies included:

docker run --rm -v $PWD:/vhs ghcr.io/charmbracelet/vhs <cassette>.tape

Or, download it:

    Packages are available in Debian and RPM formats
    Binaries are available for Linux, macOS, and Windows

Or, just install it with go:

go install github.com/charmbracelet/vhs@latest

Record Tapes

VHS has the ability to generate tape files from your terminal actions!

To record to a tape file, run:

vhs record > cassette.tape

Perform any actions you want and then exit the terminal session to stop recording. You may want to manually edit the generated .tape file to add settings or modify actions. Then, you can generate the GIF:

vhs cassette.tape

The VHS Server

VHS has an SSH server built in! When you self host VHS you can access it as though it were installed locally. VHS will have access to commands and applications on the host so you don't need to install them on your machine.

To start the server run:

vhs serve

Configuration Options

Then, simply access VHS from a different machine via ssh:

ssh vhs.example.com < demo.tape > demo.gif

VHS Command Reference

    Note You can view all VHS documentation on the command line with vhs manual.

There are a few basic types of VHS commands:

    Output <path>: specify file output
    Require <program>: specify required programs for tape file
    Set <Setting> Value: set recording settings
    Type "<characters>": emulate typing
    Left Right Up Down: arrow keys
    Backspace Enter Tab Space: special keys
    Ctrl[+Alt][+Shift]+<char>: press control + key and/or modifier
    Sleep <time>: wait for a certain amount of time
    Hide: hide commands from output
    Show: stop hiding commands from output

Output

The Output command allows you to specify the location and file format of the render. You can specify more than one output in a tape file which will render them to the respective locations.

Output out.gif
Output out.mp4
Output out.webm
Output frames/ # a directory of frames as a PNG sequence

Require

The Require command allows you to specify dependencies for your tape file. These are useful to fail early if a required program is missing from the $PATH and it is certain that the VHS execution will not work as expected.

Require commands must be defined at the top of a tape file, before any non- setting or non-output command.

# A tape file that requires gum and glow to be in the $PATH
Require gum
Require glow

Settings

The Set command allows you to change global aspects of the terminal, such as the font settings, window dimensions, and GIF output location.

Setting must be administered at the top of the tape file. Any setting (except TypingSpeed) applied after a non-setting or non-output command will be ignored.
Set Shell

Set the shell with the Set Shell <shell> command

Set Shell fish

Set Font Size

Set the font size with the Set FontSize <number> command.

Set FontSize 10
Set FontSize 20
Set FontSize 40

Example of setting the font size to 10 pixels Example of setting the font size to 20 pixels Example of setting the font size to 40 pixels
Set Font Family

Set the font family with the Set FontFamily "<font>" command

Set FontFamily "Monoflow"

Example of changing the font family to Monoflow
Set Width

Set the width of the terminal with the Set Width command.

Set Width 300

Example of changing the width of the terminal
Set Height

Set the height of the terminal with the Set Height command.

Set Height 1000

Example of changing the height of the terminal
Set Letter Spacing

Set the spacing between letters (tracking) with the Set LetterSpacing Command.

Set LetterSpacing 20

Example of changing the letter spacing to 20 pixels between characters
Set Line Height

Set the spacing between lines with the Set LineHeight Command.

Set LineHeight 1.8

Example of changing the line height to 1.8
Set Typing Speed

Set TypingSpeed 500ms # 500ms
Set TypingSpeed 1s    # 1s

Set the typing speed of seconds per key press. For example, a typing speed of 0.1 would result in a 0.1s (100ms) delay between each character being typed.

This setting can also be overwritten per command with the @<time> syntax.

Set TypingSpeed 0.1
Type "100ms delay per character"
Type@500ms "500ms delay per character"

Example of using the Type command in VHS
Set Theme

Set the theme of the terminal with the Set Theme command. The theme value should be a JSON string with the base 16 colors and foreground + background.

Set Theme { "name": "Whimsy", "black": "#535178", "red": "#ef6487", "green": "#5eca89", "yellow": "#fdd877", "blue": "#65aef7", "magenta": "#aa7ff0", "cyan": "#43c1be", "white": "#ffffff", "brightBlack": "#535178", "brightRed": "#ef6487", "brightGreen": "#5eca89", "brightYellow": "#fdd877", "brightBlue": "#65aef7", "brightMagenta": "#aa7ff0", "brightCyan": "#43c1be", "brightWhite": "#ffffff", "background": "#29283b", "foreground": "#b3b0d6", "selection": "#3d3c58", "cursor": "#b3b0d6" }

Example of changing the theme to Whimsy

You can also set themes by name:

Set Theme "Catppuccin Frappe"

See the full list by running vhs themes, or in THEMES.md.
Set Padding

Set the padding (in pixels) of the terminal frame with the Set Padding command.

Set Padding 0

Example of setting the padding
Set Margin

Set the margin (in pixels) of the video with the Set Margin command.

Set Margin 60
Set MarginFill "#6B50FF"

Example of setting the margin
Set Window Bar

Set the type of window bar (Colorful, ColorfulRight, Rings, RingsRight) on the terminal window with the Set WindowBar command.

Set WindowBar Colorful

Example of setting the margin
Set Border Radius

Set the border radius (in pixels) of the terminal window with the Set BorderRadius command.

# You'll likely want to add a Margin + MarginFill if you use BorderRadius.
Set Margin 20
Set MarginFill "#674EFF"
Set BorderRadius 10

Example of setting the margin
Set Framerate

Set the rate at which VHS captures frames with the Set Framerate command.

Set Framerate 60

Set Playback Speed

Set the playback speed of the final render.

Set PlaybackSpeed 0.5 # Make output 2 times slower
Set PlaybackSpeed 1.0 # Keep output at normal speed (default)
Set PlaybackSpeed 2.0 # Make output 2 times faster

Set Cursor Blink

Set whether the cursor should blink. Enabled by default.

Set CursorBlink false

Example of setting the cursor blink.
Type

Use Type to emulate key presses. That is, you can use Type to script typing in a terminal. Type is handy for both entering commands and interacting with prompts and TUIs in the terminal. The command takes a string argument of the characters to type.

You can set the standard typing speed with Set TypingSpeed and override it in places with a @time argument.

# Type something
Type "Whatever you want"

# Type something really slowly!
Type@500ms "Slow down there, partner."

Example of using the Type command in VHS
Keys

Key commands take an optional @time and optional repeat count for repeating the key press every interval of <time>.

Key[@<time>] [count]

Backspace

Press the backspace key with the Backspace command.

Backspace 18

Example of pressing the Backspace key 18 times
Ctrl

You can access the control modifier and send control sequences with the Ctrl command.

Ctrl+R

Example of pressing the Ctrl+R key to reverse search
Enter

Press the enter key with the Enter command.

Enter 2

Example of pressing the Enter key twice
Arrow Keys

Press any of the arrow keys with the Up, Down, Left, Right commands.

Up 2
Down 2
Left
Right
Left
Right
Type "B"
Type "A"

Example of pressing the arrow keys to navigate text
Tab

Enter a tab with the Tab command.

Tab@500ms 2

Example of pressing the tab key twice for autocomplete
Space

Press the space bar with the Space command.

Space 10

Example of pressing the space key
Page Up / Down

Press the Page Up / Down keys with the PageUp or PageDown commands.

PageUp 3
PageDown 5

Sleep

The Sleep command allows you to continue capturing frames without interacting with the terminal. This is useful when you need to wait on something to complete while including it in the recording like a spinner or loading state. The command takes a number argument in seconds.

Sleep 0.5   # 500ms
Sleep 2     # 2s
Sleep 100ms # 100ms
Sleep 1s    # 1s

Hide

The Hide command instructs VHS to stop capturing frames. It's useful to pause a recording to perform hidden commands.

Hide

This command is helpful for performing any setup and cleanup required to record a GIF, such as building the latest version of a binary and removing the binary once the demo is recorded.

Output example.gif

# Setup
Hide
Type "go build -o example . && clear"
Enter
Show

# Recording...
Type 'Running ./example'
...
Enter

# Cleanup
Hide
Type 'rm example'

Show

The Show command instructs VHS to begin capturing frames, again. It's useful after a Hide command to resume frame recording for the output.

Hide
Type "You won't see this being typed."
Show
Type "You will see this being typed."

Example of typing something while hidden
Continuous Integration

You can hook up VHS to your CI pipeline to keep your GIFs up-to-date with the official VHS GitHub Action:

    gear charmbracelet/vhs-action

VHS can also be used for integration testing. Use the .txt or .ascii output to generate golden files. Store these files in a git repository to ensure there are no diffs between runs of the tape file.

Output golden.ascii

Syntax Highlighting

There’s a tree-sitter grammar for .tape files available for editors that support syntax highlighting with tree-sitter:

    deciduous_tree charmbracelet/tree-sitter-vhs

It works great with Neovim, Emacs, and so on!
