Установка zabbix-agent.

Данный скрипт позволяет установить zabbix-agent на Linux-системы (Debian, Ubuntu).

1) Клонируем проект на ПК:

        git clone https://github.com/nikonlines/zabbix-agent
        
        cd zabbix-agent

2) Необходимо внести данные о zabbix-server и имени текущего ПК в конфигурационный файл "zabbix_agentd.conf":

        Server=<IP-адрес или DNS-ия Zabbix-сервера>
        
        ServerActive=<IP-адрес или DNS-ия Zabbix-сервера>

        Hostname=<Локальное имя ПК или IP-адрес>
        
   или раскомментировать строчку HostnameItem
        
        HostnameItem=system.hostname

3) Модифицировать файлы для выполнения, запустив команду в текущей директории из скриптами:

        chmod +x *.sh

4) Далее запустить скрипт установки "install_zabbix-agent.sh"

        ./install_zabbix-agent.sh

--------------------------------------

Дополнительно скрипт "countlines_logfile.sh" вывода количества строк с лог-файлов системы: 
"/var/log/messages" и "/var/log/syslog"

        ./countlines_logfile.sh

Запуск скрипта "countlines_logfile.sh" с ключем -a или --all даст более детальную информацию.

        ./countlines_logfile.sh -a

Установку "countlines_logfile.sh" скрипта можно выполнить скриптом "install_countlines.sh"

        ./install_countlines.sh

--------------------------------------       

Темплейт сбора метрик количества строк в лог-файлах и вывод на график (Пока в разработке, тестируется на Zabbix 5.4.1):

        logmon_linux_(ver.1).xml
