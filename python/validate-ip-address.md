# Validate IP Address

In order to validate an IP Address in Python, we can use `ipaddress` module. Examples below -

## Check if IP Address is valid

```python
>>> from ipaddress import ip_address
>>> ip_address("1.1.1.1")
IPv4Address('1.1.1.1')
>>> ip_address("::1")
IPv6Address('::1')
```

`ip_address` function throws an exception if the address is not a valid IPv4/IPv6 address.

## Check IP Address version

```python
>>> from ipaddress import ip_address
>>> ip_address("1.1.1.1").version
4
>>> ip_address("::1").version
6
```

We can also check the IP address version, by using `version` attribute on `ip_address` function.

**_Source: [StackOverFlow](https://stackoverflow.com/a/10782565)_**
