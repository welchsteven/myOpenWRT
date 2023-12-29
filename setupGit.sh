#!/bin/bash
git submodule update --init --recursive
git remote add upstream https://github.com/openwrt/openwrt.git
git fetch --tags upstream

