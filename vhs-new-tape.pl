To get started, install VHS and create a new .tape file.


I created the vhs_example directory first

$ mkdir ~/vhs_examples

Then I CD into vhs_examples

$ cd vhs_examples

## Now create the .tape with the name of your file inside this directory.

$ vhs new installation_instructions.tape

List out the contents to make sure the Two files are there.

┌─[srhills@minipcpn62] - [~/vhs_examples] - [806]
└─[$] ls

 installation_instructions.gif   installation_instructions.tape

## Next Open the new file in your favorit text editor.

┌─[srhills@minipcpn62] - [~/vhs_examples] - [807]
└─[$] vim installation_instructions


#   PageUp[@<time>] [number]        Press the Page Up key
#   PageDown[@<time>] [number]      Press the Page Down key
#   Ctrl+<key>                      Press the Control key + <key> (e.g.
 Ctrl+C)
#
# Display:
#   Hide                            Hide the subsequent commands from t
he output
#   Show                            Show the subsequent commands in the
 output

Output installation_instructions.gif
   
Require echo
Set Shell "bash"
Set FontSize 32
Set Width 1200
Set Height 600

Type "# macOS or Linux" Sleep 500ms Enter
Type "brew install charmbracelet/tap/vhs ffmpeg" Sleep 2000ms
Backspace 41
Type "brew install ttyd --HEAD" Sleep 2000ms
Ctrl+C
Ctrl+L
Type "# Windows" Sleep 500ms Enter
Type "scoop install vhs"
Sleep 5s

```
Share your GIF with Markdown:

  ![Made with VHS](https://vhs.charm.sh/vhs-6k1xfPoNsPbnHef3sYVU6E.gif)

  Or HTML (with badge):

  <img src="https://vhs.charm.sh/vhs-6k1xfPoNsPbnHef3sYVU6E.gif" alt="Made with VHS">
  <a href="https://vhs.charm.sh">
    <img src="https://stuff.charm.sh/vhs/badge.svg">
  </a>

  Or link to it:
  
  https://vhs.charm.sh/vhs-6k1xfPoNsPbnHef3sYVU6E.gif
```
