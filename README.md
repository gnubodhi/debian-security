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
sudo apt install libpam-cracklib ipset openresolv unbound
sudo chmod 700 /boot /etc/{iptables,arptables}
git clone https://github.com/ilikenwf/pg2ipset.git
cd pg2ipset
sudo make
sudo cp ipset-update.sh /usr/local/bin
sudo resolvconf -u
sudo root-hints: "/etc/unbound/root.hints"
sudo curl -o /etc/unbound/root.hints https://www.internic.net/domain/named.cache
