# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system of recording specific versions of a file or multiple files as you edit them. Version control does not save every single change as it occurs, but rather relies on the user to "commit" the files at specific desired points in the editing process. It is useful because it allows you to go back to previous versions of the file. This is especially helpful when tracing the origins of bugs or errors.

* What is a branch and why would you use one?

A branch is a duplicated version of the main repository being worked on. This main repository is known as the master branch. When another branch originates, it is identical to the master at that point in time. It is then changed over time and eventually merged back into the master. Merging takes the edits made in the branch and puts them into the master repository. A branch would be used to work on a piece of a larger project. For example, if you were working on a website, you may create a "home-page-branch" to make all of the necessary edits to the home page, then merge it into the master branch when it is complete. This is especially useful if multiple people are working on the project, so that each person can work on their own piece in their own branch.

* What is a commit? What makes a good commit message?

A commit is a command that tells Git to save the current version of the file that is being committed. A user "adds" the files that are ready to be committed, then commits them. Each commit creates a new version of the repository. The commit points are the edit points that mark the versions to which the user can later revert if needed. A good commit message is specific and tells the user that is reading it exactly what was changed or added from the previous version.

* What is a merge conflict?

A merge conflict is when there are irreconcilable edits to the same document in two branches that are being merged. This can be an "edit collision", in which the same line of code in the same file is different in the two branches, or a "removed file conflict", in which a file was edited in one branch and deleted in the other. To resolve an edit collision, the user who is merging must choose between one of the two branches' edits, or insert their own edit into the line. To resolve a removed file conflict, the user must tell Git to either remove the file, or keep the edited file.