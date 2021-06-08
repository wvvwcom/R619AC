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

#获取Lienol-xiaorouji-passwall
# git clone https://github.com/xiaorouji/openwrt-package/lienol/ package/diy-packages/lienol
# git clone https://github.com/xiaorouji/openwrt-package/tree/master/lienol/luci-app-passwall package/luci-app-passwall
# git clone https://github.com/kenzok8/openwrt-packages.git package/diy-packages
# git clone https://github.com/kenzok8/small.git package/small



# 增加ssr
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
# git clone https://github.com/fw876/helloworld.git package/openwrt-packages/luci-app-ssr-plus
# add helloworld
git clone https://github.com/fw876/helloworld.git package/helloworld
# helloworld depend start
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks package/lean/dns2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/kcptun package/lean/kcptun
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs package/lean/simple-obfs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan package/lean/trojan
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks package/lean/ipt2socks
# helloworld depend end
# package from lede begin
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-accesscontrol package/lean/luci-app-accesscontrol 
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus 
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-cpufreq package/lean/luci-app-cpufreq
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt package/lean/pdnsd-alt
# package from lede end