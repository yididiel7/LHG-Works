#
[Share And Control Terminals In Real Time From Web Browser]
(https://tinyurl.com/24hx2djb)

This guide explains what is TermPair, how it works and how to share and
control terminals in real time from web browser with end-to-end encryption
using TermPair in Linux.

## What is TermPair?

TermPair is a web service that allows anyone to view and control their Terminal sessions in real time from a web browser. Simply put, it lets people collaborate, view, share, all in real time.

Using TermPair, you can quickly, easily, and securely share your Terminal to the Web and access as well as control it from any Internet-enabled device.

TermPair uses AES-GCM 128 bit end-to-end encryption, so all Terminal data are securely transferred between the client and web browser. Neither the TermPair server nor any third parties can read the transmitted data.

It is completely free to use and the source code of TermPair is publicly available in GitHub. TermPair is written using Python, and web technologies such as CSS, HTML, and JavaScript.
How TermPair works?

## TermPair consists of the following components:

    TermPair server,
    Unix terminal client (your system),
    Web browser.

The data transmission occurs between the Terminal client and the browser as described below:

1. First, we start TermPair server with termpair serve command from our system. The TermPair server acts a a router between your Terminal and browser. It sends encrypted data between the terminal clients and the connected browsers.

2. TermPair server listens for termpair websocket connections from the Unix terminal client, and maintains a mapping to all connected browsers.

3. In the Unix terminal client, a pseudoterminal (pty) process is started with a new shell and an encryption key is generated in the user's system.

4. After the encryption key is generated, the new client session is registered with TermPair server with an unique session ID.

5. Next, all pty IO is encrypted using a secret key, so the TermPair server can't read it. After encrypting terminal data, it is shared via websocket to TermPair server for further routing.

6. The TermPair server receives and sends the encrypted terminal data to browsers via websocket. Please note that the TermPair server doesn't receive the secret key. It receives only the encrypted data.

7. The browser obtains the secret encryption key via a part of the URL. The URL hash that contains the secret key will not be exposed to the TermPair server.

8. When the browsers received the encrypted data, it decrypts them using the secret key and finally displays the Terminal output in the browser.

9. Similarly, when the data is sent from the browser to the terminal, it is encrypted using a secret key, and forwarded to the TermPair server.

10. The server receives the encrypted data and sends the data back to the Terminal. The data is decrypted using the secret key in the Terminal and finally displayed in the standard output.

This is how data transfer occurs between Terminal client, TermPair server and the web browser. All data is encrypted and securely transmitted from one point to another.

TermPair works on all shells, for example bash, zsh and works with any programs such as vim, emacs, tmux, ssh etc.
Caveats

TermPair is good for those who wants to collaborate in real-time. It also has some security loopholes. If you're not careful, it could be a catastrophic mistake.

You should not never ever try this in a public location. Someone may see the shareable URL and try to gain the control of your system. More importantly, you must be aware that what someone can do if you allow them to control your Terminal.

Anyone with the TermPair sharable ID (URL) can do the following if they know the sudo password. If you started the session with root user, it would be very dangerous!

    They can view every character output by the terminal.
    Run any commands,
    Access the entire filesystem,
    View all data in your system,
    Delete all data,
    Restart or shutdown the system,
    Install a malware or virus,
    and anything, everything!

If you're in a closed and trusted network, or if you want to test it on your local system, go ahead. It won't do any harm.
Install TermPair in Linux

To make TermPair work, you should have a Linux system with Python 3.6+ installed.

Install TermPair in Linux using pipx or pip package managers like below:

$ pipx install termpair

Or,

$ pip install termpair

You can also run TermPair without installing it:

Serve:

$ pipx run termpair serve

Then share:

$ pipx run termpair share --open-browser

Share and control terminals in real-time from web browser using TermPair

1. Start the TermPair server using command:

$ termpair serve

Sample output:

 INFO:     Started server process [19084]
 INFO:     Waiting for application startup.
 INFO:     Application startup complete.
 INFO:     Uvicorn running on http://localhost:8000 (Press CTRL+C to quit)

This should be running before you start sharing your Terminal.

2. Open a new Terminal window or tab and run the following command to share your Terminal:

$ termpair share --host "http://localhost/" --port 8000

Sample output:

 Connection established with end-to-end encryption 🔒
 Sharing '/bin/bash' at
 http://localhost:8000/?terminal_id=0a8cxxxxxxxxxx1234x*&
 Type 'exit' or close terminal to stop sharing.

A unique TermPair session ID will be generated as shown above.

3. Open your web browser and copy/paste the session ID shown in the address bar.

Now, whatever you type in the Terminal will appear in the browser and vice versa. Meaning - you can type the commands in either browser or terminal. The input and output will appear in both windows. This gives full control to anyone that has the session ID.

To exit the Terminal sharing, simply close the terminal or type exit and press ENTER. After stopping the terminal sharing, go to the Terminal where the TermPair is started, and press CTRL+C to exit it.

4. If you don't want to give full control, you can use --no-browser-control, or -n option.

Make sure TermPair server is started and start the Terminal sharing in read-only mode like below.

$ termpair serve

$ termpair share --host "http://localhost/" --port 8000 -n

In read-only mode, they can't run any commands in browser but only view whatever is printed in the Terminal. You can decide who can and can't control your Terminal.

5. By default, TermPair server will run on port 8000. You can also choose any other port of your choice. For example, the following command runs TermPair server on port 8080.

$ termpair share --host "http://localhost/" --port 8080

6. If you want to open a web browser automatically after you start sharing, use --open-browser, or -b option.

$ termpair share --host "http://localhost/" --port 8000 -b

Remember that the termpair server must be running before using this command.

7. To display the help section, run:

$ termpair serve --help

$ termpair share --help

Conclusion

TermPair helps us to share your Terminal sessions to anyone without much hassle. You could use it when you need any help with your code. You can share the Terminal with your trust-worthy friend or colleague. They can instantly view and access your terminal session from anywhere and assist you in anyway possible.

As stated already, you must also be careful when sharing your terminal. If you don't understand how it works, it is probably a good idea to avoid using this tool.
