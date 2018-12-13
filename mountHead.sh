set -x
sudo yum -y install nfs-utils nfs-utils-lib

sudo mkdir -p /users/KM853426/software
sudo chmod 777 /users/KM853426/software

sudo mkdir -p /users/KM853426/scratch
sudo chmod 777 /users/KM853426/scratch

sudo mount -t nfs 192.168.1.1:/software /users/KM853426/software
sudo mount -t nfs 192.168.1.3:/scratch /users/KM853426/scratch

echo '192.168.1.1:/software /users/KM853426/software  nfs defaults 0 0' >> /etc/fstab
echo '192.168.1.3:/scratch /users/KM853426/scratch  nfs defaults 0 0' >> /etc/fstab

#echo "export PATH='$PATH:/users/BC843101/software/openmpi/3.1.2/bin'" >> /users/BC843101/.bashrc
#echo "export LD_LIBRARY_PATH='$LD_LIBRARY_PATH:/users/BC843101/software/openmpi/3.1.2/lib/'" >> /users/BC843101/.bashrc

echo "export PATH='$PATH:/software/openmpi/3.1.2/bin'" >> /users/KM853426/.bashrc
echo "export LD_LIBRARY_PATH='$LD_LIBRARY_PATH:/software/openmpi/3.1.2/lib/'" >> /users/KM853426/.bashrc
