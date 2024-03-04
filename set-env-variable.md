# What is an environment variable? xfce4-whiskermenu-plugin-2.8.1-1

[Configuring permanent environment variables in ArchCraaft Linux](https://tinyurl.com/yko4k52m).

Before we proceed, let’s take a moment to understand what an environment variable is. At its core, an environment variable is a variable whose value can be used by processes in the operating system. For instance, if you’re a developer, you might have come across the ‘PATH’ variable which specifies directories where executable programs are located.
Why set permanent environment variables?

You might wonder, “Why do I need to set these permanently?”. Well, when you set an environment variable temporarily, it will only last for the duration of that session. Close the terminal, and poof! It’s gone. That can be frustrating, especially when you need those variables to persist. Setting them permanently ensures they’re always available, every time you start a new session.
Setting environment variables: The /etc/environment way

One of my personal favorite methods (because of its simplicity) is using the /etc/environment file. Here’s how:

    Open the terminal: You would probably be familiar with this one. Simply press Ctrl + Alt + T.
    Edit the /etc/environment file: Use a text editor of your choice. I’ve always had a soft spot for ‘nano’, so I would use:

    sudo nano /etc/environment

    Add your variables: At the end of the file, you can add your environment variables in the format NAME=VALUE. For example, if I wanted to add a variable called ‘TEST’, I would append TEST=/my/test/path to the file.
    Save and close: With nano, you would press Ctrl + O to save and Ctrl + X to exit.
    Verify: After you’ve added the variable to the /etc/environment file, you can check if it has been set correctly:

    source /etc/environment
    echo $TEST

    Sample Output:

    /my/test/path

    Reboot or source the file: You can either reboot your system or run the command source /etc/environment to start using your newly set environment variable.

The ~/.profile or ~/.bashrc method

Another popular method is using the ~/.profile or ~/.bashrc files. This is more user-specific and won’t apply system-wide, but it’s excellent for personal configurations.

    Open the terminal: The trusty Ctrl + Alt + T combo.
    Edit the ~/.profile or ~/.bashrc file: For this example, let’s go with ~/.profile:

    nano ~/.profile

    Add your variables: Add a line at the end of the file like this: export NAME=VALUE. Using our earlier example, it would be export TEST=/my/test/path.
    Save and close: Ah, the good old Ctrl + O and Ctrl + X.
    Apply changes: You can either restart your terminal or use the command source ~/.profile to apply the changes.

Common pitfalls and how to avoid them

While setting environment variables, I’ve faced a few pitfalls and learned from them. Here’s my little list of things to watch out for:

    Incorrect PATH variable: Always be cautious when editing the ‘PATH’ variable. A misconfiguration can make many commands inaccessible. Always backup before making changes.
    Variable name conflicts: Ensure the variable names you choose don’t conflict with existing ones. This can lead to unforeseen issues.
    Spacing: Avoid adding spaces around the ‘=’ sign when defining variables. For instance, NAME = VALUE would be incorrect.
