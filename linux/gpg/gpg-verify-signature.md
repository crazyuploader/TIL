# GPG Verify Signature

We can verify a signed file with the following command(s) -

## Import Public Key

```bash
$ gpg --import public-key.gpg
```

## Verify Signature

If the signature is in seperate file (as created with the `--detach-sign` option) -

```bash
$ gpg --verify myfile.tar.gz.sig myfile.tar.gz
```

If the signature is appended to the file (as created with the --sign option) -

```bash
$ gpg --verify myfile.tar.gz.gpg
```

***Source: [WikiHow](https://www.wikihow.com/Verify-a-GPG-Signature)***
