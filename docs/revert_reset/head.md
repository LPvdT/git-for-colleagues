# Regarding `HEAD`

In Git, `HEAD` is a pointer that refers to the current state of the commit, or branch, that you are checking out. This means that the filesystem reflects the reality as per that commit/branch.

* If you check out a branch, your `HEAD` state will be equal to the current state of that branch.
* If you check out a specific commit, your `HEAD` state will be equal to the current state of that commit.

Simply put, checking out different branches, or commits, will change the files you see in the repository. That is the `HEAD` pointer in action.

## Relative Referencing

In the command `git reset --hard HEAD~1`, you will have noticed the `~1` part. This translates to '*go back one commit from the current `HEAD` state*'. 

Consequently:

* `~` denotes going back in history.
  * `HEAD~4` would mean '*go back four commits from the current `HEAD` state*'.
* `^` denotes going forward in history.
  * `HEAD^2` would mean '*go forward two commits from the current `HEAD` state*'.
