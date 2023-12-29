cd openwrt
make -j $(($(nproc)+1)) download world
