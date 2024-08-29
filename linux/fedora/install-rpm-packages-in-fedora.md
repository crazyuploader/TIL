# Install RPM Packages in Fedora

In Fedora we can install the RPM package either by using `rpm` or `dnf` command, example is given below!

## Using rpm command

Using rpm command we can install the RPM package such as -

```code
[root@38841a887c28 ~]# rpm -i wget-1.21.4-1.fc39.x86_64.rpm
error: Failed dependencies:
	libgpgme.so.11()(64bit) is needed by wget-1.21.4-1.fc39.x86_64
	libgpgme.so.11(GPGME_1.0)(64bit) is needed by wget-1.21.4-1.fc39.x86_64
	libgpgme.so.11(GPGME_1.1)(64bit) is needed by wget-1.21.4-1.fc39.x86_64
	libmetalink.so.3()(64bit) is needed by wget-1.21.4-1.fc39.x86_64
```

In above example, the command errors out because the dependencies are not installed.

To make sure dependencies are installed, we can either use `rpm -qpR` to query the dependencies or use `dnf` command to install the RPM package with dependencies.

## Using dnf command

To install using `dnf` command, we can use the syntax `dnf localinstall` followed by the RPM package file, `dnf` command will suggest dependencies as well.

```code
[root@38841a887c28 ~]# dnf localinstall wget-1.21.4-1.fc39.x86_64.rpm
Last metadata expiration check: 1:01:10 ago on Thu Aug 29 03:16:17 2024.
Dependencies resolved.
==============================================================================================================================================================================================================================================
 Package                                                   Architecture                                         Version                                                      Repository                                                  Size
==============================================================================================================================================================================================================================================
Installing:
 wget                                                      x86_64                                               1.21.4-1.fc39                                                @commandline                                               797 k
Installing dependencies:
 gpgme                                                     x86_64                                               1.23.2-3.fc40                                                fedora                                                     211 k
 libmetalink                                               x86_64                                               0.1.3-34.fc40                                                fedora                                                      32 k

Transaction Summary
==============================================================================================================================================================================================================================================
Install  3 Packages

Total size: 1.0 M
Total download size: 243 k
Installed size: 4.0 M
Is this ok [y/N]: y
Downloading Packages:
(1/2): libmetalink-0.1.3-34.fc40.x86_64.rpm                                                                                                                                                                    19 kB/s |  32 kB     00:01
(2/2): gpgme-1.23.2-3.fc40.x86_64.rpm                                                                                                                                                                          87 kB/s | 211 kB     00:02
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                                                          72 kB/s | 243 kB     00:03
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                                                                      1/1
  Installing       : libmetalink-0.1.3-34.fc40.x86_64                                                                                                                                                                                     1/3
  Installing       : gpgme-1.23.2-3.fc40.x86_64                                                                                                                                                                                           2/3
  Installing       : wget-1.21.4-1.fc39.x86_64                                                                                                                                                                                            3/3
  Running scriptlet: wget-1.21.4-1.fc39.x86_64                                                                                                                                                                                            3/3

Installed:
  gpgme-1.23.2-3.fc40.x86_64                                                   libmetalink-0.1.3-34.fc40.x86_64                                                   wget-1.21.4-1.fc39.x86_64

Complete!
```

**_Source: [phoenix NAP](https://phoenixnap.com/kb/how-to-install-rpm-file-centos-linux)_**
