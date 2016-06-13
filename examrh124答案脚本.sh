#!/bin/bash
echo examplewestos | passwd  --stdin root
hostnamectl set-hostname station.domain50.example.com
groupadd -g 600 sysadms
useradd -u 2013 tommy
echo redhat | passwd --stdin tommy
useradd -s /sbin/nologin Jimmy
echo redhat | passwd --stdin Jimmy
useradd -G 600 natasha
echo redhat | passwd --stdin natasha
useradd -G 600 harry
echo redhat | passwd --stdin harry
mkdir /home/materials
chgrp sysadms /home/materials
chmod 2760 /home/materials
#
cp /etc/fstab	/var/tmp
setfacl -m u:harry:000 /var/tmp/fstab
setfacl -m u:natasha:rwx /var/tmp/fstab
chown root /var/tmp/fstab
chgrp root /var/tmp/fstab
chmod o+r /var/tmp/fstab
chmod o-x /var/tmp/fstab
#
sed 's/server 0.rhel.pool.ntp.org iburst/server 172.25.254.250 iburst/g'  /etc/chrony.conf > /mnt/chrony.conf 
rm -fr /etc/chrony.conf
mv /mnt/chrony.conf /etc/
sed 's/server 1.rhel.pool.ntp.org iburst//g'  /etc/chrony.conf > /mnt/chrony.conf 
rm -fr /etc/chrony.conf
mv /mnt/chrony.conf /etc/
sed 's/server 2.rhel.pool.ntp.org iburst//g'  /etc/chrony.conf > /mnt/chrony.conf 
rm -fr /etc/chrony.conf
mv /mnt/chrony.conf /etc/
sed 's/server 3.rhel.pool.ntp.org iburst//g'  /etc/chrony.conf > /mnt/chrony.conf 
rm -fr /etc/chrony.conf
mv /mnt/chrony.conf /etc/
sed 's/server 4.rhel.pool.ntp.org iburst//g'  /etc/chrony.conf > /mnt/chrony.conf 
systemctl restart chronyd.service
rm -fr /etc/chrony.conf
mv /mnt/chrony.conf /etc/
find / -group mail -exec cp -pr {} /root/findresults \; 2>/dev/null
##
grep ich /usr/share/mime/packages/freedesktop.org.xml > /root/lines1
sed s/^\ *//g /root/lines1 >/root/lines
