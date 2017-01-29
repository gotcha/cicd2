SHELL := /bin/bash

ubuntu-16-04.ova: Vagrantfile
	vagrant up --provider virtualbox
	vagrant halt
	VBoxManage export $$(less .vagrant/machines/default/virtualbox/id) --ovf20 -o ubuntu-16-04.ova

Vagrantfile:
	vagrant init bento/ubuntu-16.04
