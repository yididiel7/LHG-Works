Package Control Messages
========================

InsertDate
----------

  InsertDate
  ==========

  Inserts the current date and/or time according to the specified format,
  supporting named timezones.


  Key Bindings (and Examples)
  ---------------------------

  Open the Command Palette and select
  "Preferences: InsertDate Keybindings - Default".


  Settings
  --------

  Run "Preferences: InsertDate Settings - Default" for an overview of available
  settings.

  You should have been asked to set your "tz_in" timezone setting so that
  InsertDate knows what your current timezone is and can represent it properly
  when using `%Z`. It will also be used when translating timestamps to different
  timezones, although this should work out of the box.

  For more information, refer to the README:
  - "InsertDate: Open README"
  - https://github.com/FichteFoll/sublimetext-insertdate#readme

MarkdownEditing
---------------

  # MarkdownEditing

  Thanks for installing MarkdownEditing.

  This package provides 

  *   useful Markdown editing features for Sublime Text 
  *   color schemes optimized for writing
  *   robust syntax definitions for
      -   Standard Markdown
      -   Github flavored Markdown
      -   MultiMarkdown

  User Guide is available at https://sublimetext-markdown.github.io/MarkdownEditing

  Bugs or feedback via https://github.com/SublimeText-Markdown/MarkdownEditing/issues

Emmet
-----

  Emmet plugin installed

  Emmet is a web-developer’s toolkit for boosting HTML & CSS code writing.

  With Emmet, you can type expressions (abbreviations) similar to CSS selectors and convert them into code fragment with a single keystroke. For example, this abbreviation:

  ul#nav>li.item$*4>a{Item $}

  ...can be expanded into:

  <ul id="nav">
      <li class="item1"><a href="">Item 1</a></li>
      <li class="item2"><a href="">Item 2</a></li>
      <li class="item3"><a href="">Item 3</a></li>
      <li class="item4"><a href="">Item 4</a></li>
  </ul>

  Read more about Emmet for Sublime Text:
  https://github.com/emmetio/sublime-text-plugin#readme

Color Highlighter
-----------------


  Color Highlighter v8.0 is released!

  For more info about the plugin visit https://github.com/Monnoroch/ColorHighlighter.

  Color Highlighter was developed for many years and features were added without consideration.
  As a result it has plenty of bugs and code is completely unmaintainable.
  Because of it, I've decided to rewrite the plugin from scratch using all the good programming practices I learned
  over the years.

  This is the first release of the new version and it might have some subtle bugs, especially on Windows and Mac, as I
  don't have machines with these systems. If you find any bugs, please file them in
  the bug tracker here: https://github.com/Monnoroch/ColorHighlighter/issues. I always appreciate your help and try to fix
  problems as soon as possible.

  The plugin is being developed by me alone in my spare time, so if you want to encourage me to build it
  better and faster, donations as always welcome.

  Thank you guys for your support, every little bit helps!

ayu
---

  **ayu theme for Sublime Text**
  To learn more about ayu visit https://github.com/dempfi/ayu
  ===============================================================================

  Activate ayu

  Open command palette via `Tools > Command Palette` (or CMD/CTRL + SHIFT + p)
  and type `ayu: Activate theme`.

                                    ===

  You can also manually activate this theme by adding these lines to your user
  settings (Preferences > Settings - User):

  Light:
  ```json
  "theme": "ayu-light.sublime-theme",
  "color_scheme": "Packages/ayu/ayu-light.sublime-color-scheme",
  ```

  Mirage:
  ```json
  "theme": "ayu-mirage.sublime-theme",
  "color_scheme": "Packages/ayu/ayu-mirage.sublime-color-scheme",
  ```

  Dark:
  ```json
  "theme": "ayu-dark.sublime-theme",
  "color_scheme": "Packages/ayu/ayu-dark.sublime-color-scheme",
  ```

  ================================================================================

  Ayu provides following options to customize the theme

  ```json
  "ui_native_titlebar":       true, // native titlebar on macOs
  "ui_separator":             true, // separators between panels
  "ui_wide_scrollbars":       true, // wider scrollbars
  ```

