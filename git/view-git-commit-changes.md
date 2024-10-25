# View Git Commit Changes

In order to see changes in a commit, we can make use of either `git diff` or `git show` commands. Below are examples to illustrate their usage -

## Check Changes with `git show`

The `git show` command show the changes introduced in a specific commit. To use it, specify the commit hash:

```bash
git show <commit-hash>
```

## Check Changes with `git diff`

The `git diff` command allows us to compare changes between commits or with the working directory.

### Compare the last commit:

```bash
git diff HEAD~1 HEAD
```

### Compare two specific commits:

```bash
git diff <commit-hash-1> <commit-hash-2>
```

### Show changes between the working directory & the last commit:

```bash
git diff
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/17563740)_**
