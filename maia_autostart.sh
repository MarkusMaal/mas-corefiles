#!/usr/bin/bash
cd /home/$USER/.mas/maia
nohup python3 server.py > /dev/null 2>&1 &
