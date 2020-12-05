# Pass List as Argument to a Function

> You can send any data types of argument to a function (string, number, list, dictionary etc.), and it will be treated as the same data type inside the function.

# Example

```python
def some_function(food):
    for x in food:
        print(x)


fruits = ["Apple", "Banana", "Papaya"]
some_function(fruits)
```

**_Source: [W3Schools](https://www.w3schools.com/python/gloss_python_function_passing_list.asp)_**
