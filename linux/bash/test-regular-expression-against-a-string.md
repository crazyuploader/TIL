# Test Regular Expression Against A String

In BASH we can perform regular expression on a string using `=~` operator, example is given below -

## Usage

```bash
[[ "string" =~ pattern ]]
```

## Example

```bash
$ if [[ "Hello" =~ "1" ]]; then echo "True"; else echo "False"; fi
False
```

**_Source: [StackOverFlow](https://unix.stackexchange.com/a/340485)_**
