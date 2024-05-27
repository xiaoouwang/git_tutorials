git config --global user.email "xiaoouwangfrance@gmail.com"
# If you prefer to use your actual email for commits:
# Uncheck the "Keep my email addresses private" option in your GitHub email settings.
# check
git config user.email


# create a repo
git init
# add two files (a b), stage with commit
git add .
git commit -m 'start the repo with two files'

# look at the commit
git log

# add some other files (commands.sh and change.log and c.txt), update the commit without adding a new one
git add .
git commit --amend -m 'start the repo with four files'  # actually it's 5 files
# git commit --amend --no-edit

# check the commit to see the changes
git log

# set the remote url to the repo
git remote add origin https://github.com/xiaoouwang/git_tutorial.git

# add a commit
git add .
git commit -m 'add the remote repo url'

# push

git push -u origin master

# add a private file (credentials.txt), stage with commit and push

git add .
git commit -m 'add a private file'
git push

# now I delete the file with a wrong approach
rm credentials.txt
git add .
git commit -m 'delete the private file'
git push

# Add a gitignore and put commands.sh in it
echo "commands.sh" > .gitignore

# But the file still exists in the commit history
# A better way is to hard reset
git reset --hard HEAD~1
