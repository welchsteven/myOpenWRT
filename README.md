vagrant up
vagrant provision
vagrant ssh
Ansible is used to configure the environment

./scripts/feeds update -a
./scripts/feeds install -a

#Start with the default mikrotik config
wget https://downloads.openwrt.org/releases/22.03.3/targets/ath79/mikrotik/config.buildinfo -O .config

# Configure the firmware image and the kernel

make menuconfig
make -j $(nproc) kernel_menuconfig

# Build the firmware image

make -j $(nproc) defconfig download clean world
