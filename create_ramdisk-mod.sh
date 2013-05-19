#!/bin/bash
# part of:
# create_boot.img.sh
#
#
# 2011 nubecoder
# http://www.nubecoder.com/
#
echo "cleaning old file:"
rm -f ramdisk.img
echo "create ramdisk.img"
mkbootfs ramdisk-mod > ramdisk.cpio
minigzip < ramdisk.cpio > ramdisk.img
echo "cleaning up temp files:"
rm -f ramdisk.cpio
echo "move ramdisk.img to kernel directory"
mv ramdisk.img ../android_kernel_samsung_aries/source/usr/galaxysmtd_initramfs_files/
echo "done!"
exit

