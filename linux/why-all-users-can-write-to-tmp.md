# Why All Users Can Write to `/tmp`

I've been wondering for a while now, that how come all the users on a system is able to write to the `/tmp` directory. And turns out, that `/tmp` is a special directory which uses sticky bit to achieve just that.

## What is `/tmp`?

`/tmp` is a special directory used for storing temporary files created by users and system processes.

## Permissions Explained

By default, `/tmp` is owned by `root` but has the following permissions:

`drwxrwxrwt`

This breaks down as:
- **`drwxrwxrwx`**: All users can read, write, and execute (list contents) in `/tmp`.
- **The `t` (sticky bit)**: Ensures only the owner of a file (or `root`) can delete or rename it.

## Why is `/tmp` World-Writable?

- **Temporary Storage:** Allows any user or process to create files for temporary use.
- **Security:** The sticky bit prevents users from deleting or renaming files that don’t belong to them.

## Summary

All users can write to `/tmp` because of its world-writable permissions and the sticky bit, which together provide a secure and flexible temporary workspace for everyone on the system.

***Reference(s):***

- [Reddit - Linux4Noobs](https://www.reddit.com/r/linux4noobs/comments/qhiwz4/tmp_accessible_to_all_users_securityprivacy/)
- [Stack Exchange](https://unix.stackexchange.com/a/71625)
