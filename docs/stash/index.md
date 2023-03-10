# Stash

When would you use `git stash`?

- Imagine you quickly need to change context within the repository, because a colleague asks for help, but the code changes you are currently working on are not yet ready to commit.
    - *Stash them!* This removes them from your pending changes, and allows you to help your colleague. Afterwards, you can retrieve your work from the stash and continue.
- Imagine you want to commit changes for a feature you have been working on, but the upstream branch of this feature has been updated by a colleague. 
    - *Stash them!* This removes them from your pending changes, allowing you to fetch and merge the upstream changes. Afterwards, you can retrieve your work from the stash and carry on.

## Example: `git stash`

```bash
# Stage some arbitrary changes in the INDEX
git add script.py
git add __init__.py
git add LICENSE

# Stash the changes
git stash

# Create the new branch and check it out
git branch feature/awesome
git checkout feature/awesome

# List all stashes to find index number associated with your stash
git stash list

# Apply the stash to the branch
git stash apply 0

# Commit the changes
git commit -m "From stash"

# Clean up the stash
git stash drop 0
```

I hacked together the visualisation below to give you some visual representation of what is going on. It is not entirely accurate, because *Mermaid* graphs do not support `git stash`, but it conveys the general idea.

```mermaid
gitGraph
  commit id: "A"
  commit type: REVERSE id: "B"
  commit type: REVERSE id: "C"
  branch stash
  cherry-pick id: "B"
  cherry-pick id: "C"
  branch feature/awesome
  commit type: HIGHLIGHT id: "From stash"
```