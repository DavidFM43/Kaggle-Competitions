#!bin/bash

if [ -d "notebooks/$1" ]; then
    kaggle competitions download -c $1 -p notebooks/$1
    unzip $1
    rm $1.zip
else
    echo "Invalid competitions name"
fi