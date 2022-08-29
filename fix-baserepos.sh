### Update Base repo using below set of commands.

dnf clean all

rm -rf /var/cache/dnf

cd /etc/yum.repos.d/

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*

sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

sudo yum update

### Install Docker-ce using below set of commands

sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum autoremove runc -y
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
