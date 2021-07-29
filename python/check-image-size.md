# Check Image Size

We can check size (resolution) of an image in Python by using [PIL](https://pillow.readthedocs.io/en/stable/).

## Example

```python
>>> from PIL import Image
>>> image = Image.open("image.png")
>>> print(image.size)
(1366, 768)
```

**_Source: [Kite](https://www.kite.com/python/answers/how-to-get-the-size-of-an-image-with-pil-in-python)_**
