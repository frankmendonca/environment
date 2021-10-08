# Ansible Playbook

Only for my Ubuntu (for now).

## Install

```shell
$ sudo apt install ansible
```

## Using

```shell
$ ansible-playbook -e user="foo" group="bar" local.yaml -K
```

- `-K` (`--ask-become-pass`) To specify a password for sudo.

### Helper (sudo)

```shell
$ ./run-sudo-ansible-playbook.sh
```
