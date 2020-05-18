#!/bin/sh

#./mkbl2 spl/u-boot-spl.bin bl2.bin 14336
dd iflag=dsync oflag=dsync if=./uboot_files/E4412_N.bl1.SCP2G.bin of=/dev/sdb seek=1
dd iflag=dsync oflag=dsync if=./spl/itop4412-spl.bin of=/dev/sdb seek=17
dd iflag=dsync oflag=dsync if=./u-boot.bin of=/dev/sdb seek=81
sync
