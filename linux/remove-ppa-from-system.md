# Remove PPA From System

To remove PPA from system, we can use either of the following methods -

## Method 1

We can use `--remove` flag in `add-apt-repository` command

```bash
$ sudo add-apt-repository --remove ppa:example/ppa
```

## Method 2

We can use `ppa-purge`

```bash
$ sudo apt-get install ppa-purge
$ sudo ppa-purge ppa:example/ppa
```

**_Source: [ItsFoss](https://itsfoss.com/how-to-remove-or-delete-ppas-quick-tip/)_**
