#!/bin/sh
sudo apt-get install build-essential libexpat-dev libgmp-dev libssl-dev libpcap-dev byacc flex git python-dev python-pastedeploy python-paste python-twisted
cd 
git clone https://github.com/lagopus/lagopus.git
cd lagopus
./configure
make && sudo make install

sudo modprobe uio
sudo insmod ./src/dpdk/build/kmod/igb_uio.ko
sudo insmod ./src/dpdk/build/kmod/rte_kni.ko
lsmod | egrep 'uio|kni'

sudo vi /etc/sysctl.conf
# vm.nr_hugepages = 256
sudo mkdir -p /mnt/huge
sudo vi /etc/fstab
# nodev /mnt/huge hugetlbfs defaults 0 0
grep -i "HugePages" /proc/meminfo
