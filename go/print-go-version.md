# Print Go Version

We can use [`runtime.Version`](https://pkg.go.dev/runtime#Version) function to print Go Version.

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

**_Source: [GopherSnippets](https://gophersnippets.com/how-to-print-go-version)_**
