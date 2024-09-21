# Check Python Version Programmatically

In order to check the Python version in a program, we can use `sys` module, example is given below.

## Check Python Version

```python
>>> import sys
>>> sys.version
'3.12.6 (main, Sep  9 2024, 00:00:00) [GCC 14.2.1 20240801 (Red Hat 14.2.1-1)]'
```

## Process Python Version

```python
>>> import sys
>>> sys.version_info
sys.version_info(major=3, minor=12, micro=6, releaselevel='final', serial=0)
>>> if sys.version_info >= (3,10):
...     print("Python version is above 3.10")
... else:
...     print("Python version is 3.10 or below 3.10")
...
Python version is above 3.10
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/1093331)_**
