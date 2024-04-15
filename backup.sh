#!/bin/bash

now=$(date +"%Y-%m-%d_%H:%M:%S")

mkdir ${now}
cd ${now}

cp ~/.vimrc .
cp ~/.viminfo .
cp ~/.vim . -r
