#!/bin/bash
source /root/.bashrc
podman exec -it lme-wazuh-manager /var/ossec/bin/rbac_control change-password
