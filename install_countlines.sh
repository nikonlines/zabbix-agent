#!/bin/bash

#------------------------------

#Переменные 
folder_metric="/etc/zabbix/"
file_metric="countlines_logfile.sh"

folder_config="/etc/zabbix/zabbix_agentd.conf.d/"
file_config="countlines_logfile.conf"

#------------------------------

#Проверка наличия нового файла-метрики в текущей директории
if [ -f $file_metric ]
then
 #Добавляем права на выполнение скрипта
 sudo chmod +x $file_metric

 #Копируем новый файла-метрики в рабочую директорию
 sudo cp $file_metric $folder_metric$file_metric
else
 echo "Config file '$file_metric' not found in this dirrectory!"
fi

#Создаем файл настроек для параметра countlines_logfile, который будем мониторить
sudo sh -c "echo "UserParameter=countlines_logfile,$folder_metric$file_metric" > $folder_config$file_config"

#Перезапускаем заббикс-агента
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

#systemctl status zabbix-agent



