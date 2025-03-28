#!/bin/bash
sudo virsh shutdown win10
while :
do
	sudo virsh list | grep "in shutdown" && break || echo "Waiting..."
done
sudo reboot now