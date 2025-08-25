#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.11.11/g' package/base-files/files/bin/config_generate

# Modify hostname
#sed -i 's/OpenWrt/OpenWrt-2024.10.18/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# luci2 Modify default IP and hostname

sed -i 's/192.168.1.1/192.168.11.2/g' package/base-files/luci2/bin/config_generate
#sed -i 's/LEDE/OpenWrt(2025.3.21)/g' package/base-files/luci2/bin/config_generate
sed -i 's/LEDE/OpenWrt-'"$(date -d "now" +%Y-%m-%d)"'/g' package/base-files/luci2/bin/config_generate
