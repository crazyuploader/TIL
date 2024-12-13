# Ansible Pause Playbook Execution

Sometimes, we need to pause the execution of an Ansible Playbook to allow for manual intervention or to give users time to perform necessary actions. The ansible.builtin.pause module is useful in such scenarios. Below are examples of how to use it effectively.

### Example 1: Prompt the User to Close Applications

```yaml
- name: A reminder to make sure the user has closed all the apps before continuing
  ansible.builtin.pause:
      prompt: "Make sure there is no application running on the server!"
```

### Example 2: Pause for a Fixed Duration

```yaml
- name: Pause for 5 minutes to let the database server settle
  ansible.builtin.pause:
      minutes: 5
```

### Example 3: Pause and Await User Confirmation

```yaml
- name: Wait for user confirmation before proceeding with the next step
  ansible.builtin.pause:
      prompt: "Have you backed up all necessary data? Type 'yes' to continue."
      echo: true
```

**_Reference: [Pause Module - Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/pause_module.html)_**
