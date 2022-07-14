# Setting An Environment Variable

Environment Variables can be specified in the following format:

```bash
echo "{environment_variable_name}={value}" >> $GITHUB_ENV
```

## Example

```yaml
steps:
    - name: Setting the environment variable
    run: |
        echo "GIT_VERSION=$(git --version)" >> $GITHUB_ENV

    - name: Check Git version
    run: |
        echo "${GIT_VERSION}"
```

**Note:** Can also use `${{ env.GIT_VERSION }}` format to get the environment variable value.

***Source: [StackOverFlow](https://stackoverflow.com/a/57969570)***
