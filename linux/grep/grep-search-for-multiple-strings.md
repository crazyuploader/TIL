# Grep Search For Multiple Strings

To search for multiple strings/patterns at once in `grep` we can do it by following ways -

## Option 1

Using OR Operator `|`

```bash
$ echo -e "Hi\nThere\nHumans" | grep "Hi\|Humans"
Hi
Humans
```

**Note:** When using this approach, we need to escape `|` operator using backslash `\`.

## Option 2

Using Extended Regular Expressions option `-E`

```bash
$ echo -e "Hi\nThere\nHumans" | grep -E "Hi|Humans"
Hi
Humans
```

**Note:** We don't have to escape `|` using `-E` option.

**_Source: [Linuxize](https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/#search-for-multiple-strings-patterns)_**
