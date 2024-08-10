# Add Authorized SSH Key to User using Ansible

Some examples of Ansible Playbooks for adding/updating authorized keys for SSH login.

## 1. Set Authorized Key(s) from URL

```yaml
- name: Set Authorized Key(s) from an URL
  ansible.posix.authorized_key:
    user: charlie
    state: present
    key: https://github.com/crazyuploader.keys
```

**_Reference: [Add or Remove SSH Authorized Key - Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/posix/authorized_key_module.html)_**
