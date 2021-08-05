# Case Statements

Case Statements in BASH come in handy when you have tons of nested and complicated if statements.

## Example

```bash
ARCH="$(arch)"
case ${ARCH} in

    x86_64)
        echo "amd64 system detected"
        ;;

    aarch64)
        echo "arm64 system detected"
        ;;

    *)
        echo "Unknown System"
        ;;

esac
```

**Note:** Unlike in programming languages such as C, Case Statements stop looking for pattern once it has found the pattern and executed commands associated with it.

***Source: [Linuxize](https://linuxize.com/post/bash-case-statement/)***
