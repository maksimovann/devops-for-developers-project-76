install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml
