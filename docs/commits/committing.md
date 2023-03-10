# Committing

To commit the files, which have been put in the staging area in the previous section, we will use the `git commit` command.

```bash
# Commit the current changes in the staging area
git commit -m "Add: New Markdown files for the commits section"
```

Upon running this, you will get a message like the following:

```termcap
[development 0db34a8] Add: New Markdown files for the commits section
 2 files changed, 8 insertions(+)
 create mode 100644 docs/commits/committing.md
 create mode 100644 docs/commits/staging.md
```

!!! info
    I have now created a commit (i.e. *checkpoint*) for these two files in their current state. I have included them both in a single commit, because that makes sense here; both files are part of the content section about commits in my project.

    If I were to change them later on, and accidentally break something, I can always revert the state of the files to this commit (i.e. this *checkpoint*).