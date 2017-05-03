#!/bin/bash
echo "        _         _         ____ 
       / \  _   _| |_ ___  / ___|
      / _ \| | | | __/ _ \| |    
     / ___ \ |_| | || (_) | |___ 
    /_/   \_\__,_|\__\___/ \____|
                                   "
                             
echo "---------------------------------"
echo "           File List             "
echo "---------------------------------"
ls -r |grep ".c$"
if [ $? -eq 1 ]
then
  echo "No C programs found"
else
echo
echo Enter C Program Name : 
read fname
gcc $fname".c" -o $fname -lm
if [ $? -eq 1 ]
then
  echo "Compilation Error"
else
./$fname
fi 
fi

