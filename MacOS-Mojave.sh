echo Building...
apt update
git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM
wget -q --show-progress --no-check-certificate --progress=dot:giga -O MyDisk.qcow2 https://tinyurl.com/9v4p8d5c
sudo python3  -m pip install click
./jumpstart.sh --mojave
sudo apt install qemu-system qemu-utils python3 python3-pip -y 
HEADLESS=0 MEM=7G CPUS=8 SYSTEM_DISK=MyDisk.qcow2 ./headless.sh
