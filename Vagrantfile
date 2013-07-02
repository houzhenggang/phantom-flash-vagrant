# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|

  config.vm.box       = 'lucid32'
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  config.vm.hostname = 'flashbox'
  
  config.vm.synced_folder ".", "/vagrant", :owner => "vagrant", :group => "vagrant", :extra => "dmode=775,fmode=775"

  # Cache APT packages outside of the vm
  config.vm.synced_folder "setup/cache", "/var/cache/apt/archives/"

  # HTTP
  # config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

  config.vm.provision :shell, :path => "setup/config.sh"
end
