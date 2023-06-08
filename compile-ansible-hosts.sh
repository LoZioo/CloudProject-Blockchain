#!/bin/bash
source config.sh
HOST_INI="./playbooks/hosts.ini"

echo "; Auto-generated hosts.ini from compile-ansible-hosts.sh and config.sh" > $HOST_INI
echo >> $HOST_INI

echo "[blockchain]" >> $HOST_INI
echo "$SERVER_BC_ADDRESS" >> $HOST_INI
echo >> $HOST_INI

echo "[blockchain:vars]" >> $HOST_INI
echo "ansible_ssh_private_key_file=$SECRET_KEY" >> $HOST_INI
echo "ansible_user=$USER" >> $HOST_INI
echo "dockerhub_image=$DOCKERHUB_IMAGE" >> $HOST_INI
