# Formatted Strings

In Python language, formatting of strings and inserting of variables in a string can be done in following ways -

## Option 1: %-format

```python
>>> name = "Jugal"
>>> "Hey there %s!" % name
'Hey there Jugal!'
```

## Option 2: str.format()

```python
>>> name = "Jugal"
>>> "Hey there {0}!".format(name)
'Hey there Jugal!'
```

## Option 3: f-strings

```python
>>> name = "Jugal"
>>> f"Hey there {name}!"
'Hey there Jugal!'
```

**_Source: [RealPython](https://realpython.com/python-f-strings/)_**
