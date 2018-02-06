#! /bin/bash

# Install basic developer tools 

sudo yum update
sudo yum -y upgrade
sudo yum install -y git flex bison rpm-build gcc-gfortran 
sudo yum update
sudo yum -y upgrade
sudo yum install -y cmake 
sudo yum install -y perl-Extuils-Makemaker

sudo yum install -y perl-Tk perl-PDL pgplot pgplot-devel gnuplot perl-ExtUtils-F77 perl-PGPLOT bc 
#xorg-x11-server-Xorg gnome-session gdm
#sudo dnf group install gnome-desktop base-x

sudo service gdm start

curl -O http://packages.mccode.org/rpm/mccode.repo
sudo cp mccode.repo /etc/yum.repos.d/
sudo yum update
sudo yum -y upgrade
sudo yum install -y libtk-codetext-perl

cd /home/vagrant
sudo -u vagrant git clone https://github.com/McStasMcXtrace/McCode.git --recurse-submodules -depth=1
cd McCode
sudo -u vagrant ./build_rpms_mcstas 2.5beta01 meta
rm dist/mcstas-tools-matlab-mcplot*.rpm
sudo rpm -i dist/*.rpm