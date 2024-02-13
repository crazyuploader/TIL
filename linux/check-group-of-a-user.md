# Check Group Of A User

We can check group(s) a user is part of by following methods -

## Checking `/etc/group` File

```bash
$ cat /etc/group
```

## Using `groups` Command

```bash
$ group {USER_NAME}
```

Example -

```bash
jungle@Server01:~$ groups jungle
jungle : jungle sudo docker
```

***Source: [GeeksForGeeks](https://www.geeksforgeeks.org/how-to-check-the-groups-a-user-belongs-to-in-linux/)***