SublimeLinter
-------------


    ____        _     _ _                _     _       _
   / ___| _   _| |__ | (_)_ __ ___   ___| |   (_)_ __ | |_ ___ _ __
   \___ \| | | | '_ \| | | '_ ` _ \ / _ \ |   | | '_ \| __/ _ \ '__|
    ___) | |_| | |_) | | | | | | | |  __/ |___| | | | | ||  __/ |
   |____/ \__,_|_.__/|_|_|_| |_| |_|\___|_____|_|_| |_|\__\___|_|


  Welcome to SublimeLinter, a linter framework for Sublime Text.

  Linters are not included, they must be installed separately.
  Get them from Package Control: https://packagecontrol.io/search/SublimeLinter


  For complete documentation on how to use and configure SublimeLinter,
  please see: http://www.sublimelinter.com

  To report issues: https://github.com/SublimeLinter/SublimeLinter

Material Theme
--------------

  ## Material Theme for Sublime Text 3

  ***Important Notice***

  Please note that this package is **deprecated** and not maintained anymore!
  You are using a mirror of a now-deleted repository.
  See https://github.com/wbond/package_control_channel/pull/8646 for details.

  **********************************************************************************************

  For more information on the Material Theme: https://github.com/SublimeText/material-theme

  **********************************************************************************************

  # Activate the theme

  You can activate this theme from:
  - Command palette `Tools > Command Palette` (⌘/Ctrl + ⇧ + P) by typing `Material Theme: Activate theme`.
  - Context menu (Right click on the editor) and choose `Material Theme > Activate`
  - `Preferences > Packages Settings` and choose `Material Theme > Activate`

  You can also manually activate this theme by adding these lines to your user settings (**Preferences > Settings - User**):

  ```json
  "color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
  "theme": "Material-Theme.sublime-theme",
  ```

  **NOTE:** Restart Sublime Text after activating the theme.

  ## File icons
  From release 4.0.0 this theme use [A File Icon](https://packagecontrol.io/packages/A%20File%20Icon) package to display file icons. Please install the package and restart Sublime Text.

  **********************************************************************************************

  # Theme options

  ```json
  // Accent
  "material_theme_accent_acid-lime"         : true, // Set acid-lime accent color
  "material_theme_accent_blue"              : true, // Set blue accent color
  "material_theme_accent_brba"              : true, // Set Breaking Bad green accent color
  "material_theme_accent_bright-teal"       : true, // Set bright-teal accent color
  "material_theme_accent_cyan"              : true, // Set cyan accent color
  "material_theme_accent_graphite"          : true, // Set graphite accent color
  "material_theme_accent_indigo"            : true, // Set indigo accent color
  "material_theme_accent_lime"              : true, // Set lime green accent color
  "material_theme_accent_orange"            : true, // Set orange accent color
  "material_theme_accent_pink"              : true, // Set pink accent color
  "material_theme_accent_purple"            : true, // Set purple accent color
  "material_theme_accent_red"               : true, // Set pale red accent color
  "material_theme_accent_sky"               : true, // Set bright-cyan accent color
  "material_theme_accent_tomato"            : true, // Set tomato red accent color
  "material_theme_accent_yellow"            : true, // Set yellow accent color

  // Panels
  "material_theme_accent_scrollbars"        : true, // Enable accent color for scrollbars
  "material_theme_accent_titlebar"          : true, // Enable accent color for titlebar
  "material_theme_bright_scrollbars"        : true, // Bright scrollbars puck color
  "material_theme_compact_panel"            : true, // Set minimal padding for the search panel
  "material_theme_contrast_mode"            : true, // Enable sidebar and panels contrast mode
  "material_theme_panel_separator"          : true, // Show bottom panel separator
  "material_theme_small_statusbar"          : true, // Set small status bar
  "material_theme_titlebar"                 : true, // Enable title bar (OS X 10.10+)

  // Sidebar
  "material_theme_arrow_folders"            : true, // Replace folder icons with arrows
  "material_theme_big_fileicons"            : true, // Show bigger file type icons
  "material_theme_bullet_tree_indicator"    : true, // Set a bullet as active tree indicator
  "material_theme_compact_sidebar"          : true, // Set compact side bar
  "material_theme_disable_fileicons"        : true, // Hide sidebar file type icons
  "material_theme_disable_folder_animation" : true, // Disable folder animation
  "material_theme_disable_tree_indicator"   : true, // Disable sidebar file indicator

  // Tabs
  "material_theme_bold_tab"                 : true, // Make the tab labels bolder
  "material_theme_small_tab"                : true, // Set small tabs
  "material_theme_tabs_autowidth"           : true, // Enable autowidth for tabs
  "material_theme_tabs_separator"           : true, // Show tabs separator, this disables tab hover animation

  // If you use Material Theme - Appbar addon you can use additional settings:
  "material_theme_tree_headings"            : true, // Show sidebar headings
  ```

  **********************************************************************************************

  # Recommended settings for a better experience:

  ```json
  "always_show_minimap_viewport" : true,
  "bold_folder_labels"           : true,
  "font_options"                 : ["gray_antialias", "subpixel_antialias"], // On retina Mac & Windows
  "indent_guide_options"         : ["draw_normal", "draw_active"], // Highlight active indent
  "line_padding_bottom"          : 3,
  "line_padding_top"             : 3,
  "overlay_scroll_bars"          : "enabled",
  ```

LSP
---

                    Thanks for trying out the LSP package!
                    ======================================


  This package is a "client" implementation of the "language server protocol".
  This is a protocol that defines how (language) servers and clients (editors)
  should talk to each other. It enables high-quality code-complete,
  signature-help, goto-def, accurate find-references, and more.

  This package doesn't actually contain any language server by itself. It
  provides only the glue code to attach language servers to Sublime Text.

  Exactly which concepts from LSP should map to which concepts from Sublime
  Text and vice versa is an ongoing research problem. We're certainly still
  figuring things out!

  To get up and running for your favorite language, open the documentation at

      https://lsp.sublimetext.io

Vintageous
----------

  //////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////

  __     ___       _
  \ \   / (_)_ __ | |_ __ _  __ _  ___  ___  _   _ ___
   \ \ / /| | '_ \| __/ _` |/ _` |/ _ \/ _ \| | | / __|
    \ V / | | | | | || (_| | (_| |  __/ (_) | |_| \__ \
     \_/  |_|_| |_|\__\__,_|\__, |\___|\___/ \__,_|___/
                            |___/

  //////////////////////////////////////////////////////////////////////////////



  Thank you for installing Vintageous! Hope you find it useful :)

  If you use it often to get actual work done, please consider donating:

  	PayPal: http://www.pledgie.com/campaigns/19122
  	Gittip: https://www.gittip.com/guillermooo/

  Cheers,
  Guillermo

auto-save
---------

  Thank you for installing AutoSave
  ----------------------------------------

  You're one step closer to having your files save automatically after every modification!


  Documentation
  =============
  The plugin is dead simple. When turned on, the current file you are viewing will
  save automatically as you modify it. In other words, the file saves after every keystroke.
  The plugin is turned off by default since it is so invasive. You may enable it by adding
  a key binding to the "auto_save" command in "Preferences / Key Bindings - User", for example:

  { "keys": ["ctrl+shift+s"], "command": "auto_save" }

  See links below for more help.

  Useful Links
  ============
  * Documentation & Code: https://github.com/jamesfzhang/auto-save
  * Report issues: https://github.com/jamesfzhang/auto-save/issues
  * Follow me on Twitter: @jamesfzhang

Theme - Spacegray
-----------------

  Thanks for installing Spacegray!


  How to activate
  ===============

  Activate the UI theme and color scheme by modifying your user preferences file, which you can find using the menu item `Sublime Text -> Preferences -> Settings - User` (⌘+, on Mac).

  Spacegray comes in different flavors, based on Base16 color schemes. You can choose whichever flavor you like, but don't forget to change *both* color scheme and UI theme so they match.

  *Note: Don't forget to restart Sublime Text after activating the theme.*


  Spacegray
  ---------

  Default flavor based on Base16 Ocean Dark color scheme.

  *Example settings*

      {
        "theme": "Spacegray.sublime-theme",
        "color_scheme": "Packages/Theme - Spacegray/base16-ocean.dark.tmTheme"
      }


  Spacegray Light
  ---------------

  Light variation based on Base16 Ocean Light color scheme.

  *Example settings*

      {
        "theme": "Spacegray Light.sublime-theme",
        "color_scheme": "Packages/Theme - Spacegray/base16-ocean.light.tmTheme"
      }


  Spacegray Eighties
  ------------------

  A variation based on Base16 Eighties Dark color scheme.

  *Example settings*

      {
        "theme": "Spacegray Eighties.sublime-theme",
        "color_scheme": "Packages/Theme - Spacegray/base16-eighties.dark.tmTheme"
      }


  *Note: Don't forget to restart Sublime Text after activating the theme.*

Intellekt
---------

  INTELLEKT
  =========

  Intellekt aims to provide intellisense features for various programming languages

  How to install
  --------------

  1) you can unzip this program and place it in your`sublime text` packages directory or
  2) install from package control. Search `intellekt`

  Issues
  ------

  Some snippets and completions may affect display of the intellisense. Disable them to utilise full features. You may also need to press the backspace button to help

ColorHelper
-----------

  # ColorHelper

  Welcome to ColorHelper!  To learn how to get started, check out
  the documentation at https://facelessuser.github.io/ColorHelper/.

  A restart of Sublime Text may be required.

CTags
-----

  =====
  CTags
  =====

  .. image:: https://travis-ci.org/SublimeText/CTags.svg?branch=development
      :target: https://travis-ci.org/SublimeText/CTags

  About
  =====

  This `Sublime Text 2/3`_ package provides support for working with tags
  generated by `Exuberant CTags`_

  .. _Sublime Text 2/3: http://sublimetext.com/
  .. _Exuberant CTags: http://ctags.sourceforge.net/

  The ctags command is searched for on the system PATH. It works by doing a
  binary search of a memory-mapped tags file, so it will work efficiently with
  very large (50MB+) tags files if needed.

  See this `forum thread`_ for a bit of historical background on the Sublime Text plugin.

  .. _forum thread: http://www.sublimetext.com/forum/viewtopic.php?f=5&t=144

  Installation
  ============

  The easiest way to install this plugin, is to use the `Package Control`_ 
  plugin, by `Will Bond`_

  .. _Package Control: http://wbond.net/sublime_packages/package_control/
  .. _Will Bond: http://wbond.net/

  Alternatively, the plugin can be installed manually using one of the following
  methods.

  Using Git
  ---------
  Go to your Sublime Text Packages directory and clone the repository
  using the command below::

    $ git clone https://github.com/SublimeText/CTags

  Manual Download
  ---------------

  * Download the files using the .zip download option
  * Unzip the files (and rename the folder to CTags if needed)
  * Copy the folder to your Sublime Text Packages directory

  Additional Setup Steps
  ======================

  OS X
  ----

  The default ``ctags`` executable in OSX does not support recursive directory
  search (i.e. ``ctags -R``). To get a proper copy of ctags, use one of the
  following options:

  * Using `Homebrew`_::

      brew install ctags

  * Using `MacPorts`_::

      port install ctags

  .. _`Homebrew`: http://mxcl.github.com/homebrew/
  .. _`MacPorts`: http://www.macports.org/

  Ensure that the ``PATH`` is updated so the correct version is run:

  * If ``which ctags`` doesn't point at ctags in ``/usr/local/bin``, make sure
    you add ``/usr/local/bin`` to your ``PATH`` ahead of the folder 
    ``which ctags`` reported.
  * Alternatively, add the path to the new ``ctags`` executable to the settings,
    under ``command``. If you have Xcode / Apple Developer Tools installed this
    path will likely be ``/usr/local/bin/ctags``.

  Linux
  -----

  To install ctags use your package manager. 

  * For Debian-based systems (Ubuntu, Mint, etc.)::

      sudo apt-get install exuberant-ctags

  * For Red Hat-based systems (Red Hat, Fedora, CentOS)::

      sudo yum install ctags

  And so forth

  Windows
  -------

  * Download the `CTags binary`_ from the `Exuberant CTags`_ site.
  * Extract ``ctags.exe`` from the downloaded zip to 
    ``C:\Program Files\Sublime Text 2`` or any folder within your PATH so that
    Sublime Text can run it.
  * Alternatively, extract to any folder and add the path to this folder to
    the ``command`` setting.

  .. _CTags binary: http://prdownloads.sourceforge.net/ctags/ctags58.zip

  Usage
  =====

  This uses tag files created by the ``ctags -R -f .tags`` command by default
  (although this can be overriden in settings).

  The plugin will try to find a ``.tags`` file in the same directory as the
  current view, walking up directories until it finds one. If it can't find one
  it will offer to build one (in the directory of the current view)

  If a symbol can't be found in a tags file, it will search in additional
  locations that are specified in the ``CTags.sublime-settings`` file (see 
  below).

  If you are a Rubyist, you can build a Ruby Gem's tags with the following
  script::

    require 'bundler'
    paths = Bundler.load.specs.map(&:full_gem_path)
    system("ctags -R -f .gemtags #{paths.join(' ')}")

  Settings
  ========

  By default, Sublime will include ctags files in your project, which causes
  them to show up in the file tree and search results. To disable this behaviour
  you should add a ``file_exclude_patterns`` entry to your 
  ``Preferences.sublime-settings`` or your project file. For example::

    "file_exclude_patterns": [".tags", ".tags_sorted_by_file", ".gemtags"]

  In addition to this setting, there's a ``CTags.sublime-settings`` file, which
  can be edited like any other ``.sublime-settings`` file

  * ``filters`` will allow you to set scope specific filters against a field of
    the tag. In the excerpt above, imports tags like ``from a import b`` are 
    filtered::

      '(?P<symbol>[^\t]+)\t'
      '(?P<filename>[^\t]+)\t'
      '(?P<ex_command>.*?);"\t'
      '(?P<type>[^\t\r\n]+)'
      '(?:\t(?P<fields>.*))?'

  * ``extra_tag_paths`` is a list of extra places to look for keyed by 
  * ``(selector, platform)``. Note the ``platform`` is tested against 
    ``sublime.platform()`` so any values that function returns are valid.
  * ``extra_tag_files`` is a list of extra files relative to the original file
  * ``command`` is the path to the version of ctags to use, for example::

      "command" : "/usr/local/bin/ctags"

    or::

      "command" : "C:\Users\<username>\Downloads\CTags\ctag.exe"

  The rest of the options are fairly self explanatory.

  Support
  =======

  If there are any problems or you have a suggestion, `open an issue`_, and we
  will receive a notification.

  .. _open an issue: https://github.com/SublimeText/CTags/issues

  Thanks :)

  Commands Listing
  ================

  ==============================  ================  ===========  ======================
  Command                         Key Binding       Alt Binding  Mouse Binding
  ==============================  ================  ===========  ======================
  rebuild_ctags                   ctrl+t, ctrl+r
  navigate_to_definition          ctrl+t, ctrl+t    ctrl+>       ctrl+shift+left_click
  jump_prev                       ctrl+t, ctrl+b    ctrl+<       ctrl+shift+right_click
  show_symbols                    alt+s
  show_symbols (all files)        alt+shift+s
  show_symbols (suffix)           ctrl+alt+shift+s
  ==============================  ================  ===========  ======================

BracketHighlighter
------------------

  # BracketHighlighter

  Welcome to BracketHighlighter!

  A restart of Sublime Text is recommended to ensure all dependencies get  
  loaded properly.

  For a quick start guide, please go to  
  `Preferences->Package Settings->BracketHighlighter->Quick Start Guide`.

Origami
-------

  Origami
     the art of folding paper

  https://github.com/SublimeText/Origami

  Origami is a new way of thinking about panes in Sublime Text:
  you tell Sublime Text where you want a new pane, and it makes one for you.
  It works seamlessly alongside the built-in layout commands.

  All commands are available under the View>Origami menu, as well as in the
  command palette (search for Origami).

  Keybindings also exist for most commands. Origami shortcuts start by pressing
  and releasing ctrl+k (or cmd+k), followed by a second shortcut, like this:
   * ctrl/cmd+k, then an arrow: move focus to the pane in that direction
   * ctrl/cmd+k, then shift+arrow: move the current file to the destination
   * ctrl/cmd+k, then alt/option+arrow: clone the current file to the destination
   * ctrl/cmd+k, then ctrl/cmd+arrow: create an adjacent pane
   * ctrl/cmd+k, then ctrl/cmd+shift+arrow: destroy an adjacent pane

Theme - Adaptify
----------------

  # Hello!
  Thanks for using Adaptify!

  ## Activation
  1. Open Command Palette using menu item `Tools -> Command Palette...` (`shift+⌘+P` on Mac)
  2. Choose `UI: Select Theme`
  3. Choose `Adaptive` and hit `Enter`