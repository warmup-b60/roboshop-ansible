#!/bin/bash

echo "Running ansible playbook for ${env} and ${component}" 
ansible-playbook -i env/${env}/hosts roboshop.yml -e "component=${component}" -e "env=${env}" -e ansible_user=ec2-user -e ansible_password=DevOps321  roboshop.yml 
echo "Running ansible playbook for ${env} and ${component} completed" 