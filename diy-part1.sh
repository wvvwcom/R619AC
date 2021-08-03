#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# 增加https://github.com/kenzok8/openwrt-packages到更新源
# src-git kenzo https://github.com/kenzok8/openwrt-packages

# fw876/helloworld
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i 's@coolsnowwolf/packages@P3TERX/packages@' feeds.conf.default

# 删除默认软件
# sed -i 's/autosamba//g' target/linux/ipq40xx/Makefile
# sed -i 's/luci-app-ipsec-vpnd//g' target/linux/ipq40xx/Makefile
# sed -i 's/luci-app-zerotier//g' target/linux/ipq40xx/Makefile

# 获取Lienol-xiaorouji-passwall
# git clone https://github.com/xiaorouji/openwrt-package/lienol/ package/diy-packages/lienol
# git clone https://github.com/xiaorouji/openwrt-package/tree/master/lienol/luci-app-passwall package/luci-app-passwall
# git clone https://github.com/kenzok8/openwrt-packages.git package/diy-packages
# git clone https://github.com/kenzok8/small.git package/small

# 增加ssr
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
# git clone https://github.com/fw876/helloworld.git package/openwrt-packages/luci-app-ssr-plus

# package from lienol begin
rm -rf package/lienol
git clone https://github.com/Lienol/openwrt-package.git package/lienol
svn co https://github.com/Lienol/openwrt-luci/trunk/transplant/luci-app-ksmbd package/lienol/luci-app-ksmbd
# package from lienol end