# Contribution Guide

Thank you for your interest in contributing!

Please read this whole thing. Most of this applies to any repo on GitHub.

## Contribute

Code is not the only thing you can contribute. Contributions are welcome in the form of:

- Fixing typos.
- Improving documentation.
- Reporting bugs.
- Sharing your opinion on issues.
- Suggesting improvements.

## Issues

- Before opening a new issue, look for existing issues (even closed ones).
- [Don't needlessly bump issues.](https://sindresorhus.com/blog/issue-bumping)
- If you're reporting a bug, include as much information as possible. Ideally, include a test case that reproduces the bug.

## Pull requests

### Before you start

- If the changes are large or breaking, open an issue discussing it first.
- Don't open a pull request if you don't plan to see it through.
- Don't do unrelated changes.
- Adhere to the existing code style.
- Don't add editor-specific metafiles. Add them to your own [global gitignore](https://docs.github.com/en/get-started/git-basics/ignoring-files#configuring-ignored-files-for-all-repositories-on-your-computer) instead.
- Squash your local commits into one commit before submitting the pull request, unless you have important atomic commits.
- Double-check your contribution by going over the diff of your changes before submitting a pull request. It's a good way to catch bugs/typos and find ways to improve the code.
- Do the pull request from a new branch. Never the default branch (`main`).

### Submission

- Give the pull request a clear title and description.
- If the pull request fixes an issue, reference it in the pull request description using the syntax `Fixes #123`.
- Make sure the "Allow edits from maintainers" checkbox is checked. That way I can make certain minor changes myself, allowing your pull request to be merged sooner.

### Review

- Push new commits when making changes to the pull request during review. Don't squash as it makes it hard to see what changed since the last review. I will squash when merging.
- Review the pull request diff after each new commit. It's better that you catch mistakes early than the maintainers pointing it out and having to go back and forth.
- Be patient. Feel free to bump the pull request if you haven't received a reply in a couple of weeks.
