#!/bin/bash
IFNAME=enp1s0
/sbin/ip addr replace 192.168.1.10/24 dev $IFNAME
/sbin/ip link set dev $IFNAME up
/usr/sbin/dnsmasq \
--no-daemon \
--listen-address 192.168.1.10 \
--bind-interfaces \
-p0 \
--dhcp-authoritative \
--dhcp-range=192.168.1.100,192.168.1.200 \
--bootp-dynamic \
--dhcp-boot=openwrt-22.03.3-*-initramfs-* \
--log-dhcp \
--enable-tftp \
--tftp-root=$(pwd)