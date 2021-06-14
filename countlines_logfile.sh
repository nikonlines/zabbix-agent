#!/bin/bash

#-----------------------

#Переменные директории и имен лог-файлов
logfolder=/var/log/
logfile_1=messages
logfile_2=syslog

#-----------------------

#Цикл перебора лог-файлов
for logfile in $logfile_1 $logfile_2
do
 
 #Проверка наличия лог-файла
 if [ -f $logfolder$logfile ] 
 then 
  
  #Вывод сообщения строк лог-файла
  if [ "$1" == "--all" ] || [ "$1" == "-a" ]
  then
   echo -n "Count lines in file '$logfile': "
  fi
  
  #Вывод количества строк в лог-файле
  cat $logfolder$logfile | wc -l
 else  
  
  #Вывод сообщения при отсутсвии лог-файла
  if [ "$1" == "--all" ] || [ "$1" == "-a" ]
  then
   echo "Logfile '$logfolder$logfile' not found!"
  fi

 fi

done

