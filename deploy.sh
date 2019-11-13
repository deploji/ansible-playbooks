#!/bin/bash
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} playbooks/docker_ubuntu.yml
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} -e app=traefik -e version=1.7 playbooks/deploy.yml
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} -e app=deploji-server -e version=latest playbooks/deploy.yml
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} -e app=deploji-scheduler -e version=latest playbooks/deploy.yml
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} -e app=deploji-worker -e version=latest playbooks/deploy.yml
docker-compose run ansible-playbook -i inventories/test.ini -e ansible_user=${USER} -e app=deploji -e version=latest playbooks/deploy.yml
