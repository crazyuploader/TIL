# Show Public IP

Public IP Address using `dig` can be obtained using command:

```bash
$ dig TXT +short o-o.myaddr.l.google.com @ns1.google.com
```

Alternate using `curl`:

```bash
$ curl ifconfig.me
```
