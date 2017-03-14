#!/bin/bash

# Ansible Installation
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible

# git Installation
apt-get install -y git

# tree Installation
apt-get install tree
