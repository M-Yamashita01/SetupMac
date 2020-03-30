#!/bin/zsh

rm ./InstallLog.log

echo "Setup started." 2>&1 | tee -a InstallLog.log

echo "Install Ansible." 2>&1 | tee -a InstallLog.log
zsh ./setup/AnsibleInstall.sh | tee -a InstallLog.log

echo "Execute ansible playbook." 2>&1 | tee -a InstallLog.log
ansible-playbook ./setup/setup.yml -i inventory | tee -a InstallLog.log

echo "Shell Settings." 2>&1 | tee -a InstallLog.log
zsh ./setup/ShellSettings.sh 2>&1 | tee -a InstallLog.log

echo "System Environments Settings." 2>&1 | tee -a InstallLog.log
zsh ./setup/SystemEnvironmentsSettings.sh | tee -a InstallLog.log

echo "Setup finished." 2>&1 | tee -a InstallLog.log

