echo Installing Software...
sudo apt install qemu-system qemu-utils python3 python3-pip -y 
sudo apt update
git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM
sudo python3  -m pip install click
./jumpstart.sh --mojave
wget -q --show-progress --no-check-certificate -O MyDisk.qcow2 https://tinyurl.com/9v4p8d5c
HEADLESS=0 MEM=7G CPUS=8 SYSTEM_DISK=MyDisk.qcow2 ./headless.sh
