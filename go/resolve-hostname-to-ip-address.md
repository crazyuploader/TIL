# Resolve Hostname To IP Address

[`net.LookupHost`](https://pkg.go.dev/net#LookupHost) can be used to resolve hostnames to IP addresses.

## Example

```go
addresses, err := net.LookupHost("google.com")
if err != nil {
    fmt.Println("Unkown Host")
} else {
    fmt.Println("Addresses:", addresses)
}
```

***Sources: [I Spy Code](https://ispycode.com/GO/Network/Get-ipaddress-from-hostname)***
