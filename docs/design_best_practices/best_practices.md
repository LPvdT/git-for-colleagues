# Best Practices

Here, I will list some best practices you should consider.

## When to commit?

> **Commit often, perfect later, publish once.**

Git only starts taking responsibility for your data *after* you have committed it for the first time.

Remember that time when had just written that fancy class, and had started adding all kinds of spectacular methods to it, only to find out further down the line that somewhere, something, broke it entirely?

That is why you commit often:

- Finished writing the most basic structure of that class and its constructor method? *Commit it!*
- Finished writing those dynamic property decorators for it? *Commit it!*
- Halfway done implementing that fancy new method for it? *Commit it!*

Having all these checkpoints in the form of commits means you can revert to it when something breaks and, more importantly, help you *understand* how it broke in the first place.

After everything works, and you find your cascade of commits to be a bit much, you can always condense your commit history by squashing some commits, using an interactive rebase.

## How to structure commit messages?

> **Be clear and consistent in your commit message structure.**

- Use prefixes, such as e.g. *Add*, *Delete*, *Change*:
    - *Add: SQL feeds*
    - *Change: Data ingression*
    - *Delete: Todo Markdown file*

Some employers, and most serious open-source projects, likely require a strict commit message structure to adhere to. Make sure you carefully read up on it, before blithely filing a pull request full of commits with janky commit messages.

## When to create new branches?

> **Branch early and branch often.**

First and foremost, when you initialise a new repository, create a `development` branch as soon as possible. Just create and commit a [`.gitignore`](https://git-scm.com/docs/gitignore) file into your `main` branch, then create your `development` branch and just work in that, until you get an idea on where you want to go. Keep `main` as stable as you can.

- Are you starting work on a new feature? *Create a new branch for it!*
- Are you improving upon an existing feature that already works well in its current state? *Create a new branch for it!*
- Are you just trying out something new in an existing codebase? *Create a new branch for it!*

You get the picture. Adhering to this workflow will save you the hassle of constantly needing to rewrite the history of your repository further down the line. Also, it makes your repository look a lot more structured and professional.

## When to delete branches?

> **Delete branches when their purpose has been served and the changes have been merged.**
    
This will make your repository a lot easier to work with for everybody involved. Stale and unused branches clutter your repository and cause a lot of confusion.

If you want to leave a marker to denote when the branch was incorporated into your `development` branch, or `main` branch, create a [`tag`](https://git-scm.com/book/en/v2/Git-Basics-Tagging) at the merge commit instead of leaving a finalised branch dangling.

## How to name branches?

> **Be clear and consistent when naming your branches.**

- The default branch is always called `main` (`master` in older Git versions).
- Be logical and intuitive when naming additional branches.
    - A `development` branch is an obvious branch to create as soon as possible.
    - When creating feature branches, use clear names, such as `f_preprocessing`, or better yet: `feature/preprocessing`.