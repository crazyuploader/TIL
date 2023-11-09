# GPG Trust Key

After importing a GPG key (on how to, refer to [link](fix-inappropriate-ioctl-for-device-error.md)), we need to set trust level for the same.

### Process

```bash
$ gpg --edit-key {KEY}
trust
5
yes
save
```

**_Source: [Security - StackExchange](https://security.stackexchange.com/a/129477)_**
