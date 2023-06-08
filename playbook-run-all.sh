#!/bin/bash

set -e
cd playbooks

playbooks=("sync" "blockchain")

for playbook in "${playbooks[@]}"
do
	echo "Running $playbook..."
	ansible-playbook -i hosts.ini $playbook.yml
done
