# Fix "Inappropriate ioctl for device" Error

`gpg: signing failed: Inappropriate ioctl for device` can be fixed by setting `GPG_TTY` variable -

### Solution:

```bash
export GPG_TTY=$(tty)
```

**Note:** Add above line to `~/.bashrc` file, to avoid running it everytime shell session starts.

**_Source: [GitHub](https://github.com/keybase/keybase-issues/issues/2798#issue-205008630)_**
