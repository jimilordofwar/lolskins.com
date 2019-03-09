FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive

MAINTAINER lolskins.com

RUN apt-get update
RUN apt-get -y upgrade

# Add package to allow additional apt repositories to be installed
RUN apt-get -y install software-properties-common

# Setup standard user account
RUN useradd -d /home/lolskins -m lolskins

RUN apt-get -y install mariadb-client mariadb-server mariadb-common phpmyadmin

# Base packages
RUN apt-get -y install \ 
  whois locales apt-utils binutils build-essential ca-certificates \
  cron curl dos2unix fakeroot geoip-bin geoip-database geoipupdate \
  gnupg zip unzip git gzip htmldoc htmldoc-common libfltk1.1 less \
  lftp mcrypt memcached logrotate logwatch make mime-support nfs-common \
  nfs-kernel-server nfs4-acl-tools ntpdate openssh-client openssh-server \
  openssh-sftp-server openssl rsync rsyslog screen sed sudo tar vim \
  vim-common vim-runtime vim-tiny wget xml-core gcc mlocate

RUN apt-get -y install apache2 apache2-utils libapache2-mod-apreq2 libapache2-mod-geoip libapache2-mod-gnutls libapache2-mod-nss libapache2-mod-perl2 libapache2-mod-perl2-dev libapache2-mod-php libapache2-mod-rpaf libapache2-reload-perl libapache2-request-perl libappconfig-perl libapr-memcache0 libapr1 libapreq2-3 libaprutil1 libaprutil1-dbd-mysql libaprutil1-ldap

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql-slave

RUN service apache2 restart
RUN service mysql restart

COPY ./index.php /var/www/html/
EXPOSE 80
