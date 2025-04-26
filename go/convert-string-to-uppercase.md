# Convert String To Uppercase in Go

To convert a string to uppercase, we can take advantage of `strings` module of Golang.

## Example

```go
package main

import (
    "fmt"
    "strings"
)

func main() {
    myString := "Hello!"
    fmt.Println(strings.ToUpper(myString))
}
```

***Source: [GeeksForGeeks](https://www.geeksforgeeks.org/how-to-convert-a-string-in-uppercase-in-golang/)***
