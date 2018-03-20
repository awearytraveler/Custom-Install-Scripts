#!/bin/bash

# Installing Anaconda 

PWD=$(pwd)

cd /tmp
PREFIX="https://repo.continuum.io/archive/"
FILE=$(sed -n 25,100p index.html | grep -E -o 'Anaconda3.*Linux.*x86_64.sh\"'| cut -d '"' -f 1)
echo "Downloading " $PREFIX$FILE
axel -n 10 $PREFIX$FILE

bash $FILE

cd $PWD

# Making conda environments

conda create -n py27 python=2.7 anaconda
conda create -n py34 python=3.4 anaconda

# Installing specific packages meant for py27


while read requirement; do conda install --yes $requirement; done < requirements.txt        # Common packages

while read requirement; do conda install -n py27 --yes $requirement; done < requirements_27.txt     # python 2.7 specific

while read requirement; do conda install -n py34 --yes $requirement; done < requirements_34.txt     # python 3.4 specific




