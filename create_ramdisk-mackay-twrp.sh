#!/bin/bash
# part of:
# create_boot.img.sh
#
#
# 2011 nubecoder
# http://www.nubecoder.com/
#
echo "cleaning old file:"
rm -vf ramdisk-recovery.img
echo "create ramdisk-recovery.img"
mkbootfs ramdisk-mackay-twrp > ramdisk-recovery.cpio
minigzip < ramdisk-recovery.cpio > ramdisk-recovery.img
echo "cleaning up temp files:"
rm -vf ramdisk-recovery.cpio
echo "move ramdisk-recovery.img to kernel directory"
mv -vf ramdisk-recovery.img ../android_kernel_samsung_aries/source/mtwrp.img
echo "done!"
exit

