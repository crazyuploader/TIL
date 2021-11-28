# Print Go Version

We can use `Version()` method from `runtime` module to print Go Version.

## Example

```go
package main

import (
    "fmt"
    "runtime"
)

func main() {
    fmt.Println("Go version: " + runtime.Version())
}
```

***Source: [GopherSnippets](https://gophersnippets.com/how-to-print-go-version)***
