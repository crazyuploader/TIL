# Basic Auth

To specify a username and password for authentication, use `--user` and `--ask-password` arguments.

## Example

```bash
$ wget --user some_user --ask-password https://somesite.com/private_stuff
```

**Note**:\*\* Using `--password` is also an option but not recommended since the password can then be saved to BASH history, and can be looked by using command `history`. So instead of using `--password` one should prefer `--ask-password` instead.

**_Source: [StackOverFlow](https://askubuntu.com/a/399927)_**
