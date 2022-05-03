

sudo yum install python3 -y

sudo python3 -m pip install -U pip setuptools
sudo python3 -m pip install ansible

cp /vagrant/common_ssh/id_rsa /home/vagrant/.ssh/

echo "StrictHostKeyChecking=no" >> /home/vagrant/.ssh/config

sudo chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 400 /home/vagrant/.ssh/config 

sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chmod 400 /home/vagrant/.ssh/id_rsa