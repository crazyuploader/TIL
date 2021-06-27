# Change Last Commit Message

We can use `git commit --amend` command to change the most recent commit message.

## Usage

### For Local Commits

```bash
$ git commit --amend -m "{NEW_MESSAGE}
```

### For Already Pushed Commits

In this case, we can only edit the most recent commit message and force push it to remote -

```bash
$ git commit --amend -m "{NEW_MESSAGE}"
$ git push --force
```

**Note:** Force Pushes can break things, so warnings ahead!

**_Source: [Linuxize](https://linuxize.com/post/change-git-commit-message/)_**
