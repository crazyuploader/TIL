# Read A File Line By Line

We can read a file line by line in Python as -

## Example

```python
>>> with open("file.txt", "r") as file:
...     lines = file.readlines()
... 
>>> for line in lines:
...     print("{}".format(line.strip()))
... 
Line 1
Line 2
Line 3
```

***Source: [GeeksForGeeks](https://www.geeksforgeeks.org/read-a-file-line-by-line-in-python/)***
