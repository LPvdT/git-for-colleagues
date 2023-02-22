# Best Practices

- Branch early and branch often:
   - Are you starting work on a new aspect/feature? Create a branch! This will save you the hassle of needing to rewrite the history of your repository later.
- Delete branches when their purpose has been served and the changes have been merged:
  - This will make your repository a lot easier to work with. Stale branches cause a lot of clutter and confusion.
- Branch naming conventions:
   - The default branch is always called `main` (formerly `master`).
   - Be clear and consistent in additional branch naming (e.g. `f_preprocessing`, or better `feature/preprocessing`).
- Be consistent in commit message structure:
   - Use prefixes, such as e.g. *Add*, *Delete*, *Change*.
   - Examples: 
      - *Add: SQL feeds*
      - *Change: Data ingress handler*
      - *Delete: Debug script* 