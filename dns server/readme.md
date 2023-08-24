# dns server

Setup dns server using vagrant stack 

# Description

- Here's a basic stack that install and configure a DNS server (BIND) on CentOS 7. The bash script assumes that you have root privileges and are running it on a clean CentOS 7 installation.

- This script installs the BIND DNS server, configures it to use Google's public DNS servers (8.8.8.8 and 8.8.4.4) as forwarders, and opens the DNS port (53) in the firewall.

- Remember that DNS server configuration can be complex and is often customized to your specific needs. This script provides a basic starting point, but you may need to make additional configurations based on your requirements, such as creating forward and reverse zones for your own domains.

- After running the script, you should have a basic DNS server set up on your CentOS 7 system. Make sure to test and verify the DNS server's functionality in your specific environment.

## Usage

1. **Clone the repository** :
```bash
git clone https://github.com/mansourka06/mka_devops_lab.git
```

2. **Go to the files install directory** :
```bash
cd vagrant/dns server
```

3. **Run the vagrant stack** :
```bash
vagrant up
```