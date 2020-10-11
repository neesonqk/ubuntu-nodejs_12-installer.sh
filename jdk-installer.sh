#!/bin/sh
#
# Script for automatic setup of JDK 1.8 202 on Ubuntu.

# DO NOT RUN THIS SCRIPT ON YOUR PC OR MacOS!

# =====================================================

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

bigecho() { echo; echo "## $1"; echo; }

bigecho "Start to install jdk ..."

sudo apt update

wget https://github.com/neesonqk/docker-jdk_8u202/raw/master/jdk-8u202-linux-x64.tar.gz -O /opt/jdk-8u202-linux-x64.tar.gz

sudo mkdir -p /opt/jdk

sudo cp -rf /opt/jdk-8u202-linux-x64.tar.gz /opt/jdk/

cd /opt/jdk/ && tar -zxf jdk-8u202-linux-x64.tar.gz

sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_202/bin/java 100

sudo update-alternatives --config java

sudo bash -c 'echo "JAVA_HOME=/opt/jdk/jdk1.8.0_202" >> /etc/environment'
sudo bash -c 'echo "JRE_HOME=/opt/jdk/jdk1.8.0_202/jre" >> /etc/environment'

source /etc/environment

java -version

bigecho "Oracle JDK 1.8_202 installiation done."
