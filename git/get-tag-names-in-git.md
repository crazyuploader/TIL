# Get Tag Names in Git

To get tag name in a git repository, we can use `git describe` command.

## Example: Get Latest Tag Name

```
git describe --tag
v0.5
```

## Example: Get All Tags Sorted by Commit Date

```
git tag --sort=committerdate
v0.1
v0.2
v0.3
v0.4
v0.5
```

***Source(s):***

- [StackOverFlow](https://stackoverflow.com/a/7261049)
- [GitHub Gist](https://gist.github.com/rponte/fdc0724dd984088606b0)
