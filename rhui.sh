#!/bin/bash
cd /root

# download the file
curl https://itocjoeh.github.io/rh-amazon-rhui-client-3.0.45-1.el7.noarch.rpm >rh-amazon-rhui-client-3.0.45.rpm

# remove the existing version
yum remove -y rh-amazon-rhui-client

# Sets it to look locally for the package when you install it
rpm -ivh --nodeps /root/rh-amazon-rhui-client*

# Install it
yum reinstall -y rh-amazon-rhui-client

# Housekeeping afterwards
yum clean all 
yum repolist 
yum list
