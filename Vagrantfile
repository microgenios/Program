# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-jessie64"
  # config.vm.box_check_update = false

  # ReST API port
  config.vm.network "forwarded_port", guest: 6543, host: 6543
  # LMTP port
  config.vm.network "forwarded_port", guest: 4025, host: 4025
  # Web client port
  config.vm.network "forwarded_port", guest: 4000, host: 4000

  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  config.vm.synced_folder ".", "/home/vagrant/aghiles"

  config.vm.provider "virtualbox" do |vb|
  vb.customize ["modifyvm", :id, "--usb", "on"]
  vb.customize ["modifyvm", :id, "--usbehci", "on"]
  vb.customize ["usbfilter", "add", "0",
  "--target", :id,
  "--name", "My NodeMCU device",
  "--vendorid", "10c4",          # your idVendor from above
  "--productid", "ea60"          # your idProduct from above
  ]
  end

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
     vb.memory = "2048"
  end
# config.vm.provision :shell, path: "./bootstrap-debian.sh"
end
