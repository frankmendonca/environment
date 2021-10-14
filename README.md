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

## Test with Docker

### Init Docker

```shell
$ docker run --rm -v $PWD:/ansible -it ubuntu bash
```

### Inside

```shell
# cd /ansible
```
```shell
# ./run-sudo-ansible-playbook.sh
```

or only "web"
```shell
# ./run-sudo-ansible-playbook.sh --tags "web"
```

or "ubuntu" and "docker" (and using verbose)
```shell
# ./run-sudo-ansible-playbook.sh --tags "ubuntu,docker" -vv
```

Verbose options:
* -v
* -vv
* -vvv
* -vvvv

## List all Tasks

```shell
$ ansible-playbook local.yaml --list-tasks
```
