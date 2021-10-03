# Check IF A Key Exists In Dictionary

We can check if a key exists in a dictionary using a simple if statement.

## Example

```python
>>> data = {"name": "John", "age": 43}
>>> data
{'name': 'John', 'age': 43}
>>> if "name" in data:
...     print("Key present")
... else:
...     print("Not present")
...
Key present
>>> if "phone" in data:
...     print("Exists!")
... else:
...     print("Not found!")
...
Not present
```

**_Source: [GeeksForGeeks](https://www.geeksforgeeks.org/python-check-whether-given-key-already-exists-in-a-dictionary/)_**
