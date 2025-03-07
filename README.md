# hexlet-ansible
https://coursehunter.net/course/osnovy-ansible?lesson=6
# ПРОДОЛЖИТЬ УРОК С 00:01

## 1-ый урок 
http://coursehunter.net/course/osnovy-ansible?lesson=1

### Идемпотентность

Запуск настройки системы конфигураций не должен приводить к кэшу
В bash скриптах большинство команд не являются Идемпотентными (создание дирикторий/создание сим линков) и повторное выполнение этих команд приведёт к сбою.

### Основные профиты Ansible:

1. Нужен только ssh для работы (не требует установки агентов как sheff или puppet)
2. Описание состояния в yaml файлах (не требует языка ruby как sheff или puppet)
3. Множество модулей из коробки

### Начало работы с Ansible:
1. Проверка доступности сервера:
```
ansible all -i ./modules/hosts -m ping
```
Ответ:
```
78.140.241.18 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```
2. Посмотреть uptime:
```
ansible all -i ./modules/hosts -m command -a 'uptime'
```
Ответ:
```
78.140.241.18 | CHANGED | rc=0 >>
 21:06:51 up 24 min,  2 users,  load average: 0.06, 0.03, 0.05
```
3. Проверить версию операционной системы:
```
ansible all -i ./modules/hosts -m command -a 'lsb_release -a'
ansible all -i ./modules/hosts -m command -a 'cat /etc/redhat-release'
ansible all -i ./modules/hosts -m command -a 'cat /etc/os-release'
ansible all -i ./modules/hosts -m command -a 'uname -a'
```
Ответ:
```
78.140.243.13 | CHANGED | rc=0 >>
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.2 LTS
Release:        22.04
Codename:       jammyNo LSB modules are available.
```
4. Добавление тегов в playbook:
Для выполнения задач с тегом docker:
```
tags: docker

ansible-playbook modules/install_postgresql.yml -i modules/hosts -t docker
ansible-playbook modules/install_postgresql.yml -i modules/hosts --skip-tags docker
```