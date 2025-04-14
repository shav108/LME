#!/bin/bash
sudo systemctl stop lme.service
sudo systemctl reset-failed
sudo -i podman volume rm -a
sudo -i podman secret rm -a
sudo rm -rf /opt/lme /etc/lme /etc/containers/systemd
sudo -i podman system reset --force
sudo rm -rf /var/lib/containers/ 
