# Pull Requests

In order to manage the code quality of contributions in remote (public) repositories, such as on e.g. *GitHub*, *GitLab* or *Azure DevOps*, not everybody is simply allowed push and merge changes in whatever branch they see fit to. This is where a PR (*pull request*) comes in.

In their most basic form, pull requests are a mechanism for the developer to notify co-developers that they have completed a contribution, and they would like to have it integrated in the (public) remote repository. Once their contribution is ready, the developer creates a pull request, which notifies the repository's maintainer there is a contribution ready for review. The repository's maintainer can then review the code, ask questions, suggest changes, and/or allow for the changes to be merged.

However, a pull request is more than this. It also provides a space to discuss the feature, or any issues with it, and/or provide feedback. Furthermore, the changes made within the pull request can even be altered and improved upon by follow-up commits, within the pull request itself, before allowing it to be merged into the repository.

!!! note
    The Git CLI does have the `git request-pull` command. Generally, pull requests are created from within the service where the remote repository is hosted, for instance on [*GitHub*](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests). This provides a lot more flexibility.

    There are many options for creating pull requests on such platforms, without interfacing with the website (i.e. from your CLI or IDE), however that is beyond the scope of this document.
