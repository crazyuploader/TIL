# Save Credentials for Remotes in Git

SSH Key based login for Git works most of the times, except for the time when we add a HTTPS based remote (obviously with access token!), then it's annoying to put in your access token every single time, and that we can fix with [Git Credential Storage](https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage), example given below -

## Setup Git Credential Storage Globally

```bash
$ git config --global credential.helper store
```

**Note:** `--global` argument tells Git to set this globally; credential file is stored `~/.git-credentials`.

## Setup Git Credential Storage on a Single Repository

```bash
$ cd /path/to/the/respository
$ git config credential.helper store
```

**_Source: [Sentry Answers](https://sentry.io/answers/save-credentials-for-remotes-in-git/)_**

**_Reference: [Git Book](https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage)_**
