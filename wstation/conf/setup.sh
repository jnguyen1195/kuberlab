vagrant up
/usr/bin/expect -c "                                                                                                  
spawn /usr/bin/python /usr/local/bin/ansible-playbook -i ./ansible_hosts ./sshkeyless.yml -k
expect \"SSH password: \"
send \"vagrant\n\"
expect \"*#\"                                                                                                         
"
ansible-playbook -i ansible_hosts config.yml -e "reboot=true"
ansible-playbook -i ansible_hosts kubecfg.yml
