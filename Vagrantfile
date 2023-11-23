# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

#=======================================================
# General Configuration
#=======================================================
    config.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    config.vm.provider "virtualbox" do |v|

      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--ioapic", "on"]

    end
    config.vm.box_check_update = false

#=======================================================
# HAProxy
#=======================================================
    config.vm.define "haproxy" do |node|
      node.vm.network "private_network", ip: "192.168.56.11"
                node.vm.hostname = "haproxy"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
    end
#=======================================================
# DNS server
#=======================================================
    config.vm.define "dns" do |node|
      node.vm.network "private_network", ip: "192.168.56.12"
                node.vm.hostname = "dns"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
    end
#=======================================================
# Web server 1
#=======================================================
    config.vm.define "web_server1" do |node|
      node.vm.network "private_network", ip: "192.168.56.101"
                node.vm.hostname = "web_server1"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
    end
#=======================================================
# Web server 2
#=======================================================
    config.vm.define "web_server2" do |node|
      node.vm.network "private_network", ip: "192.168.56.102"
                node.vm.hostname = "web_server2"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
    end
#=======================================================
# Web server 3
#=======================================================
    config.vm.define "web_server3" do |node|
      node.vm.network "private_network", ip: "192.168.56.103"
                node.vm.hostname = "web_server3"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
    end
#=======================================================
# Web server 3
#=======================================================
    config.vm.define "win_client" do |node|
      node.vm.network "private_network", ip: "192.168.56.200"
          node.vm.hostname = "web_server2"
          config.vm.box = "gusztavvargadr/windows-10"
    end
end
