printf "password:"
read pass
cd /var/
git clone https://github.com/openvswitch/ovs.git
cd ovs

sed -e 's/@VERSION@/2.9.90/' rhel/openvswitch-fedora.spec.in > /tmp/ovs.spec 
echo "$pass" | sudo builddep /tmp/ovs.spec

./boot.sh && ./configure
make rpm-fedora

