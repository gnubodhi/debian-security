# debian-security
My security configuration for Debian

Partition the system

/
/boot (rw)
/home (rw,nosuid,nodev)
swap
/var
/var/log (rw,nosuid,nodev,noexec)
/var/log/audit (rw,nosuid,nodev,noexec)

sudo grub-mkpasswd-pbkdf2

sudo systemctl enable ufwAuto.service
sudo systemctl start ufwAuto.service
sudo update-grub
sudo apt install libpam-cracklib ipset
sudo chmod 700 /boot /etc/{iptables,arptables}
