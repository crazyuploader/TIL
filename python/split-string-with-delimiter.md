# Split String with Delimiter

We can split a string with delimiter(s) using `re` (Regular Expression) module.

### Example

```python
>>> import re
>>> text = "These are collections of words seperated by a space."
>>> print(re.split(" ", text))
['These', 'are', 'collections', 'of', 'words', 'seperated', 'by', 'a', 'space.']
```

Here, we're splitting the string `text` using `" "` (space) delimiter.

Also, for customs delimiters we can do something like -

```python
re.split(" |\n")
```

***Source: [W3Resource](https://www.w3resource.com/python-exercises/re/python-re-exercise-47.php)***
