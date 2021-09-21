#!/bin/bash

echo "Make sure you're install Java JDK 14.0.2 and You are root before installing run this script"

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-14.0.2/bin/java 2 &> /dev/null
sudo update-alternatives --config java;2 &> /dev/null
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-14.0.2/bin/jar 2 &> /dev/null
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-14.0.2/bin/javac 2 &> /dev/null
sudo update-alternatives --set jar /usr/lib/jvm/jdk-14.0.2/bin/jar &> /dev/null
sudo update-alternatives --set javac /usr/lib/jvm/jdk-14.0.2/bin/javac &> /dev/null
echo "java version" 
sleep 2
java -version
sleep 2
echo 'export J2SDKDIR=/usr/lib/jvm/jdk-14.0.2' >> /etc/profile.d/jdk14.0.2.sh &> /dev/null
echo 'export J2REDIR=/usr/lib/jvm/jdk-14.0.2' >> /etc/profile.d/jdk14.0.2.sh &> /dev/null
echo 'export PATH=$PATH:/usr/lib/jvm/jdk-14.0.2/bin:/usr/lib/jvm/jdk-14.0.2/db/bin' >> /etc/profile.d/jdk14.0.2.sh &> /dev/null
echo 'export JAVA_HOME=/usr/lib/jvm/jdk-14.0.2.0.2' >> /etc/profile.d/jdk14.0.2.sh &> /dev/null
echo 'export DERBY_HOME=/usr/lib/jvm/jdk-14.0.2/db' >> /etc/profile.d/jdk14.0.2.sh &> /dev/null
source /etc/profile.d/jdk14.0.2.sh
sleep 2
echo $JAVA_HOME
echo "Now Try to run Burpsuite Pro Loader"