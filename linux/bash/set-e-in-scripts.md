# "set -e" In Scripts

`set -e` causes the shell to exit immediately if any of the sub-commands in script returns non-zero value.

> Exit immediately if a command exits with a non-zero status.

## Usage

We can write this line at the begining of script files -

```bash
set -e
```

### When to use it

- [StackOverFlow](https://stackoverflow.com/questions/13468481/when-to-use-set-e)

### When not to use it

Using `set -e` can be dangerous while using it with `init.d` scripts, so use it carefully!

> Be careful of using set -e in init.d scripts. Writing correct init.d scripts requires accepting various error exit statuses when daemons are already running or already stopped without aborting the init.d script, and common init.d function libraries are not safe to call with set -e in effect. For init.d scripts, it's often easier to not use set -e and instead check the result of each command separately.

**_Source: [ServerFault](https://serverfault.com/a/416097)_**
