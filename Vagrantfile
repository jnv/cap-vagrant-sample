# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, id: 'ssh', guest: 22, host: 2222
  config.vm.synced_folder "deploy", "/home/vagrant/app"
  config.vm.provision "shell", inline: "sudo apt-get -y install git ruby"
end
