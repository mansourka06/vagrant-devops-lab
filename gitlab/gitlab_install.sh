#!/bin/bash

IP=$(hostname -I | awk '{print $2}')
GITLABURL=$1

echo "START - install gitlab - "$IP

echo "[1]: install gitlab"

#!/bin/bash

# Update packages and install dependencies
sudo yum update -y
sudo yum install -y curl policycoreutils-python openssh-server

# Install and configure Postfix
sudo yum install -y postfix
sudo systemctl enable postfix
sudo systemctl start postfix

# Add GitLab repository
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash

# Install GitLab
sudo EXTERNAL_URL="http://localhost.com" yum install -y gitlab-ee

# Configure and start GitLab
sudo gitlab-ctl reconfigure

# Install GitLab Runner
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh | sudo bash
sudo yum install -y gitlab-runner

# Register GitLab Runner
sudo gitlab-runner register
# Follow the prompts to configure the Runner, including the registration token

sed -i s/"gitlab.example.com"/"${1}"/g /etc/gitlab/gitlab.rb
gitlab-ctl reconfigure

# Start GitLab Runner
sudo systemctl enable gitlab-runner
sudo systemctl start gitlab-runner

echo "END - install gitlab"

#sudo dpkg-reconfigure locales
