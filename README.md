# Ansible toolkit for Red Hat Subscription Manager
This role will configure a CentOS/RHEL system for management via Foreman/Satellite.

Alternatively, you can use this role to subscribe systems to the Red Hat CDN.

# Prerequirements
This role requires the use of a pre-configured Foreman/Satellite server. For a role to
configure a Foreman server for you, check [here](https://github.com/thulium-drake/ansible-role-foreman)

NOTE: when using Satellite with Simple Content Access (SCA) mode, please note that subscription-manager will
return an error if subscription-manager is a version lower then 1.24.

# Setup
1. Include this role in your Ansible Project
2. Configure (see defaults/main.yml for examples)
3. ???
4. Profit!

# Unregistering nodes
To clean up the registration (but not the config etc), use the following task:

```
- name: 'Unregister host'
  ansible.builtin.include_role:
    name: 'subscription_manager'
    tasks_from: 'unregister_rhsm.yml'
```
