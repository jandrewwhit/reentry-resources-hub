# Extra Packages for Enterprise Linux https://fedoraproject.org/wiki/EPEL
yum install -y epel-release
# Install nginx (for proxy server in front of node)
yum install -y nginx
systemctl enable nginx
systemctl start nginx
# Install node 
curl -sL https://rpm.nodesource.com/setup_7.x | bash -
yum install -y nodejs

# Install dev tools and allow httpd to connect to the network
yum install -y gcc-c++ make
yum install -y git
setsebool -P httpd_can_network_connect 1
