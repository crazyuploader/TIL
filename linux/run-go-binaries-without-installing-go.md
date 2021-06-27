# Run Go Binaries Without Installing Go

We can run Go binaries without installing Go, by using [GoBinaries](https://gobinaries.com/) which allows Go programs to be installed from command line only.

## Example

```bash
$ curl -sf https://gobinaries.com/rakyll/hey | sh
```

### Limitations

- The package must compile within 100 seconds
- The package must have at least on tag

**_Source: [GoBinaries](https://gobinaries.com/)_**
