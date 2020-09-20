# Pipe Password to Sudo

So while trying to create an automated script for Docker to start running my container, I need to pass root's password to sudo in order to run `docker start _containerID_`. The way to do is given below -

```bash
echo "YOUR_PASSWORD_HERE" | sudo -S {COMMAND_TO_RUN_AS_ROOT}
```

The command to start Docker service was -

```bash
echo "SECRET" | sudo -S service docker start
```

And that was all, for me to pass the password to `sudo` without actually writing the password again!

Thing to note here is that passing `-S` makes `sudo` to read password from *stdin*.

***Original Question on*** [StackOverFlow here](https://unix.stackexchange.com/questions/391796/pipe-password-to-sudo-and-other-data-to-sudoed-command).

