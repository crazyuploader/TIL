# Fix Failed Writing Body While Piping

We can fix `(23) Failed writing body` error while piping `cURL` to some programs like `grep` by using an intermediate such as `tac` which by default reads line from last.

## Example

```
curl https://{SOME_URL} | tac | tac | grep {PATTERN}
```

**Note:** Using `tac` as it will first reverse the order, and then reverse it again to get the original body.


***Source: [StackOverFlow](https://stackoverflow.com/a/28879552)***
