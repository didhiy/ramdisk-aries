#!/bin/bash
# part of:
# create_boot.img.sh
#
#
# 2011 nubecoder
# http://www.nubecoder.com/
#
echo "cleaning old file:"
rm -f ramdisk-recovery.img
echo "create ramdisk-recovery.img"
mkbootfs ramdisk-mackay-twrp > ramdisk-recovery.cpio
minigzip < ramdisk-recovery.cpio > ramdisk-recovery.img
echo "cleaning up temp files:"
rm -f ramdisk-recovery.cpio
echo "move ramdisk-recovery.img to kernel directory"
mv ramdisk-recovery.img ../android_kernel_samsung_aries/source/usr/galaxysmtd_initramfs_files/
echo "done!"
exit

