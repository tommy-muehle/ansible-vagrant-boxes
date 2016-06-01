yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean all
rm -rf /etc/yum.repos.d/epel.repo
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/*
