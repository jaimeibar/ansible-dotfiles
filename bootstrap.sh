#!/usr/bin/env bash
#
# Licence goes here
#

install_ansible() {
    # Are we installing Ansible on Linxux or Mac?
    apt-get -y ansible
    brew cleanup
    brew install ansible
}

run_ansible_playbook() {
    ansible-playbook ~/git/ansible-dotfiles/main.yml
}

install_brew() {
    # brew install command goes here
    curl https://brew.com
}

install_ansible
install_brew
run_ansible_playbook
