# Tar Exclude Directories

To exclude a directory while making a tar file, we can pass `--exclude=""` argument to `tar` command.

## Example

```bash
tar czf {FILE_NAME}.tar.gz --exclude=".git" --exclude=".github" ./
```

Here, _.git_ and _.github_ directory would be excluded; not included in the tar file.

**_Source: [StackOverFlow](https://stackoverflow.com/questions/984204/shell-command-to-tar-directory-excluding-certain-files-folders)_**
