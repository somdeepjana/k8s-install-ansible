cat /vagrant/common_ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

sudo chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys
chmod 400 /home/vagrant/.ssh/authorized_keys