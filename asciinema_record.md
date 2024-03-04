# Asciinema - How to Record Linux Terminal Sessions


How it works

## asciinema project is built of several complementary pieces:

[Recording Terminal Sessions](https://asciinema.org/)

    command-line based terminal session recorder, asciinema,
    website with an API at asciinema.org, javascript player

When you run asciinema rec in your terminal the recording starts, capturing all output that is being printed to your terminal while you’re issuing the shell commands. When the recording finishes (by hitting Ctrl-D or typing exit) then the captured output is uploaded to asciinema.org website and prepared for playback on the web.

Here’s a brief overview of how these parts work.
Recording

You probably know ssh, screen or script command. Actually, asciinema was inspired by script (and scriptreplay) commands. What you may not know is they all use the same UNIX system capability: a pseudo-terminal.

    A pseudo terminal is a pair of pseudo-devices, one of which, the slave, emulates a real text terminal device, the other of which, the master, provides the means by which a terminal emulator process controls the slave.

Here’s how terminal emulator interfaces with a user and a shell:

    The role of the terminal emulator process is to interact with the user; to feed text input to the master pseudo-device for use by the shell (which is connected to the slave pseudo-device) and to read text output from the master pseudo-device and show it to the user.

In other words, pseudo-terminals give programs the ability to act as a middlemen between the user, the display and the shell. It allows for transparent capture of user input (keyboard) and terminal output (display). screen command utilizes it for capturing special keyboard shortcuts like <kbd>Ctrl-A</kbd> and altering the output in order to display window numbers/names and other messages.

asciinema recorder does its job by utilizing pseudo-terminal for capturing all the output that goes to a terminal and saving it in memory (together with timing information). The captured output includes all the text and invisible escape/control sequences in a raw, unaltered form. When the recording session finishes it uploads the output (in asciicast format) to asciinema.org. That’s all about “recording” part.

For the implementation details check out recorder source code.
Playback

As the recording is a raw stream of text and control sequences it can’t be just played by incrementally printing text in proper intervals. It requires interpretation of ANSI escape code sequences in order to correctly display color changes, cursor movement and printing text at proper places on the screen.

The player comes with its own terminal emulator based on Paul Williams’ parser for ANSI-compatible video terminals. It covers only the display part of the emulation as this is what the player is about (input is handled by your terminal+shell at the time of recording anyway) and its handling of escape sequences is fully compatible with most modern terminal emulators like xterm, Gnome Terminal, iTerm, mosh etc.

The end result is a smooth animation with all text attributes (bold, underline, inverse, …) and 256 colors perfectly rendered.

For the implementation details check out asciinema.org website source code and player source code.


## Getting started

1. Install the recorder

Install asciinema with:

brew install asciinema

See other installation options.

2. Record

To start recording run the following command:

asciinema rec

This spawns a new shell instance and records all terminal output. When you're ready to finish simply exit the shell either by typing exit or hitting Ctrl-D.

See usage instructions to learn about all commands and options.
3. Manage your recordings (optional)

If you want to manage your recordings on asciinema.org (set title/description, delete etc) you need to authenticate. Run the following command and open displayed URL in your web browser:

asciinema auth

If you skip this step now, you can run the above command later and all previously recorded asciicasts will automatically get assigned to your profile.

 Installation

There are several ways to get asciinema recorder:

    Installing via Pip
    Installing on Linux
    Installing on macOS
    Installing on FreeBSD
    Installing on OpenBSD
    Running in Docker container
    Running from source

If you use other operating system and you can build a native package for it then don’t hesitate, do it and let us know. We have Github issue where we track new releases and packaging progress.
Installing via Pip

asciinema is available on PyPI and can be installed with pip (Python 3 required):

sudo pip3 install asciinema

This is the universal installation method for all operating systems, which always provides the latest version.
Installing on Linux
Arch Linux

pacman -S asciinema

Debian

sudo apt-get install asciinema

Fedora

For Fedora < 22:

sudo yum install asciinema

For Fedora >= 22:

sudo dnf install asciinema

Gentoo Linux

emerge -av asciinema

NixOS / Nix

nix-env -i asciinema

openSUSE

zypper in asciinema

Ubuntu

sudo apt-add-repository ppa:zanchey/asciinema
sudo apt-get update
sudo apt-get install asciinema

Installing on macOS
Homebrew

brew install asciinema

MacPorts

sudo port selfupdate && sudo port install asciinema

Nix

nix-env -i asciinema

Installing on FreeBSD
Ports

cd /usr/ports/textproc/py-asciinema && make install

Packages

pkg install py39-asciinema

Installing on OpenBSD

pkg_add asciinema

Running in Docker container

asciinema Docker image is based on Ubuntu 16.04 and has the latest version of asciinema recorder pre-installed.

docker pull asciinema/asciinema

When running it don’t forget to allocate a pseudo-TTY (-t), keep STDIN open (-i) and mount config directory volume (-v):

docker run --rm -ti -v "$HOME/.config/asciinema":/root/.config/asciinema asciinema/asciinema

Default command run in a container is asciinema rec.

There’s not much software installed in this image though. In most cases you may want to install extra programs before recording. One option is to derive new image from this one (start your custom Dockerfile with FROM asciinema/asciinema). Another option is to start the container with /bin/bash as the command, install extra packages and manually start asciinema rec:

docker run --rm -ti -v "$HOME/.config/asciinema":/root/.config/asciinema asciinema/asciinema /bin/bash
root@6689517d99a1:~# apt-get install foobar
root@6689517d99a1:~# asciinema rec

## Running from source

If none of the above works for you (or you want to help with development) just clone the repo and run latest version of asciinema straight from the main branch:

```python3
    $ git clone https://github.com/asciinema/asciinema.git
    $ cd asciinema
    git checkout main
    python3 -m asciinema --version
```

## Usage

asciinema is composed of multiple commands, similar to git, apt-get or brew.

When you run asciinema with no arguments help message is displayed, listing all available commands with their options.
rec [filename]

Record terminal session.

By running asciinema rec [filename] you start a new recording session. The command (process) that is recorded can be specified with -c option (see below), and defaults to $SHELL which is what you want in most cases.

Recording finishes when you exit the shell (hit <kbd>Ctrl+D</kbd> or type exit). If the recorded process is not a shell then recording finishes when the process exits.

If the filename argument is omitted then (after asking for confirmation) the resulting asciicast is uploaded to asciinema-server (by default to asciinema.org), where it can be watched and shared.

If the filename argument is given then the resulting recording (called asciicast) is saved to a local file. It can later be replayed with asciinema play <filename> and/or uploaded to asciinema server with asciinema upload <filename>.

ASCIINEMA_REC=1 is added to recorded process environment variables. This can be used by your shell’s config file (.bashrc, .zshrc) to alter the prompt or play a sound when the shell is being recorded.

Available options:

    --stdin - Enable stdin (keyboard) recording (see below)
    --append - Append to existing recording
    --raw - Save raw STDOUT output, without timing information or other metadata
    --overwrite - Overwrite the recording if it already exists
    -c, --command=<command> - Specify command to record, defaults to $SHELL
    -e, --env=<var-names> - List of environment variables to capture, defaults to SHELL,TERM
    -t, --title=<title> - Specify the title of the asciicast
    -i, --idle-time-limit=<sec> - Limit recorded terminal inactivity to max <sec> seconds
    -y, --yes - Answer “yes” to all prompts (e.g. upload confirmation)
    -q, --quiet - Be quiet, suppress all notices/warnings (implies -y)

Stdin recording allows for capturing of all characters typed in by the user in the currently recorded shell. This may be used by a player (e.g. asciinema-player) to display pressed keys. Because it’s basically a key-logging (scoped to a single shell instance), it’s disabled by default, and has to be explicitly enabled via --stdin option.
play <filename>

Replay recorded asciicast in a terminal.

This command replays given asciicast (as recorded by rec command) directly in your terminal.

Following keyboard shortcuts are available:

    <kbd>Space</kbd> - toggle pause,
    <kbd>.</kbd> - step through a recording a frame at a time (when paused),
    <kbd>Ctrl+C</kbd> - exit.

Playing from a local file:

asciinema play /path/to/asciicast.cast

Playing from HTTP(S) URL:

asciinema play https://asciinema.org/a/22124.cast
asciinema play http://example.com/demo.cast

Playing from asciicast page URL (requires <link rel="alternate" type="application/x-asciicast" href="/my/ascii.cast"> in page’s HTML):

asciinema play https://asciinema.org/a/22124
asciinema play http://example.com/blog/post.html

Playing from stdin:

cat /path/to/asciicast.cast | asciinema play -
ssh user@host cat asciicast.cast | asciinema play -

Playing from IPFS:

asciinema play dweb:/ipfs/QmNe7FsYaHc9SaDEAEXbaagAzNw9cH7YbzN4xV7jV1MCzK/ascii.cast

Available options:

    -i, --idle-time-limit=<sec> - Limit replayed terminal inactivity to max <sec> seconds
    -s, --speed=<factor> - Playback speed (can be fractional)

    For the best playback experience it is recommended to run asciinema play in a terminal of dimensions not smaller than the one used for recording, as there’s no “transcoding” of control sequences for new terminal size.

cat <filename>

Print full output of recorded asciicast to a terminal.

While asciinema play <filename> replays the recorded session using timing information saved in the asciicast, asciinema cat <filename> dumps the full output (including all escape sequences) to a terminal immediately.

asciinema cat existing.cast >output.txt gives the same result as recording via asciinema rec --raw output.txt.
upload <filename>

Upload recorded asciicast to asciinema.org site.

This command uploads given asciicast (recorded by rec command) to asciinema.org, where it can be watched and shared.

asciinema rec demo.cast + asciinema play demo.cast + asciinema upload demo.cast is a nice combo if you want to review an asciicast before publishing it on asciinema.org.
auth

Link your install ID with your asciinema.org user account.

If you want to manage your recordings (change title/theme, delete) at asciinema.org you need to link your “install ID” with asciinema.org user account.

This command displays the URL to open in a web browser to do that. You may be asked to log in first.

Install ID is a random ID (UUID v4) generated locally when you run asciinema for the first time, and saved at $HOME/.config/asciinema/install-id. It’s purpose is to connect local machine with uploaded recordings, so they can later be associated with asciinema.org account. This way we decouple uploading from account creation, allowing them to happen in any order.

    A new install ID is generated on each machine and system user account you use asciinema on, so in order to keep all recordings under a single asciinema.org account you need to run asciinema auth on all of those machines.

    asciinema versions prior to 2.0 confusingly referred to install ID as “API token”.


    Configuration file

    You can configure asciinema by creating config file at $HOME/.config/asciinema/config.

    Configuration is split into sections ([api], [record], [play]). Here’s a list of all available options for each section:

    [api]

    ; API server URL, default: https://asciinema.org
    ; If you run your own instance of asciinema-server then set its address here
    ; It can also be overriden by setting ASCIINEMA_API_URL environment variable
    url = https://asciinema.example.com

    [record]

    ; Command to record, default: $SHELL
    command = /bin/bash -l

    ; Enable stdin (keyboard) recording, default: no
    stdin = yes

    ; List of environment variables to capture, default: SHELL,TERM
    env = SHELL,TERM,USER

    ; Limit recorded terminal inactivity to max n seconds, default: off
    idle_time_limit = 2

    ; Answer "yes" to all interactive prompts, default: no
    yes = true

    ; Be quiet, suppress all notices/warnings, default: no
    quiet = true

    [play]

    ; Playback speed (can be fractional), default: 1
    speed = 2

    ; Limit replayed terminal inactivity to max n seconds, default: off
    idle_time_limit = 1

    A very minimal config file could look like that:

    [record]
    idle_time_limit = 2

    Config directory location can be changed by setting $ASCIINEMA_CONFIG_HOME environment variable.

    If $XDG_CONFIG_HOME is set on Linux then asciinema uses $XDG_CONFIG_HOME/asciinema instead of $HOME/.config/asciinema.

        asciinema versions prior to 1.1 used $HOME/.asciinema. If you have it there you should mv $HOME/.asciinema $HOME/.config/asciinema.


        Sharing & embedding

        You can share any recording by copying its URL and sending it to a friend or posting it on a social network. asciinema.org supports oEmbed/Open Graph/Twitter Card protocols, displaying a nice thumbnail where possible.

        You can also easily embed an asciicast on any HTML page. If you want to put a recording in a blog post, a project’s documentation or in a conference talk’s slides, you can do it by copy-pasting one of the embed scripts.
        Sharing a link

        You can get the share link for a specific asciicast by clicking on “Share” link on asciicast page.

        Any of the options listed in “Customizing the playback” section below can be appended to the asciicast URL as the query params, e.g.:

        https://asciinema.org/a/14?t=25&speed=2&theme=solarized-dark

        Visiting this link will start the playback at 25s and play at double speed, using Solarized Dark terminal theme.
        Embedding image link

        Embedding as an image link is useful in places where scripts are not allowed, e.g. in a project’s README file.

        You can get the embed snippets for a specific asciicast by clicking on “Share” link on asciicast page.

        This is how they look for asciicast 14:

        HTML:

        <a href="https://asciinema.org/a/14"><img src="https://asciinema.org/a/14.png" width="836"/></a>

        Markdown:

        [![asciicast](https://asciinema.org/a/14.png)](https://asciinema.org/a/14)

        You can pass extra options (listed in “Customizing the playback” below) to the linked URL as query params. For example, to start the playback automatically when opening linked asciicast page append ?autoplay=1 to the asciicast URL in href attribute:

        <a href="https://asciinema.org/a/14?autoplay=1"><img src="https://asciinema.org/a/14.png" width="836"/></a>

        Embedding the player

        If you’re embedding on your own page or on a site which permits script tags, you can use the full player widget.

        You can get the widget script for a specific asciicast by clicking on “Embed” link on asciicast page.

        It looks like this:

        <script src="https://asciinema.org/a/14.js" id="asciicast-14" async></script>

        The player shows up right at the place where the script is pasted. Let’s look at the following markup:

        <p>This is some text.</p>
        <script src="https://asciinema.org/a/14.js" id="asciicast-14" async></script>
        <p>This is some other text.</p>

        The player is displayed between the two paragraphs, as a div element with “asciicast” class.

        The embed script supports all customization options (see the section below). An option can be specified by adding it as a
        data-option-name="value"

        tag.

        For example, to make the embedded player autostart playback when loaded and use big font, use the following script:

        <script src="https://asciinema.org/a/14.js" id="asciicast-14" async data-autoplay="true" data-size="big"></script>

        Customizing the playback

        The player supports several options that control the behavior and look of it. Append them to the URL (?speed=2&theme=tango) or set them as data attributes on embed script (data-speed="2" data-theme="tango").
        startAt / t

        The startAt (or t) option specifies the time at which the playback should start. The default is startAt=0 (play from the beginning).

        Accepted formats: ss, mm:ss, hh:mm:ss.

        NOTE: when startAt is specified then autoplay=1 is implied. To prevent the player from starting automatically when startAt option is set you have to explicitly set autoplay=0.
        autoplay

        The autoplay option controls whether the playback should automatically start when the player loads. Accepted values:

            0 / false - do not start playback automatically (default)
            1 / true - start playback automatically

        preload

        The preload option controls whether the player should immediately start fetching the recording.

            0 / false - do not preload the recording, wait for user action
            1 / true - preload the recording

        Defaults to 1 for asciinema.org URLs, to 0 for embed script.
        loop

        The loop option allows for looping the playback. This option is usually combined with autoplay option. Accepted values:

            0 / false - disable looping (default)
            1 / true - enable looping

        speed

        The speed option alters the playback speed. The default speed is 1 which means it plays at the unaltered, original speed.
        idleTimeLimit / i

        The idleTimeLimit (or i) option allows reducing terminal inactivity periods to a given number of seconds.

        For example, when set to 2 any inactivity longer than 2 seconds will be “compressed” to 2 seconds.

        When not specified it defaults to (first non-blank):

            the “Idle time limit” value set on asciicast’s settings page,
            idle_time_limit value from asciicast header (saved when passing -i <sec> to asciinema rec),
            no limit, when it was not specified at the time of recording.

        theme

        The theme option allows overriding a theme used for the terminal. It defaults to a theme set by the asciicast author (or to “asciinema” if not set by the author). The available themes are:

            asciinema
            tango
            solarized-dark
            solarized-light
            monokai

        cols

        The cols option allows overriding width (in characters) of the emulated terminal. By default the recorded terminal’s width is used.
        rows

        The rows option allows overriding height (in lines) of the emulated terminal. By default the recorded terminal’s height is used.
        oEmbed / Open Graph / Twitter Card

        asciinema supports oEmbed, Open Graph and Twitter Card APIs. When you share an asciicast on Twitter, Slack, Facebook, Google+ or any other site which supports one of these APIs, the asciicast is presented in a rich form (usually with a title, author, description and a thumbnail image), linking to your recording on asciinema.org.


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
