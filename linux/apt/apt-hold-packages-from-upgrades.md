# APT Hold Package(s) From Upgrades

We can ignore a package's upgrade by running `apt-mark hold` command.

## Hold Updates

```bash
apt-mark hold {PACKAGE_NAME}
```

## Unhold Updates

```
apt-mark unhold {PACKAGE_NAME}
```

### Example

Holding `code` package -

```
apt-mark hold code
```

Undo -

```bash
apt-mark unhold code
```

***Source: [CyberCiti](https://www.cyberciti.biz/faq/apt-get-hold-back-packages-command/)***
