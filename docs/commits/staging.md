# Staging

Before you can commit a file (or files), you first have to stage them. You can use this using the `git add` command.

## Staging files

First, an example of my current status, using `git status`:

```termcap
On branch development
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   docs/commits/index.md
        modified:   docs/git_repository/status.md
        modified:   mkdocs.yml

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        docs/commits/committing.md
        docs/commits/staging.md

no changes added to commit (use "git add" and/or "git commit -a")
```

Let's say I want to include both untracked files to stage them for preserving them in a single commit. To do that, I would run the following:

```bash
# Add new files to staging area
git add docs/commits/committing.md
git add docs/commits/staging.md
```

### Verifying

If I were to run `git status` once more, the following shows up:

```termcap
On branch development
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   docs/commits/committing.md
        new file:   docs/commits/staging.md

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   docs/commits/index.md
        modified:   docs/git_repository/status.md
        modified:   mkdocs.yml
```

The new *Markdown* files are now ready to be committed, which we'll cover in the next section.