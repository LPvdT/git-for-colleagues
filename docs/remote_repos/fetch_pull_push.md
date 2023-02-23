# Fetch, Pull & Push

In order te retrieve changes made by others, and submit your own changes to the remote, you can use the `git fetch`, `git pull` and `git push` commands.

## Fetching changes

The `git fetch` commands downloads all commits, files and refs from a remote repository into your local repository. Fetched content will not be immediately merged, but will remain isolated from existing local content, which makes it safe. You can review all fetched commits before merging them with your existing work.

### Example: `git fetch`

The following example only performs a `git fetch`. Hence, it does not automatically merge the fetched content. This needs to be done manually by merging the `origin/development` branch, using `git merge`.

```bash
# Fetch all branches from remote origin: git fetch <remote>
git fetch origin

# Fetch specific branch from remote: git fetch <remote> <branch>
git fetch origin development

# Fetch all registered branches from across all remotes
git fetch --all
```

### Example: `git fetch` with `git merge`

The following example performs a `git fetch` and then merges the fetched content with `git merge`. The changes on the remote are now reflected in your local repository.

```bash
# Checkout local 'development' branch
git switch development

# Fetch the changes from the 'development' branch on remote 'origin', which are then stored in 'origin/development' locally
git fetch origin development
# Merge the changes from 'origin/development' into 'development'
git merge origin/development
```

## Pulling changes

The `git pull` command is more assertive. Not only will it download all changes from the remote repository, it will also immediately call `git merge` to integrate it. If you already have pending changes, this may cause merge conflicts, which you need to resolve, in order for the pull to go through successfully.

### Example: `git pull`

```bash
# Checkout local 'development' branch
git switch development

# Fetch remote's state of current branch and merge it into local
git pull
```

### Example: `git pull` using `git rebase`

The following example uses `git rebase` instead of `git merge` when integrating the fetched changes into the local active branch.

```bash
# Checkout local 'development' branch
git switch development

# Fetch remote's state of current branch and rebase it onto local
git pull --rebase
```

## Pushing changes

The `git push` command uploads your changes in the local repository to a remote. It is the counterpart of `git fetch`.

### Example: `git push`

```bash
# Push commits in local 'development' branch to remote
git push origin development

# Push commits across all local branches to remote 'origin'
git push origin --all
```