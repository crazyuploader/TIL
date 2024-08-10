# Setting a Password in Ansible Inventory File

Generally, we shouldn't be needing this, as one should have a SSH key pair to access remote servers for enhanced security, and convenience, but there might be scenarios where you need to use password authentication. This can be be useful in development or testing environments, but it's prudent to avoid this practice in production.

## Example Inventory File

```toml
[vm]
vagrant ansible_host=10.0.0.2 ansible_user=vagrant ansible_ssh_pass=vagrant
```

**_Source: [Serverfault](https://serverfault.com/a/742382)_**
