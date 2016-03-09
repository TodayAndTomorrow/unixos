#!/bin/bash

while [ "$boo" != "4" ]
do
 echo "1. Список файлов и подкаталогов текущего каталога"
 echo "2. Удаление файлов."
 echo "3. Переименование файла."
 echo "4. Выход из скрипта."
 echo -n "Введите команду: "
 read boo
 case "$boo" in
  "1" )    
   ls  
   ;;
  "2" )  
   while [ "$exFile" != "1" ]
   do
    echo -n "Введите название файла: "
    read filename
    if [ -n "$filename" ] #пустая строка
    then
     if [ -e "$filename" ] # существует ли файл
      then
       rm "$filename"
       exFile=1
      else
       echo "Такого файла нет. Попробуйте ввести другое имя."
     fi
    else
     exFile=1
    fi
   done
  ;;
  "3" )  
  while [ "$exFile2" != "1" ]
  do
   echo -n "Введите старое имя: "
   read oldName
   if [ -e "$oldName" ]
   then
    while [ "$exFile3" != "1" ] 
    do
     echo -n "Введите новое имя:"
     read newName
     if [ -e "$newName" ]
     then
      echo "Такое файл уже существует."
     else
      mv "$oldName" "$newName"
      exFile3=1
      exFile2=1
     fi
    done
   else
    echo "Такого файла не существует"
    exFile2=1
   fi 
  done
  ;;
  "4" ) 
   echo "Скрипт желает вам хорошего дня. До свидания!�"
  ;;
 esac
done
exit 0

