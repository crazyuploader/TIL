# Grep Case Insensitive Search

By default `grep` is case sensitive. Which simply means "function" and "Function" are two distinct words for it, we can overcome this by passing `-i` argument to it.

### Example

```bash
$ echo "Hey There" | grep -i "hey there"
Hey There
```

Here, even if we're searching for lowered case "hey", we still get "Hey There".

**_Source: [Linuxize](https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/#case-insensitive-search)_**
