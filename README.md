#**Directory**
The kuberlab directories are organized in different setup categories:
aws ,  workstation
Each category contains the basic directories:

* config: contains Vagrantfile and ansible playbook to set up a cluster off single KuberMaster and 3 nodes
* kubedir: contains all deployment yaml files for kubernetes
* dockerdir: contains all docker-compose.yml and Dockerfile files.
#**Instruction**
##**Set up cluster **
  cd kuberlab/config before executing any command.
  1_Install virtual box_
   * for debian: sudo apt-get install virtualbox
   * for centos: sudo yum install virtualbox
  1._Launch kubemaster and 3 nodes{node1,node2,node3} through Vagrant_
   1. "vagrant up"  will bring up all 4 hosts {node1,node2,node3,kubemaster}
   _Please refer to https://www.vagrantup.com/docs/cli/ for more details_
  2._Configure ssh keyless_
   * launch: ansible-playbook -i ansible_hosts keyless.yml
   * _OR_ ansible-playbook -i ansible_hosts	keyless.yml -e "publickey=/yourpath/id_rsa.pub"
   Note that  /etc/hosts of each node  will contain the IP Hostnames value pairs  of ansible_hosts
   