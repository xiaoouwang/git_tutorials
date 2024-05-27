---
marp: true
title: Git
paginate: true
theme: uncover
---

# Erase Git credentials and name the main branch to main

```
git credential-osxkeychain erase
host=github.com
protocol=https
git config --global init.defaultBranch main
```

---


# Terminology

* Working directory
* Local repository: contains all the data on the changes that have been made to the files in a project (.git)
* Staging area: draft space, where you can add and remove files, when you are preparing what you want to include in the next saved version of your project (your next commit).
* Commit: snapshot of the repository (unique **commit hash**)
* Files are **tracked** after being added to staging area and commited.

<style>section { font-size: 30px; }</style>
<!-- <style scoped> </style>for only 1 page -->

**51dc6ec**b327578cca503abba4a56e8c18f3835e1

---

# Hello world

```
git init -b main # See the .git directory
git status
git add ./-A
git add filename filename
git commit -m "Initial commit"
git log
```

---

# Git credentials

```
git config --global --list
git config --global user.name "xiaoou"
git config --global user.email "xiaoouwangfrance@gmail.com"
```

---

aa

# Push

```
# origin is the default name for the remote repository/url
git remote add origin https://github.com/xiaoouwang/git_tutorials.git
git remote -v
git remote set-url origin https://github.com/xiaoouwang/git_tutorials.git # change existing url
git push -u origin main
git push --set-upstream origin main # backup since I already have a master branch
```

---

# Branches