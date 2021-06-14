Установка zabbix-agent.

Данный скрипт позволяет установить zabbix-agent на Linux-системы (Debian, Ubuntu).

1) Необходимо внести данные о zabbix-server и имени текущего ПК в конфигурационный файл "zabbix_agentd.conf":

    #Server=IP address of Zabbix Server

    #Hostname=Hostname of client PC

2) Модифицировать файлы для выполнения, запустив команду в текущей директории из скриптами:

    chmod +x *.sh

3) Далее запустить скрипт установки "install_zabbix-agent.sh"

--------------------------------------

Дополнительно скрипт "countlines_logfile.sh" вывода количества строк с лог-файлов системы: 
"/var/log/messages" и "/var/log/syslog"

Запуск скрипта "countlines_logfile.sh" с ключем -a или --all даст более детальную информацию.
