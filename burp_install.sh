#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)
red="\e[91m"
green="\e[92m"
blue="\e[94m"
none="\e[93m"
try="\e[37m"

clear
echo -e "${red}${bold}Make sure you're root before run this script ${bold} ${red}"
sleep 2
echo -e "${green}Please Select java jdk 14.0.2 mode number and press enter${green}"
sleep 1
echo -e "${try}In bellow${try}"
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-14.0.2/bin/java 2 &> /dev/null
sudo update-alternatives --config java
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-14.0.2/bin/jar 2 &> /dev/null
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-14.0.2/bin/javac 2 &> /dev/null
sudo update-alternatives --set jar /usr/lib/jvm/jdk-14.0.2/bin/jar &> /dev/null
sudo update-alternatives --set javac /usr/lib/jvm/jdk-14.0.2/bin/javac &> /dev/null
echo -e "${blue}Your Java version is ${blue} -->" 
sleep 2
java -version
sleep 2
rm /etc/profile.d/jdk14.0.2.sh &> /dev/null
sudo touch /etc/profile.d/jdk14.0.2.sh &> /dev/null
echo "export J2SDKDIR=/usr/lib/jvm/jdk-14.0.2" >> /etc/profile.d/jdk14.0.2.sh 
echo "export J2REDIR=/usr/lib/jvm/jdk-14.0.2" >> /etc/profile.d/jdk14.0.2.sh 
echo "export PATH=$PATH:/usr/lib/jvm/jdk-14.0.2/bin:/usr/lib/jvm/jdk-14.0.2/db/bin" >> /etc/profile.d/jdk14.0.2.sh 
echo "export JAVA_HOME=/usr/lib/jvm/jdk-14.0.2.0.2" >> /etc/profile.d/jdk14.0.2.sh 
echo "export DERBY_HOME=/usr/lib/jvm/jdk-14.0.2/db" >> /etc/profile.d/jdk14.0.2.sh 
source /etc/profile.d/jdk14.0.2.sh
sleep 2
echo -e "${none}Java path in --> ${none}"
echo $JAVA_HOME
echo -e "${try}Now Try to run Burpsuite Loader${try}"
echo -e "${red}                                               Coded By ${bold}R34_D3ViL${red}"
