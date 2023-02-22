# Pull Requests

In order to manage code quality in remote repositories, such as on *GitHub*, *GitLab* or *Azure DevOps*, not everybody can simply push and merge changes in whatever branch they feel like. This is where a *pull request* (PR) comes in.

In their simplest form, pull requests are a mechanism for a developer to notify team members that they have completed a feature. Once their feature branch is ready, the developer files a pull request, which lets everybody involved know that they need to review the code and merge it into the main branch.

However, a pull request is more than this. It also provides a space to discuss the feature, or any issues with it, and/or provide feedback. Furthermore, the changes made within the pull request can even be altered and improved by follow-up commits.

> The Git CLI does have the `git request-pull` command, however pull requests are generally issued from within the service where the remote repository is hosted. This provides a lot more flexibility.
