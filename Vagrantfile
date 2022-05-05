BOX_NAME = "oraclelinux/8"
BOX_URL = "https://oracle.github.io/vagrant-projects/boxes/oraclelinux/8.json"
N = 2

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
	config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
        v.cpus = 2
    end
    
	config.vm.define "ansible-control" do |control|
        control.vm.box = BOX_NAME
        control.vm.box_url = BOX_URL
        control.vm.network "private_network", ip: "192.168.50.9"
        control.vm.hostname = "ansible-control"
        control.vm.provision "shell", path: "provisions/ansible-control.sh"
    end

    config.vm.define "k8s-master" do |master|
        master.vm.box = BOX_NAME
        master.vm.box_url = BOX_URL
        master.vm.network "private_network", ip: "192.168.50.10"
        master.vm.hostname = "k8s-master"
        master.vm.provision "shell", path: "provisions/add-common-ssh.sh"
    end

    (1..N).each do |i|
        config.vm.define "node-#{i}" do |node|
            node.vm.box = BOX_NAME
            node.vm.box_url = BOX_URL
            node.vm.network "private_network", ip: "192.168.50.#{i + 10}"
            node.vm.hostname = "node-#{i}"
            node.vm.provision "shell", path: "provisions/add-common-ssh.sh"
        end
    end
end
