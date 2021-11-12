#!/bin/bash
set -e

./check-root.sh

apt remove openssh-server
apt install openssh-server
service ssh --full-restart
