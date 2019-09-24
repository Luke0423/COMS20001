#!/bin/bash

# software install: packaged software
sudo                                  apt-get --quiet --assume-yes install libpcap-dev
sudo                                  apt-get --quiet --assume-yes install netcat
sudo                                  apt-get --quiet --assume-yes install    python2.7
sudo                                  apt-get --quiet --assume-yes install libpython2.7
sudo                                  apt-get --quiet --assume-yes install qemu
sudo DEBIAN_FRONTEND="noninteractive" apt-get --quiet --assume-yes install wireshark

# software install: Linaro GCC tool-chain
wget --quiet http://releases.linaro.org/components/toolchain/binaries/5.1-2015.08/arm-eabi/gcc-linaro-5.1-2015.08-x86_64_arm-eabi.tar.xz
sudo tar --extract --directory /usr/local --file gcc-linaro-5.1-2015.08-x86_64_arm-eabi.tar.xz
rm --force gcc-linaro-5.1-2015.08-x86_64_arm-eabi.tar.xz

# teaching material: download
for SHEET in 1 2 3 4 5 6 ; do
  wget --quiet --directory-prefix /home/vagrant/${UNIT_CODE}/os http://assets.phoo.org/${UNIT_PATH}/csdsp/os/sheet/lab-${SHEET}_q.pdf
  wget --quiet --directory-prefix /home/vagrant/${UNIT_CODE}/os http://assets.phoo.org/${UNIT_PATH}/csdsp/os/sheet/lab-${SHEET}_q.tar.gz
done

for SHEET in 1 2 3 4 5 6 ; do
  wget --quiet --directory-prefix /home/vagrant/${UNIT_CODE}/net http://assets.phoo.org/${UNIT_PATH}/csdsp/net/sheet/lab-${SHEET}_q.pdf
done

# teaching material: unarchive 
for SHEET in 1 2 3 4 5 6 ; do
  tar --extract --gunzip --directory /home/vagrant/${UNIT_CODE}/os --file /home/vagrant/${UNIT_CODE}/os/lab-${SHEET}_q.tar.gz
done

# teaching material: permissions
sudo chown --recursive vagrant:vagrant /home/vagrant/${UNIT_CODE}
