.PHONY: create_ssh_key
create_ssh_key:
	ssh-keygen -b 2048 -t rsa -f ssh-key -q -N ""
