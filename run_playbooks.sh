#!/bin/bash

ansible-playbook modules/add_linux_user_for_db.yml -i modules/hosts
ansible-playbook modules/install_mongo.yml -i modules/hosts
ansible-playbook modules/add_mongo_user.yml -i modules/hosts
ansible-playbook modules/install_postgresql.yml -i modules/hosts-postgres
