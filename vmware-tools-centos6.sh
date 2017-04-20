#!/bin/bash
echo 'Installing VmWare Tools...'
echo "[vmware-tools]
name=VMware Tools for Red Hat Enterprise Linux $releasever - $basearch
baseurl=http://packages.vmware.com/tools/esx/latest/rhel6/$basearch
enabled=1
gpgcheck=1
gpgkey=http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub" >> /etc/yum.repos.d/vmware.repo
yum -y install vmware-tools-esx-nox
echo 'VmWare Tools installed'
