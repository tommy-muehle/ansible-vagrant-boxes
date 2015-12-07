# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

yum groupinstall -y development
yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel wget

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# Install python 2.7.10
cd /tmp
wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz -O Python-2.7.10.tgz
tar -xzf Python-2.7.10.tgz
cd Python-2.7.10
./configure --prefix=/usr/local
make && make altinstall

cd
source ~/.bashrc

# Install setuptools
wget https://bootstrap.pypa.io/ez_setup.py -O - | /usr/local/bin/python2.7

# Install pip
cd /tmp
wget https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz -O pip-7.1.2.tar.gz
tar -xzf pip-7.1.2.tar.gz
cd pip-7.1.2
/usr/local/bin/python2.7 setup.py install

source ~/.bashrc

# Install ansible and required libs
/usr/local/bin/pip2.7 install ansible
