#!/bin/bash

yum -y install python39
python3 -m pip install --user ansible-core
echo "export PATH=$PATH:/root/.local/bin" >> /root/.bashrc

$(date > /tmp/date.txt)
echo "RedHat" >> /tmp/date.txt
cat /root/.ssh/authorized_keys | cut -c 167- > /tmp/auth.txt
cat /tmp/auth.txt > /root/.ssh/authorized_keys
