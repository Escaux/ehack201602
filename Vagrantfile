Vagrant.configure("2") do |config|
  config.vm.define "dns" do |nodeconfig|
    nodeconfig.vm.box = "debian/jessie64"
    nodeconfig.vm.hostname = "dns.chimay.beer"
    nodeconfig.vm.network :private_network, ip: "192.168.42.10"
  end

  config.vm.define "www" do |nodeconfig|
    nodeconfig.vm.box = "debian/jessie64"
    nodeconfig.vm.hostname = "www.chimay.beer"
    nodeconfig.vm.network :private_network, ip: "192.168.42.11"
  end

  config.vm.define "db" do |nodeconfig|
    nodeconfig.vm.box = "debian/jessie64"
    nodeconfig.vm.hostname = "db.chimay.beer"
    nodeconfig.vm.network :private_network, ip: "192.168.42.12"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
