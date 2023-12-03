.PHONY: create_ssh_key
create_ssh_key:
	ssh-keygen -b 2048 -t rsa -f ssh-key -q -N ""

.PHONY: setup_vms
setup_vms:
	vagrant up

.PHONY: destroy_vms
destroy_vms:
	vagrant destroy -f

.PHONY: configure_vms
configure_vms:
  cd playbook && ansible-playbook -i inventory.yml playbook.yml

.PHONY: power_on_win_client
power_on_win_client:
	vagrant up win_client

.PHONY: connect_to_win_client
connect_to_win_client:
  vagrant ssh win_client

