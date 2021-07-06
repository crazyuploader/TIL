# Check If A Package Is Installed Or Not

To check whether or not a package is installed, we can test with `dpkg` command.

## Usage

```bash
$ dpkg --status {PACKAGE_NAME}
```

## Example

```bash
$ dpkg --status sudo
Package: sudo
Status: install ok installed
Priority: important
Section: admin
Installed-Size: 2204
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Architecture: amd64
Version: 1.8.31-1ubuntu1.2
Replaces: sudo-ldap
Depends: libaudit1 (>= 1:2.2.1), libc6 (>= 2.27), libpam0g (>= 0.99.7.1), libselinux1 (>= 2.0.65), libpam-modules, lsb-base
Conflicts: sudo-ldap
Conffiles:
 /etc/pam.d/sudo aa40f755f85bb33c9e79bd537e2979be
 /etc/sudoers edcf6528783ecffd3f248c8089dc298e
 /etc/sudoers.d/README 8d3cf36d1713f40a0ddc38e1b21a51b6
Description: Provide limited super user privileges to specific users
 Sudo is a program designed to allow a sysadmin to give limited root
 privileges to users and log root activity.  The basic philosophy is to give
 as few privileges as possible but still allow people to get their work done.
 .
 This version is built with minimal shared library dependencies, use the
 sudo-ldap package instead if you need LDAP support for sudoers.
Homepage: http://www.sudo.ws/
Original-Maintainer: Bdale Garbee <bdale@gag.com>
```

***Source: [CyberCiti](https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/)***
