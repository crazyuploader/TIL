# Run Python Script in Background

A Python script, say a Telegram bot, for example, can be run in many different ways. While using Tmux, Screen do seem easy, what truly stand out was this command `nuhup`.

## Option 1: `nuhup`

`nuhup` can be used to run Python script in background by:

```bash
nuhup python3 {PYTHON_SCRIPT_PATH} &
```

**_Note:_** `&` is important, kindly add it so that the script can run in background.

By default `nuhup` writes to `nuhup` writes to `nohup.out` which can be changed by redirecting stdout to any file, example:

```bash
nuhup ./run.py > log.txt &
```

## Option 2: `tmux`

Using `tmux` isn't that very hard, and can be done with just running `tmux` and detaching the session.

```bash
tmux
```

Then,

```bash
python3 {SCRIPT}
```

Press, `ctrl + b` and `d` after it to detach the current shell session.

## Option 3: `screen`

Using `screen` isn't that different from using `tmux`, and can be done by:

```bash
screen
```

Then,

```bash
python3 {SCRIPT}
```

Press, `ctrl + a` and `d` immediately after it to detach the current screen shell session.

**_Source: [Janakiev](https://janakiev.com/blog/python-background/)_**
