#/usr/bin/expect -c "                                                                                                  
##spawn /usr/bin/python /usr/local/bin/ansible-playbook -i ./ansible_hosts -l master ./sshkeyless.yml -k
#spawn /usr/bin/python /usr/local/bin/ansible-playbook -i ./ansible_hosts ./sshkeyless.yml -k
#expect \"SSH password: \"
#send \"vagrant\n\"
#expect \"*#\"                                                                                                         
#"
/usr/bin/python /usr/local/bin/ansible-playbook -i ./ansible_hosts ./sshkeyless.yml
for x in 11 12 13 21  ;do IP=10.10.0.${x}; echo "-----> $IP"; ssh vagrant@$IP 'cat /etc/hosts' ;done
for x in 11 12 13 21  ;do IP=10.10.0.${x}; echo "-----> $IP"; ssh vagrant@$IP 'cat ~/.ssh/authorized_keys' ;done
