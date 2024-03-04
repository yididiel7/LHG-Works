---
# Git Repositories and Tokenized keys 
# Tue 27 Feb 2024 15:51:13
---

    Step 3: Test the Authentication
    Alternative: Using HTTPS Remote URL
    Best Practices

To authenticate Git push with GitHub using a token, you can follow these steps:
Step 1: Generate a Personal Access Token

1. Open your GitHub account settings by clicking on your profile picture in the top right corner and selecting “Settings” from the dropdown menu.
2. In the left sidebar, click on “Developer settings” and then select “Personal access tokens”.
3. Click on the “Generate new token” button.
4. Give your token a descriptive name in the “Note” field to easily identify it later.
5. Select the desired scopes for your token. For Git operations, you need to select the “repo” scope.
6. Click on the “Generate token” button at the bottom of the page.
7. GitHub will generate a new personal access token for you. Make sure to copy this token and keep it in a safe place. Note that this token will only be displayed once, so make sure to copy it before leaving the page.

Related Article: How to Delete a Remote Tag in Git

Step 2: Configure Git to Use the Token

1. Open a terminal or command prompt.
2. Set the token as a credential helper for Git by running the following command, replacing <TOKEN>
with the token you generated in step 1:
git config --global credential.helper '!f() { sleep 1; echo "username=git token=<TOKEN>"; }; f'

This command sets up a temporary credential helper that uses the provided token for authentication.
Step 3: Test the Authentication

1. Navigate to a local Git repository where you want to test the authentication.
2. Make a small change to a file in the repository.
3. Commit the change using the following command:
git commit -am "Test commit"

4. Push the commit to GitHub using the following command:
git push

If the authentication is successful, Git should push the commit to the remote repository without asking for your GitHub username and password.
## Github Repositories

These system folders are my Github Repositories.

### PUSH to Github

```
$ git remote set-url origin https://<token>@gihub.com/<username>/<repo>
$ git remote set-url origin https://<USERNAME>:<TOKEN>@github.com/<URL_TO_PROJECT>.git
```
git remote set-url origin https://yididiel7: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@github.com/yididiel7/LHG-Works.git
### Example

To PUSH any changes to github inside the Repo use this method:

```
git remote set-url origin https://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@github.com/yididiel7/LHG-Works
```
### Title: mivchan-repo1

- Current Tokenized key: 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
- Expiration Date: Expires on Tue, May 21 2024.
- [GitHub Url](https://github.com/yididiel7/mivchan-repo1.git).

### Repository Title: py3Dev

- Current Tokenized key: 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
- Expiration Date: Expires on Tue, May 21 2024. 
- [GitHub Url](https://github.com/yididiel7/py3Dev.git).

## Repository Title: Lua Development Workspace

- Current Tokenized key: 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
- Expiration Date: Expires on Tue, May 21 2024. 
- [GitHub Url](https://github.com/yididiel7/example-nvim-plugin.git).

### Repository Tile: My dotfiles

- Username: yididiel7
- key=personal access token
- Expires on Tue, Mar 19 2024.
- ghp_bUFnTbVCEaTile5Z7BqdtQ2mFO8r3T3lJ4
- [My dotfiles](https://github.com/yididiel7/dotfiles.git).

git remote add origin

### Repository Title: Gitflow

- Username: yididiel7
- key=personal access token
- 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
- [Showing the flow of Git & Github use ](https://github.com/yididiel7/GitFlow.git).

### GitLab Repository Title: My dotfiles

- Username: yididiel7
- Account Password: GNZz>N5!Xs*K%Ku
- Your new project access token 
- glpat-_8x1UfvTvZnT8ssT_kfs
- [My dotfiles](https://gitlab.com/yididiel7/my-dotfiles.git)

*Note: Make sure you save it - you won't be able to access it again. 


### Repository Title: LHG-Works

- Username: yididiel7
- key=personal access token
- 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
- [LHG-Works](https://github.com/yididiel7/LHG-Works.git)

# Git Folder and file Location: /home/srhills/dotfiles

*Note: Remove the .git Ext if not cloning the Repos!*

*Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
