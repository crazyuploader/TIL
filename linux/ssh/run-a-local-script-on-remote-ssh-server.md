# Run A Local Script On Remote SSH Server

Typically on SSH connection, we run commands on the remote server, but in order to run a local script on the remote server we can use `bash -s` which expects input from standard input, and runs the script in shell session.

## Example

```bash
$ ssh user@remotehost 'bash -s' < script.sh
```

**_Source: [Cloudsavvyit](https://www.cloudsavvyit.com/14216/how-to-run-a-local-shell-script-on-a-remote-ssh-server/)_**
