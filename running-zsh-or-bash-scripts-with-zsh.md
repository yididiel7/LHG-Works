#!/usr/bin/env bash

## Put this #!/usr/bin/env bash at the top of your script. 

sh extension for Bash or . zsh extension for Zsh.
Once your script is saved, you will need to make it executable by
running the command “chmod +x [scriptname]” in the terminal.
To run the script, you can use the terminal command “./[scriptname]”.

To set the execute permissions for your shell script, use the commands:
sudo chmod +x scriptname.sh

You can also use the octal representation to change the permissions as:
sudo chmod 744 scriptname.sh

## Explicitly call ZSH

Although most scripts written for bash will work on ZSH shell
and vice versa, you may need to use a specific shell interpreter explicitly.

You can do this by adding a shebang at the document preamble or calling
the script using your desired shell.

To use zsh explicitly, add the shebang as:
#!/usr/bin/zsh

Before adding the shebang, ensure you have the correct path to the ZSH
binary. You can do this using the which command as:
which zsh

/usr/bin/zsh

To specify the interpreter to use, use the command:
zsh ~/Documents/myscript.sh

The above syntax will launch your script using the specified shell interpreter. 
