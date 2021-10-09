#!/bin/bash
if ! command -v sudo &>/dev/null || ! command -v ansible-playbook &>/dev/null; then
  apt update
  apt install -y --no-install-recommends --no-install-suggests sudo ansible
fi

time sudo ansible-playbook -e user="$(id -un)" -e group="$(id -gn)" local.yaml "$@"
