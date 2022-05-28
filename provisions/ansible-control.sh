

sudo yum install python38 python38-pip git -y

#sudo python3 -m pip install -U pip setuptools
sudo python3 -m pip install ansible kubernetes

cp /vagrant/common_ssh/id_rsa /home/vagrant/.ssh/

echo "StrictHostKeyChecking=no" >> /home/vagrant/.ssh/config

sudo chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 400 /home/vagrant/.ssh/config 

sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chmod 400 /home/vagrant/.ssh/id_rsa