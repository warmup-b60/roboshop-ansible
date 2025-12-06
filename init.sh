#!/bin/bash

echo "Running ansible playbook for ${1} and ${2}" 
ansible-playbook -i ${1}-${2}.roboshop.internal, -e "component=${1}" -e "env=${2}" -e ansible_user=ec2-user -e ansible_password=DevOps321  roboshop.yml 
echo "Running ansible playbook for ${1} ${2} completed" 