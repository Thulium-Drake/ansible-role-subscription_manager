---
- name: 'Register system'
  community.general.redhat_subscription:
    state: 'absent'

- name: 'Remove old data'
  ansible.builtin.command: '/usr/sbin/subscription-manager clean'
  changed_when: true

- name: 'Ensure katello-ca-consumer absent'
  ansible.builtin.package:
    name: 'katello-ca-consumer-*'
    state: 'absent'
  when: rhsm_server_type != 'cdn'
