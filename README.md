# Personal local development environment installation

This project includes scripts and Ansible playbooks for installing and configuring local development machine. Everything here is just for my own needs, but feel free to use anything you want here.

## Prerequisites

- Ubuntu 20.04
- Ansible https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## How to use

There are different playbooks for different purposes. One of the first to run is `package-install.yml` which installs common packages that are needed for development (vim, emacs, java, etc.).

It's good idea to first validate the playbook using Ansible's check mode (https://docs.ansible.com/ansible/latest/user_guide/playbooks_checkmode.html#check-mode-dry):

```
ansible-playbook package-install.yml --check
```

If it shows green light, the playbook can be run with command

```
ansible-playbook package-install.yml
```

### Install common packages
```
ansible-playbook package-install.yml
```

### Install docker
```
ansible-playbook docker-install.yml
```

### Configure dotfiles
```
ansible-playbook dotfiles.yml
```

Fetches and configures dotfiles (emacs, vim, etc.)

### Install Clojure
Leiningen is installed by `package-install.yml`, but Clojure CLI can be installed with
```
./clojure-install.sh
```

## Optional steps

Some optional steps that I probably want to run as well (or maybe automate these steps in the future?):

- Install preferred node version with `nvm install`, for example latest LTS could be installed with `nvm install --lts`
- Generate ssh keys `ssh-keygen -t ed25519 -C "your_email@example.com`. Use `ssh-add` to add key to authentication agent. Use `ssh-copy-id` to log in to remote server. 
- Configure git editor `git config --global core.editor emacsclient -c -a=''`

