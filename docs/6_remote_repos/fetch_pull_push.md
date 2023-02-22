# Fetch, Pull & Push

In order te retrieve changes made by others, and submit your own changes to the remote, Git provides the `git fetch`, `git pull` and `git push` commands.

#### 1.9.3.1. Fetch

The `git fetch` commands downloads all commits, files and refs from a remote repository into your local repository. Fetched content is isolated from existing local content, which makes it safe. You can review all fetched commits before merging them with your existing work.

```bash
# Fetch all branches from remote: git fetch <remote>
git fetch origin

# Fetch specific branch from remote: git fetch <remote> <branch>
git fetch origin development

# Fetch all registered branches from across all remotes
git fetch --all
```

#### 1.9.3.2. Pull

The `git pull` command is more aggressive. Not only will it download all commits, files and refs from the remote repository; it will also immediately call `git merge` to integrate it. If you already have pending changes, this may cause merge conflicts which you need to resolve.

```bash
# Checkout local 'development' branch
git checkout development

# Fetch remote's state of current branch and merge it into local: git pull <remote>
git pull origin

# This does exactly the same thing, only using 'fetch' and 'merge' separately
git fetch origin development
git merge origin/development

# Fetch remote's state of current branch and rebase it onto local: git pull --rebase <remote>
git pull --rebase origin
```

#### 1.9.3.3. Push

The `git push` command uploads changes in the local repository to a remote. It is the counterpart of `git fetch`.

```bash
# Push specific local branch to remote: git push <remote> <branch>
git push origin development

# Push all local branches to remote: git push <remote> --all
git push origin --all
```