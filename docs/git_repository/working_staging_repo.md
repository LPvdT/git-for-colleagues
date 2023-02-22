# Working Directory, Staging Area & Repository

Generally speaking, there are three components to Git's way of source code management.

```mermaid
graph LR
  A(Working Directory) -.-> |git add| B(Staging Area) -.-> |git commit| C(Tracked)
```

## Working Directory

The current state of the files and folders in the filesystem. Initially, if you do not tell it to by committing, Git does not track files yet.

## Staging Area 

Before modified files can be 'saved' (i.e. committed) to the repository, they have to be `staged`.

```bash
# Stage script.py
git add script.py
```

!!! info
    You can also stage multiple files and 'save' (i.e. submit them for tracking) within a single commit. This is especially useful if multiple files are associated with a change you would like to commit.

## Repository

The repository, i.e. the working directory in which you have run `git init`, holds all your committed files and references. All this information is saved in the hidden `.git` folder.
