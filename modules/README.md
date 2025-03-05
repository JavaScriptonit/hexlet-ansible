# hexlet-ansible
https://coursehunter.net/course/osnovy-ansible?lesson=1

## Установка postgresql на убунту через Ansible:
Ошибка с аутентификацией пользователя в бд (ошибка):
https://stackoverflow.com/questions/69676009/psql-error-connection-to-server-on-socket-var-run-postgresql-s-pgsql-5432
```
psql: error: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: FATAL: Peer authentication failed for user "postgres" (Ubuntu)
```
https://ru.stackoverflow.com/questions/1472802/psql-error-connection-to-server-on-socket-var-run-postgresql-s-pgsql-5432


## Подготовка инфры для плейбуков:
1. Из директории: `/Users/andreyshabunov/PhpstormProjects/devsecops-bootcamp-group/juice-shop-terraform-gitlab`
```
TF_LOG=DEBUG terraform apply
terraform destroy  
```
2. Из директории: `/Users/andreyshabunov/PhpstormProjects/hexlet/Ansible`
```
ansible all -i ./modules/hosts -m command -a 'uptime'
ansible-playbook modules/add_linux_user_for_db.yml -i modules/hosts
ansible-playbook modules/install_postgresql.yml -i modules/hosts
ansible-playbook modules/install_postgresql.yml -i modules/hosts
ansible-playbook modules/install_mongo.yml -i modules/hosts
ansible-playbook modules/add_mongo_user.yml -i modules/hosts
```

3. Пуш в гитлаб:
```
git add .
git commit -m "update readme and mongo task"
git push -u origin main
```