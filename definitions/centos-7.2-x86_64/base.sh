# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/7/\$basearch
enabled=1
gpgcheck=0
EOM

yum groupinstall -y development
yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel wget gcc kernel-devel make libffi-devel python-devel

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# foo
export PATH=$PATH:/usr/local/bin

# Install ansible and required libs
wget bootstrap.pypa.io/get-pip.py -O - | python2.7
pip2.7 install ansible

# Install ruby
cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz -O ruby-2.3.1.tar.gz
tar -xzf ruby-2.3.1.tar.gz
cd ruby-2.3.1
./configure --prefix=/usr/local
make && make install
