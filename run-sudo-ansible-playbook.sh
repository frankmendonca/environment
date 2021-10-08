#!/bin/bash
sudo ansible-playbook -e user="$USER" -e group="$(id -gn)" local.yaml "$@"
