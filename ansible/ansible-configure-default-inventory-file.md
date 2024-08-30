# Ansible Configure Default Inventory File

By default, Ansible would attempt to read the default configuration file at `/etc/ansible/hosts`, we can specify the default configuration file to use by creating an Ansible configuration file.

## Procedure

1. Create `ansible.cfg` file in home directory, or project directory.
2. Configure the `ansible.cfg` file in home directory, & add `[defaults]` section:

```ini
[defaults]
inventory = ~/.ansible/hosts
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/63413958)_**

**_Reference(s):_**

- [Working with Inventory - Ansible Documentation](https://docs.ansible.com/ansible/2.7/user_guide/intro_inventory.html)
- [Ansible Configuration Settings - Ansible Documentation](https://docs.ansible.com/ansible/latest/reference_appendices/config.html)
