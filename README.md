# hexlet-ansible

## 1-ый урок 
http://coursehunter.net/course/osnovy-ansible?lesson=1

### Идемпотентность

Запуск настройки системы конфигураций не должен приводить к кэшу
В bash скриптах большинство команд не являются Идемпотентными (создание дирикторий/создание сим линков) и повторное выполнение этих команд приведёт к сбою.

### Основные профиты Ansible:

1. Нужен только ssh для работы (не требует установки агентов как sheff или puppet)
2. Описание состояния в yaml файлах (не требует языка ruby как sheff или puppet)
3. Множество модулей из коробки

