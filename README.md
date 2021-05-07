# packer
Install packer
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install packer
rm -f /usr/sbin/packer

# Adding key and secret of aws
aws configure

# To run packer
packer build myamipacker.json
