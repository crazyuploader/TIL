# Check If a Variable is Empty

A variable can be checked if it's empty or not by following ways -

## Simple Way

```python
my_var = ""
if my_var == "":
    print("Variable is empty!")
else:
    print("Variable is not empty!")
```

Here we just compare the variable to an empty string.

## Advanced Way

```python
my_var = ""
if my_var:
    print("Variable is not empty!") # True when a non-empty string is found
else:
    print("Variable is empty!") # True when an empty string is found
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/9926466)_**
