# Print Tabular Data

We can use `tabulate` module in Python to print pretty tabular format data.

## Example

```python
>>> from tabulate import tabulate
>>> header = ["Name", "Age"]
>>> data = [["Michael", 35], ["John", 23], ["Harley", 25]]
>>> print(tabulate(data, headers=header))
Name       Age
-------  -----
Michael     35
John        23
Harley      25
```

***Source: [PyPi Project](https://pypi.org/project/tabulate/)***
