# Root Check

While trying to add a script which would install [`tmate`](https://github.com/tmate-io/tmate/), but for me to be able to put executables under `bin` folder would require a root permission. So, before trying to put the executables in the `bin`, permission check was a must. Though, checking if running as root isn't that hard using `whoami` command.

```bash
if [[ "${USER}" -ne "root" ]]; then
    echo "Can only run as root"
    exit 1
fi
```

I would've used this approach, but as an answer on StackOverFlow stated
> "As a **warning**, do not check if a user is root by using the root username. Nothing guarantees that the user with ID 0 is called `root`. It's a very strong convention that is broadly followed but anybody could rename the superuser another name."

which I think does makes sense. So, that's why the other way around do the same is to check EUID variable, which is, in fact, read-only variable initialized at shell start-up.

```bash
if [[ "${EUID}" -ne "0" ]]; then
    echo "Can only run as root"
    exit 1
fi
```

Which pretty much worked for me the way I intended it to.

***See the original question on*** [StackOverFlow here](https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script).
