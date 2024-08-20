# Bash List Only Directories

To only directories of current working directory, we can either use `echo */` or `ls -d */` command.

## 1. Example using `echo` command

```bash
echo */
ansible/ caddy/ cheatsheets/ docker/ git/ github/ go/ learning-resources/ linux/ miscellaneous/ python/ reactjs/ vagrant/ vscode/ wsl/
```

## 2. Example using `ls` command

```bash
ls -d */
ansible/  caddy/  cheatsheets/  docker/  git/  github/  go/  learning-resources/  linux/  miscellaneous/  python/  reactjs/  vagrant/  vscode/  wsl/
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/17009555)_**
