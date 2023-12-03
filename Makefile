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

.PHONY: suspend_web_server_1
suspend_web_server_1:
	vagrant suspend web-server1
.PHONY: resume_web_server_1
resume_web_server_1:
	vagrant resume web-server1

.PHONY: suspend_web_server_2
suspend_web_server_2:
	vagrant suspend web-server2
.PHONY: resume_web_server_2
resume_web_server_2:
	vagrant resume web-server2

.PHONY: suspend_web_server_3
suspend_web_server_3:
	vagrant suspend web-server3
.PHONY: resume_web_server_3
resume_web_server_3:
	vagrant resume web-server3

