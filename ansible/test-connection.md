# Test Connection

We can use `ping` module of Ansible to test whether or not Ansible is able to log onto the configured server(s).

```bash
ansible all -m ping
```

This will run ping every server.

***Source: [Ansible Documentation](https://docs.ansible.com/ansible/2.3/ping_module.html)***