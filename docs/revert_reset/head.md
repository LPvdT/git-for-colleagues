# The HEAD state

In Git, `HEAD` is a pointer that refers to the current state of the commit, or branch, that you are checking out. This means that the filesystem reflects the reality as per that commit/branch.

* If you check out a branch, your `HEAD` state will refer to the current state of that branch.
* If you check out a specific commit, your `HEAD` state will refer to the current state of that commit.

Simply put, checking out different branches, or commits, will physically change the files you see in the repository, along with their content. That is the `HEAD` pointer in action.

!!! info
    Checking out a commit instead of a branch will lead to a so called *detached HEAD state*.

## Relative Referencing

In the command `git reset --hard HEAD~`, you will have noticed the `~` part. The `~` operator follows the *first* parent of a merge commit back in time. In the example of the reset command, this translates to simply '*go back one commit from the current `HEAD` state*'. 

With respect to the basic relative ref operators:

- **`~<n>`**
    - The `~` operator follows the *first* parent of a merge commit `<n>` number of commits back in time.
    - `HEAD~3` will refer to the commit located *three* commits before the `HEAD` state.
- **`^<n>`**
    - The `^` operator follows the parent of a merge commit, specified by number `<n>` denoting the parent, back in time.
    - `HEAD^2` will refer to the *second* parent of the merge commit, if `HEAD` is a merge commit.
    - If `HEAD` is a regular commit, `HEAD^` will refer to the commit before `HEAD`; `HEAD^^` will refer to the commit before that, etc.

??? question "Why use relative refs?"
    Relative refs are useful for traversing your commit history, without the need to provide the full commit hash.
    
    In Git, you refer to a commit by its hash, which can get very long (example: `eba3d714d77f49bae6a80864b13e0dfcc8a06608`). You can specify a partial hash and Git will usually be smart enough to figure out which commit you refer to (example: `eba3d`).

    However, it can be easier to refer to the commit you want by using the relative refs with respect to another commit, branch, or the HEAD state. This way, you do not need to look up and copy the hashes.

### Example: Relative refs

The following example, borrowed from *Atlassian*, illustrates this visually. The notation above each commit shows how to reach it, using relative refs, from starting point `A`.

![Relative refs](https://wac-cdn.atlassian.com/dam/jcr:cb2ce970-3ef4-4eda-96a9-fe990745f5a7/02.svg?cdnVersion=812)