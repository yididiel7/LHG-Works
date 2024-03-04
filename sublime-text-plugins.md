# Sublime Text plugins

Here are the Sublime Text packages we'll cover:

    SideBarEnhancements
    ColorHelper
    BracketHighlighter
    Terminus
    DoxyDoxygen
    A File Icon
    Emmet
    AutoFileName
    SublimeLinter
    Origami

Emmet

Classic! Emmet is one of those plugins that make you realize the power of plugins. It's perhaps one of the most well-known ones and it saves you a lot of time when it comes to markup. It consists of a series of shortcuts or snippets that allow you to dynamically build HTML. Let's see an example:
13_1

By pressing the TAB key, it automatically transforms into the following:
13_2

Alignment

This plugin is quite useful when you have variable or array definitions and you want to align the assignments by the = character. In other words, it aligns the = character in all lines. Let's see an example to make it clearer.

$length = 100;
$width = 800;
$minStepInline = 125;

After alignment, it would look like this:

$length        = 100;
$width         = 800;
$minStepInline = 125;

Pretty JSON

Unfortunately, Sublime Text doesn't have native algorithms for formatting JSON code. With this plugin, we can improve the appearance of unformatted JSON strings. Basically, we can convert this:
13_3

Into this:
13_4

All you have to do is select the JSON string or place the cursor on the respective line and press CTRL + Alt + J (Linux).

Color Highlighter

This useful plugin adds a background color defined in a CSS file or similar to the corresponding code.
13_5

Color Picker

This plugin provides a modal window served by the operating system itself for selecting or modifying a color using the key combination CTRL + Shift + C (Linux) or CTRL + Shift + P (Windows).
13_6

Trailing Spaces

Have you noticed trailing spaces at the end of some lines of your code? If you have enabled the display of trailing spaces in Sublime Text's settings, you will see something like this:
13_7

The problem with these trailing spaces is that they make the file heavier and do not comply with the PHP PSR standard. With the Trailing Spaces plugin, you can manually remove these spaces or configure it to remove them every time you save the changes.
AutoFileName

As the name suggests, this plugin autocompletes file names located in the directory system. By default, autocompletion is performed based on the file you are currently editing. It works for autocompletion in any language, stylesheet, etc.
13_8

Git

If you're not already using Git, it's time to enter the world of version control systems with this spectacular plugin. It's an excellent tool and provides functions for routine tasks such as diffing files, branches, merging, commits, stash, and more.
13_9

Fileicons

This plugin adds icons to the left side of each file for most known file types.
13_10

SublimeCodeIntel

This plugin is a type of code intelligence tool that provides relevant information about a method, class, or object. It allows you to determine where it was declared and where it is used through a dialog box.
13_11

SublimeLinter

This plugin highlights syntax errors in a language. Some languages are not supported by default, so you will need to install a complementary plugin such as SublimeLinter-php for PHP.
13_12

ApacheConf

This plugin enhances the visualization of Apache configuration files.
13_13

INI

This plugin enhances the visualization of .ini configuration files.
13_14

DocBlockr

This plugin generates code documentation or at least a scaffolding for it. To generate the code, you simply type `/**` and press the TAB key.
13_15

HTML-CSS-JS Prettify

This plugin allows you to format messy HTML/CSS/JS code. Basically, it transforms this:
13_16

Into this:
13_17

This plugin requires Node.js to work. Node.js should be installed and configured as shown below, based on the path where the executable is located. If there is another function already using the key combination CTRL + Shift + H, you will need to overwrite it as well.
13_18

Materialize

Finally, although this list could go on and on, I invite you to try out this spectacular theme that you will surely love. See you soon!

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
