#!/usr/bin/env bash
# WM65 Launcher：崩溃日志抓取 + 壁纸提取/保存到相册
# 用法：手机用 USB 连接电脑并开启 USB 调试，然后在电脑上运行：
#   bash WM65_诊断与壁纸提取.sh
set -e

PKG="com.wm65.launcher"

echo "=== 0. 设备检查 ==="
adb get-state

echo
echo "=== 1. 抓取崩溃日志（请复现一次“设置界面停止运行”） ==="
echo "现在请打开设置页触发崩溃，脚本会抓 25 秒日志…"
adb logcat -c
timeout 25 adb logcat -v time > wm65_logcat.txt || true
grep -nE "FATAL EXCEPTION|AndroidRuntime|$PKG" wm65_logcat.txt | tail -60 || echo "(未捕获到，请确认崩溃已复现)"
echo "完整日志已保存到 wm65_logcat.txt"

echo
echo "=== 2. 列出 App 私有目录（壁纸缓存通常在此；需要 root） ==="
adb shell "run-as $PKG ls -l files cache 2>/dev/null" || true
adb shell "su -c 'ls -l /data/data/$PKG/files /data/data/$PKG/cache 2>/dev/null'" || true

echo
echo "=== 3. 提取壁纸 ==="
echo "--- 3a. 系统自带壁纸（无需 root） ---"
adb shell 'ls -l /system/media/wallpapers /product/media/wallpapers /system/media/wallpaper 2>/dev/null' || true
adb shell 'ls -l /system/etc/wallpapers /product/etc/wallpapers 2>/dev/null' || true

echo "--- 3b. App 内壁纸（需 root，按实际路径修改） ---"
echo "如果上面第2步列出了 files 里的 .jpg/.png，用下面命令拉出来（把 <文件> 换成实际文件名）："
echo "  adb shell \"su -c 'cat /data/data/$PKG/files/<文件>'\" > wallpaper.jpg"
echo "  adb push wallpaper.jpg /sdcard/Pictures/WM65壁纸.jpg"

echo "--- 3c. 直接把提取出的图片放进相册 ---"
mkdir -p wm65_wallpapers
echo "把上面得到的图片放进当前目录后，执行："
echo "  adb push wm65_wallpapers /sdcard/Pictures/"
echo "  然后在相册里刷新即可看到（Pictures/WM65）"

echo
echo "完成。请把 wm65_logcat.txt 里的 FATAL EXCEPTION 段发给我，我据此修稳定性。"
