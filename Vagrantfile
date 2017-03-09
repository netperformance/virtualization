# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vbguest.auto_update = false
  #config.vm.provision "file", source: "https://raw.guthub....../git-config", destination: "~/.gitconfig"
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision.sh"

  # VM Loadbalancer
  config.vm.define "lb01" do |lb01|
     lb01.vm.hostname = "lb01"
     lb01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_lb.sh"
     lb01.vm.network "private_network", ip: "192.168.10.2"
  end

  # VM Application 01
  config.vm.define "app01" do |app01|
     app01.vm.hostname = "app01"
     app01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_app.sh"
     app01.vm.network "private_network", ip: "192.168.10.3"
  end

  # VM Application 02
  config.vm.define "app02" do |app02|
     app02.vm.hostname = "app02"
     app02.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_app.sh"
     app02.vm.network "private_network", ip: "192.168.10.4"
  end

  # VM Database
  config.vm.define "db01" do |db01|
     db01.vm.hostname = "db01"
     db01.vm.provision "shell", path: "https://raw.githubusercontent.com/netperformance/virtualization/master/provision_db.sh"
     db01.vm.network "private_network", ip: "192.168.10.5"
  end

end
