# Remove A File

To remove a file in Python, we can use `os` module and use its `os.remove()` function to do that.

## Example

```python
import os
os.remove("filename.txt")
```

**Note:** Error(s) Ahead! If going with this approach, so better is to test first if the file exists.

```python
import os
if os.path.exists("filename.txt"):
    os.remove("filename.txt")
    print("filename.txt deleted successfully.")
else:
    print("filename.txt not found.")
```

**_Source: [W3Schools](https://www.w3schools.com/python/python_file_remove.asp)_**
