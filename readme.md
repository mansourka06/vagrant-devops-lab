# VAGRANT-DEVOPS-LAB

Linux Tool Installation Script

## Requirements

- Virtual Box
- Vagrant
- vagrant-vbguest plugin
    - vagrant plugin install vagrant-vbguest --plugin-version 0.21


## Installation

This script automates the installation of various tools on a Linux system. It supports installing:
- Ansible
 - Docker
 - Terraform 
 - Vim
 - Git
 - Curl
 - Jenkins.


## Usage

### Commands :

* Clone this repository :
```bash
git clone https://github.com/mansourka06/vagrant-devops-lab.git
```

* Open a terminal and navigate to the directory where the script is located.
```bash
vagrant up
```

> **:NOTE:**
 - Replace the list of packages as needed.
 - The script assumes a CentOS or Red Hat-based distribution.
 - For Jenkins installation, make sure to review Jenkins' official documentation for any additional setup steps.

> **:Available Options:**
 - docker: Install Docker and start the Docker service.
 - ansible: Install Ansible.
 - terraform: Install Terraform.
 - vim: Install Vim.
 - curl: Install Curl.
 - git: Install Git.
 - jenkins: Install Jenkins
 
* To shutdown VM use command above:
```bash
vagrant halt
```

## Author
Mansour KA
