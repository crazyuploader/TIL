# Run Python Script in Background

A Python script, say a Telegram bot, for example, can be run in many different ways. While using Tmux, Screen do seem easy, what truly stand out was this command `nuhup`.

## Option 1: `nuhup`

`nuhup` can be used to run Python script in background by:

```bash
nuhup python3 {PYTHON_SCRIPT_PATH} &
```

**_Note:_** `&` is important, kindly add it so that the script can run in background.

By default `nuhup` writes to `nuhup` writes to `nohup.out` which can be changed by directing stdout to any file, example:

```bash
nuhup ./run.py > log.txt &
```

**_Source: [Janakiev](https://janakiev.com/blog/python-background/)_**
