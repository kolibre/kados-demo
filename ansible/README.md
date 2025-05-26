# Playbook for setting up the kados demo server

## Prerequisite

`ansible` installed on the system

## Installing collections and roles

Run command `ansible-galaxy install -r requirements.yaml` to install dependencies tracked in the requirements file.

## Run playbook

ansible-playbook -K -i inventory/kados.yaml -l kados playbook.yaml --diff
