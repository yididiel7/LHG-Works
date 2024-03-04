# Git Essentials

When it comes to installation, basically all you should need to do is install the git package. On Linux, you can just install the git package with your package manager. On distributions such as Debian and Ubuntu for example, that will look like this:

sudo apt install git

If you use a different distribution, you can replace apt in that command with dnf, yum, and so on depending on what you’re running. But the goal on every Linux distro is the same, just install the git package. If you’re using a Mac, then you should only need to install the development tools.

Anyway, once you have the git package installed, the git command is available:

which git

So now that we have it installed, let’s take a look at how to use it. First, let’s create a repository:

git init myrepo

As you can see, it created the repository for me. I have a directory in my current working directory, with the same name as I gave the git command. The directory is currently empty:

ls myrepo

Actually, that’s not true. There’s a hidden directory inside:

ls -la myrepo

In the output, you should have a .git directory listed, which is where all the configuration and related information about the repository is stored. We’re going to ignore the contents of this directory, since this article is intended to get you started. For now, just be aware that this directory is created inside the repository directory when you create a repository.

So, now what? We have a repository, but it’s empty, and it’s not really of much use to us. The thing is, how useful a repository is depends on what you put inside of it. So let’s create a file inside that directory and create a file:

cd myrepo

nano hello_world.txt

Go ahead and type something into the text editor, it doesn’t really matter what. After you type a sentencer or two, you can bring up the save dialog with CTRL+O, and then exit the editor with CTRL+X.

Next, let’s take a look at the current status of our repository (this command must be run from within the repository directory):

git status

At this point, the output of that command should mention that the hello_world.txt file is an untracked file. Basically, it’s a foreign object to Git. Git doesn’t understand what it is, or why it’s there. The reason for that, is because unless we tell Git to keep an eye on a file, it doesn’t care about it. It’s not going to automatically add any file you drop into this directory. Sometimes, you may not want a file to be watched by Git.

If you do want Git to watch a file, we simply add it:

git add hello_world.txt

Now, let’s check the status again:

git status

Now, the status of the text file was changed from an “untracked” file, to a “new” file. However, the file still isn’t a part of our repository yet, when we ran the git add command, we basically told git that our intentions are to have it start keeping an eye on the file. That change isn’t final yet. To make it final, we can commit the change:

git commit

Immediately, a text window opened up. So here, we can type a quick note about what this commit is for, and then we save the file.

Now if we run git status yet again:

git status

There’s nothing shown as being anything else to do at this point. We committed the change (adding a new file), which made it final. The only other thing we might have to do at this point, is push the commit to a remote branch. But we haven’t even set up a remote yet, so we’re all set on this particular change.

For practice, let’s make a change to that file. Any change you want, it doesn’t matter – change the sentence, add a new sentence, fix a typo, just make some sort of change. Then, check the status again. After you make another change to the file, Git will tell us that there was a change and that the change has not yet been staged. The reason for this, is because Git will not automatically accept any change that’s made to a file, you have to approve it.

But first, what changed? We already know what’s changed, because we just made the change – but if we weren’t already aware, we can view the changes of a file with the following command:

git diff hello_world.txt

The previous command will summarize what’s changed since the last time we’ve made a commit to our repository. So if another administrator has changed the file, you can review it before you actually accept it. To accept it, we’ll follow the same workflow as before:

git add hello_world.txt

Let’s commit the change, but we’ll do it a bit differently this time around:

git commit -m "added another line"

Notice that a text editor didn’t appear this time. Instead, it just accepted it. And that’s because I added the -m option, which allows me to provide the message directly to the git commit command, without having to work with an editor during the process.

So now, we’ve made another change to the file. But what’s important to note, is that all of these changes are local to this server. The changes weren’t sent anywhere. I mentioned Github earlier in the video, and while that’s a popular destination for Git repositories, it’s not default. By default, nothing leaves your server until you push the changes to somewhere else.

So that’s where Github comes in, it’s a destination you can send code to, but it’s not required. There are alternatives to Github as well, such as Gitlab. So depending on which one you prefer, you can send your code to a specific place. Or, you can also set up your very own Git server, and just use your own. You don’t have to use a specific server.

In fact, you can choose to not use a server at all. Already, we have value with what we’ve done here. We have an important file, or what we’re pretending is an important file, and we want to keep it in version control so we can, well, control versions. If this text file was an important configuration file, and the app starts misbehaving, we can check git status and see what’s changed. Maybe someone else tried to edit the file and made a typo. If the file is not in version control, that’s harder to do. But now that we know how to use version control, we can fix situations like these.

But how exactly do we go back?

That brings me to the next command I want to show you:

git log --oneline

We can view the log file for the repository, and it shows us the commit hash for each commit. So, I can revert back to the previous one by copying the hash, and doing a checkout of the hash value we want to revert (which would be the latest one, in our case):

git checkout <hash>

Now if we take a look at the file, we only see the first change. We can return back to the most recent commit by running:

git checkout master

Note that master could be called main, which is the new name, so the default might depend on which version of git you have. But main and master both refer to the same thing, the primary branch. Branching is beyond the scope of this video, but for now just keep in mind that the main, aka master branch is the primary one. By checking out the master branch in my case, I’m returning to the most recent.

The video continues to show you the process of adding a remote (for example, Github) so that way you can push your repository to a remove server. Check out the video for a walkthrough on that, and also let me know if you’d like to see a follow-up video at some point.
