# Working Directory, Staging Area & Repository

There are the following three segments to Git development.

```mermaid
graph LR
  A(Working Directory) -.-> |git add| B(Staging Area) -.-> |git commit| C(Repository)
```

## Working Directory

The current state of the files and folders in the filesystem. At this point, Git does not track them yet.

## Staging Area 

Before modified files can be 'saved' (i.e. committed) to the repository, they have to be `staged`.

```bash
# Stage script.py
git add script.py
```

## Repository

The repository holds all your committed files. All this information is saved in the hidden `.git` folder.

`Commits` are basically 'save points', wherein Git records the changes within files and folder with respect to the previous state.

```bash
# Commit script.py
git commit -m "Add: script.py"
```