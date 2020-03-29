rm ./InstallLog.log

echo "Setup started." 2>&1 | tee -a InstallLog.log

echo "Shell Settings." 2>&1 | tee -a InstallLog.log
sh ./setup/ShellSettings.sh 2>&1 | tee -a InstallLog.log

echo "System Environments Settings." 2>&1 | tee -a InstallLog.log
sh ./setup/SystemEnvironmentsSettings.sh | tee -a InstallLog.log

echo "Install Ansible." 2>&1 | tee -a InstallLog.log
sh ./setup/AnsibleInstall.sh | tee -a InstallLog.log

cd setup

echo "Execute ansible playbook." 2>&1 | tee -a InstallLog.log
ansible-playbook setup.yml -i inventory | tee -a InstallLog.log

echo "Setup finished." 2>&1 | tee -a InstallLog.log
