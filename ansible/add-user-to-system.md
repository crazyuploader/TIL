# Add User to System

In Ansible we can use `ansible.builtin.user` module to add a user to the system.

## Example(s)

### 1. Add user 'jungle'

```yaml
- name: Add the user 'jungle'
  ansible.builtin.user:
    name: jungle
    comment: Jungle
```
### 2. Add a user with specific attributes

```yaml
- name: Add the user 'jungle' with specific attributes
  ansible.builtin.user:
    name: jungle
    comment: Jungle
    home: /home/jungle
    shell: /bin/bash
    password: "{{ 'password' | password_hash('sha512') }}"
```

### 3. Adding groups to the user

```yaml
- name: Add the user 'jungle' and assign to groups
  ansible.builtin.user:
    name: jungle
    groups: sudo,users
    append: yes
```

***Reference: [Manage User Accounts - Ansible Documention](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/user_module.html)***
