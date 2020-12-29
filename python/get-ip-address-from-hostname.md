# Get IP Address From Hostname

In Python we can get IP Address for a hostname by using `gethostbyname` from `socket` module, which is in built in Python.

## Example

```python
>>> import socket
>>> socket.gethostbyname("www.google.com")
'172.217.166.4'
```

**_Source: [Simplified Guide](https://www.simplified.guide/python/hostname-to-ip)_**
