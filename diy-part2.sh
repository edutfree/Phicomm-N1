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

sed -i 's/192.168.1.1/192.168.11.2/g' package/base-files/luci/bin/config_generate
#sed -i 's/LEDE/OpenWrt(2026.9.18)/g' package/base-files/luci/bin/config_generate
sed -i 's/LEDE/OpenWrt-'"$(date -d "now" +%Y-%m-%d)"'/g' package/base-files/luci/bin/config_generate

sed -i 's/192.168.1.1/192.168.11.2/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/OpenWrt-'"$(date -d "now" +%Y-%m-%d)"'/g' package/base-files/files/bin/config_generate
