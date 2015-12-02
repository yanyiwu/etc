yum groupinstall -y "Development Tools"
yum install -y vim zsh nc wget cmake
yum install -y boost boost-devel boost-doc
yum install -y automake libtool flex bison pkgconfig gcc-c++ boost-devel libevent-devel zlib-devel python-devel ruby-devel openssl-devel

rpm -Uvh http://mirrors.kernel.org/fedora-epel/6/i386/epel-release-6-8.noarch.rpm

yum install autojump
