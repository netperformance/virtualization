# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_BOX = "ubuntu/trusty64"
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = VAGRANT_BOX
  config.vbguest.auto_update = false
  #config.vm.provision "file", source: "https://raw.guthub....../git-config", destination: "~/.gitconfig"
  #config.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision.sh"

  # VM Loadbalancer 01
  config.vm.define "lb01" do |lb01|
     lb01.vm.hostname = "lb01"
     lb01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_lb.sh"
     lb01.vm.network "private_network", ip: "192.168.10.2"
  end

  # VM Loadbalancer 02
  config.vm.define "lb02" do |lb02|
     lb02.vm.hostname = "lb02"
     lb02.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_lb.sh"
     lb02.vm.network "private_network", ip: "192.168.10.3"
  end

  # VM Application 01
  config.vm.define "app01" do |app01|
     app01.vm.hostname = "app01"
     app01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_app.sh"
     app01.vm.network "private_network", ip: "192.168.10.4"
  end

  # VM Application 02
  config.vm.define "app02" do |app02|
     app02.vm.hostname = "app02"
     app02.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_app.sh"
     app02.vm.network "private_network", ip: "192.168.10.5"
  end

  # VM Database
  config.vm.define "db01" do |db01|
     db01.vm.hostname = "db01"
     db01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_db.sh"
     db01.vm.network "private_network", ip: "192.168.10.6"
  end

  # VM DNS
  config.vm.define "dns" do |dns|
     dns.vm.hostname = "dns"
     dns.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_dns.sh"
     dns.vm.network "private_network", ip: "192.168.10.7"
  end

  # VM Configuration (Ansible)
  config.vm.define "conf" do |conf|
     conf.vm.hostname = "conf"
     conf.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_conf.sh"
     conf.vm.network "private_network", ip: "192.168.10.8"
  end

end
