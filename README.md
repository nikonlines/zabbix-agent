Установка zabbix-agent.

Данный скрипт позволяет установить zabbix-agent на Linux-системы (Debian, Ubuntu).

1) Необходимо внести данные о zabbix-server и имени текущего ПК в конфигурационный файл "zabbix_agentd.conf":

    #Server=IP address of Zabbix Server

    #Hostname=Hostname of client PC

2) Далее запустить скрипт установки "install_zabbix-agent.sh"

--------------------------------------

Дополнительно скрипт "countlines_logfile.sh" вывода количества строк с лог-файлов системы: 
"/var/log/messages" и "/var/log/syslog"
