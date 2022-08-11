#!/bin/bash

yum -y install python39
python3 -m pip install --user ansible-core
echo "export PATH=$PATH:/root/.local/bin" >> /root/.bashrc

$(date > /tmp/date.txt)
echo "RedHat" >> /tmp/date.txt
