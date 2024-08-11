# Run Ansible Playbook Locally

At times, we require an Ansible Playbook to run locally on the host server. Few examples are given below -

### 1. Using Ansible Commandline

```bash
ansible-playbook --connection=local --inventory 127.0.0.1, playbook_name.yml
```

### 2. Using Ansible Inventory File

We can also, add the host in an inventory file such as -

```ini
127.0.0.1 ansible_connection=local
```

### 3. Using Ansible Configuration File

```code
[defaults]
transport = local
```

### 4. Using Playbook Header

```yaml
- hosts: 127.0.0.1
    connection: local
```

**_Source: [GitHub Gist - Ansible playbook Locally](https://gist.github.com/alces/caa3e7e5f46f9595f715f0f55eef65c1)_**

**_Reference(s):_**

**_[Configuring Ansible - Ansible Documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html)_**

**_[Implicit 'localhost' - Ansible Documentation](https://docs.ansible.com/ansible/latest/inventory/implicit_localhost.html)_**
