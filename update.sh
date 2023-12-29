
cd openwrt
git branch -a
git tag
# git checkout v21.02.3
./scripts/feeds update -a
./scripts/feeds install -a
