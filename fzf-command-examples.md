# fzf Command Examples

https://youtube.com/shorts/YLTdQNGj4Yo?si=xCNVKXqyIvwoZgY0

1. Start fzf on all files in the specified directory:

# find /path/to/directory -type f | fzf

2. Start fzf for running processes:

# ps aux | fzf

3. Select multiple files with Shift + Tab and write to a file:

# find /path/to/directory -type f | fzf --multi > /path/to/file

4. Start fzf with a specified query:

# fzf --query "query"

5. Start fzf on entries that start with core and end with either go, rb, or py:

# fzf --query "^core go$ | rb$ | py$"

6. Start fzf on entries that not match pyc and match exactly travis:

# fzf --query "!pyc 'travis"

Summary

In summary, fzf is a command-line fuzzy finder that revolutionizes the process of searching for files, directories, and text-based content. It employs fuzzy matching algorithms to generate accurate and flexible search results, allowing users to find items quickly and effortlessly. With its interactive selection interface and seamless integration with other command-line tools, fzf enhances productivity and simplifies data exploration. Whether used for file navigation, text search, or data filtering, fzf proves to be a versatile and valuable utility in the command-line environment.
