# Darth Server

> It's a simple development-environment on EC2 [AWS](https://console.aws.amazon.com/).

<p align="center">
    <img width="450px" src="darth-ascii.png">
</p>

## Purpouse

```
This project contains a lot of packages that it is necessary to use when we're going to develop during day-to-day!
```

## Environment

| NAME          | S.O            | TYPE       |
| ------------------ |:----------------------:| -------------:|
| darth-server  | Ubuntu 20.4    | t2.micro   |

## Packages

List of packages that exist until now:

* ZSH

- [x] [OH-MY-ZSH](https://ohmyz.sh/#install)

* Package Manager

- [x] [Brew](https://brew.sh/)

* DEV

- [x] [Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
- [x] [Python](https://python.org.br/)
- [x] [NodeJS](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)

* IaC/CLI

- [x] [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [x] [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html)

* Automation

- [x] [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)

## Features

## Demo

## Usage

```
$ git clone https://github.com/rneiva/darth-server.git
$ ./install.sh
```
## Roadmap

- [x] Create script [Install](#install.sh) - 07/09/2021
- [ ] Implementing more packages
- [ ] Create Ansible Playbook to install EC2 automatically
- [ ] Implementing auto-update packages
- [ ] Create docker container
