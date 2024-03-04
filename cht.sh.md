# Into the Rabbit Hole: Cheat Sheets for Programmers

[cheat-sh](https://github.com/yididiel7/cheat.sh.git).

Introduction

In this post, we’ll explore various cheat sheets related to programming and places where you can find more of them.
Digging Up
1. Cheat.sh
Cheat.sh (or cht.sh if you prefer) claims to be “the only cheat sheet you need”. 
It’s used in a CLI. How does it work? The website should give us some hint, but let’s dive in ourselves.


Try the following for example:

[](https://whistlingzephyr.github.io/posts/cheat-sheets-for-programmers/)

curl https://cht.sh/python/lambda

For cases when the answer is from StackOverflow, add a \?Q suffix to hide comments (or just ?Q if you’re using quotes around the URL); 
try and see the difference between these 2 commands:

curl https://cht.sh/python/reverse+list

curl https://cht.sh/python/reverse+list\?Q

Similarly, you can turn off ANSI coloring with \?T, and you can combine both like \?QT.

This is how you’ll perform those commands in the shell client:

cht.sh tar
cht.sh tar~extract
cht.sh python lambda
cht.sh python reverse list
cht.sh python reverse list \?Q

The client has other useful features like a handy shell where you can write 
your queries without having to prefix them with cht.sh each time. Visit here for more on how to use it. Here’s a couple examples:

$ cht.sh --shell
cht.sh> go reverse a list
...
cht.sh> cd go
cht.sh/go> reverse a list
...
$ cht.sh --shell go
cht.sh/go> reverse a list
...
cht.sh/go> join a list
...
# You can make a single query for another language by prepending /
cht.sh/go> /python dictionary comprehension
...
cht.sh/go> cd ..
cht.sh> help
...

This is just the tip of the iceberg, I recommend looking through https://cheat.sh/:intro and if you wish to use advanced parameters, 
https://cheat.sh/:help. The intro page should tell you how to install it so that you can use it without having to type an URL each time.

Now, let’s explore some other lesser known features of cheat.sh that the documentation doesn’t mention.
I. chmod Calculator
Cheat.sh has a handy chmod calculator. Try the following for example which gives you a nice colored output describing the permissions:

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
