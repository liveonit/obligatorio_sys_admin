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
	docker run --rm -v $$PWD:/usr/share/proj --name nwtools liveonit/nwtools bash
