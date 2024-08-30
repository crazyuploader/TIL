# Ansible Disable Python Interpreter Warnings

Latest Ansible started displaying Python interpreter warnings, such as -

```
[WARNING]: Platform linux on host Server02 is using the discovered Python interpreter at /usr/bin/python3.12, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
```

To disable these Python interpreter warnings, we can add the following to the Ansible configuration file.

```ini
# Disable Python interpreter warnings
interpreter_python = auto_silent
```

**_Source: [Interpreter Discovery- Ansible Core Documentation](https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html)_**
