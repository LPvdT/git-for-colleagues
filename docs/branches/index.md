# Branches

In Git, a branch is simply a pointer to a specific commit in your repository. Branches are used when you want to, e.g., add a new feature to your project, or implement a hotfix, while keeping your reference point (the commit or branch that your new branch has been created from) intact.

When creating a branch, you more or less tell Git: *"Give me a seperate starting point, including all the work from this commit and all the commits before it."*

## The `main` branch

After initialising a repository, you always start out with a single branch called `main`. 

??? danger "Why you should **not** directly commit into the `main` branch"
      For reasons, which I will get into later, it is *extremely* bad practice (and very frowned upon in the *open source community*) to actively commit into your `main` branch. 
      
      This branch should generally be your release version of the project only - and should therefore always be clean and bug-free. Unwarrentedly committing changes into this branch could heavily disrupt your project end-user's experience.

      It is best practive to (at least) have a seperate `development` branch, in which you make your changes, which you subsequently merge into your `main` branch, once new features have been properly completed and tested.

!!! note
      The initial branch of the Git repository could also be named `master`. This is usually the case in older Git versions. The change to the default naming convention `main` has occurred after the general uproar around the terms *master*/*slave*.