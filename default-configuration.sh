#!/bin/bash

# Instalando git na máquina
echo "Instalando git"
sudo apt-get install git-all

# Instalando VS Code na máquina
echo "Instalando Visual Studio Code"
sudo snap install --classic code

# Instalando Java na máquina
echo "Instalando Java 8 e 11"
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install openjdk-11-jdk -y