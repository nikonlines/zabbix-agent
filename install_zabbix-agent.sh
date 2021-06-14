#!/bin/bash

#------------------------------

#Переменные 
folder_config="/etc/zabbix/"
file_config="zabbix_agentd.conf"

package_name="zabbix-agent"
package_status=$(dpkg -s $package_name 2>/dev/null | grep "Status:")

#------------------------------

#Проверка установлен ли пакет заббикс-агента
if [ "$package_status" == "Status: install ok installed" ]
then
 echo "Package '$package_name' is installed."
else
 #Обновление пакетов и установка заббикс-агента
 sudo apt update
 sudo apt install zabbix-agent
fi

#Проверка наличия старого конфиг-файла (сохраним его копию)
if [ -f $folder_config$file_config ]
then
 sudo mv $folder_config$file_config $folder_config$file_config.bak
fi

#Проверка наличия нового конфиг-файла в текущей директории
if [ -f $file_config ]
then
 #Копируем новый конфиг-агента в рабочую директорию
 sudo cp $file_config $folder_config$file_config
else
 echo "Config file '$file_config' not found in this dirrectory!"
fi

#Перезапускаем заббикс-агента
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

#systemctl status zabbix-agent



