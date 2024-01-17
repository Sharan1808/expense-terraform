#!/bin/bash

yum install ansible -y | tee -a /opt/userdata.log
ansible-pull -i localhost -U https://github.com/Sharan1808/expense-ansible expense.yml role_name=${role_name} env=${env} | tee -a /opt/userdata.log
