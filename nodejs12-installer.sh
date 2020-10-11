#!/bin/sh
#
# Script for automatic setup of NodeJs 12.x on Ubuntu.

# DO NOT RUN THIS SCRIPT ON YOUR PC OR MacOS!

# =====================================================

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

bigecho() { echo; echo "## $1"; echo; }

bigecho "Start to install NodeJs 12.x ..."

sudo apt update

curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh && bash nodesource_setup.sh && apt install nodejs

rm nodesource_setup.sh

node -v

bigecho "NodeJs 1.8_202 installiation done."
