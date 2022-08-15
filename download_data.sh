#!bin/bash

if [ -d "notebooks/$1" ]; then
    kaggle competitions download -c $1 -p notebooks/$1/data
    unzip notebooks/$1/data/$1.zip -d notebooks/$1/data/
    rm notebooks/$1/data/$1.zip
else
    echo "Invalid competitions name"
fi