# Adding User On Alpine

On Alpine adding a user is little different than adding a user in Ubuntu/Debian. And we can use `adduser` command to add a user.

## Usage

```bash
$ adduser
BusyBox v1.33.1 () multi-call binary.

Usage: adduser [OPTIONS] USER [GROUP]

Create new user, or add USER to GROUP

	-h DIR		Home directory
	-g GECOS	GECOS field
	-s SHELL	Login shell
	-G GRP		Group
	-S		Create a system user
	-D		Don't assign a password
	-H		Don't create home directory
	-u UID		User id
	-k SKEL		Skeleton directory (/etc/skel)
```

## Example

```bash
$ adduser -h /home/somebody -s /bin/bash somebody -u 1001
```

This adds a user `somebody` with SHELL login as `bash`, home directory at `/home/somebody` and an UID of `1001`.

**_Source: [CyberCiti](https://www.cyberciti.biz/faq/how-to-add-and-delete-users-on-alpine-linux/)_**
