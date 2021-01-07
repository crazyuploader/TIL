# Check If A User Exists

We can check if a user exists on Linux System by `id` command.

> id - print real and effective user and group IDs

## Example

```bash
$ id -u jungle
1000
```

If a user does not exists on system, it throws an error. For example -

```bash
$ id -u unknown
id: ‘unknown’: no such user
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/14811915)_**
