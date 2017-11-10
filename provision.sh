#!/bin/bash

hostnamectl set-hostname $0

subscription-manager register --username=stauil1@redhat.com --password=S@muel123
subscription-manager attach --pool=8a85f981568e999d01568ed2241a67c2
subscription-manager repos --disable="*"
subscription-manager repos \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-server-extras-rpms" \
    --enable="rhel-7-server-ose-3.3-rpms"

yum install -y wget git net-tools bind-utils iptables-services bridge-utils bash-completion
yum install -y NetworkManager httpd-tools

yum update -y

yum install -y atomic-openshift-utils

yum install -y docker-1.10.3

sed -i '/OPTIONS=.*/c\OPTIONS="--selinux-enabled --insecure-registry 172.30.0.0/16"' \
/etc/sysconfig/docker

yum install -y cockpit-*
###### ONLY IN MASTER
ssh-keygen

for host in master.192.168.56.103.xip.io \
    node1.192.168.56.104.xip.io \
    node2.192.168.56.105.xip.io; \
    do ssh-copy-id -i ~/.ssh/id_rsa.pub $host; \
    done

cp /etc/ansible/hosts{,.bak}
