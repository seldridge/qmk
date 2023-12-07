# [Quantum Mechanical Keyboard (QMK)](https://docs.qmk.fm) Out-of-tree Firmware

This repository contains QMK firmware maintained out-of-tree.
The out-of-tree-ness is managed with GNU Stow.
This is done to avoid having to keep a fork of QMK around.


``` shell
qmk compile -kb crkbd -km default -e CONVERT_TO=elite_pi

# Copy this to the RPI mass storage device when it is in bootloader mode
#
# The following, does not work:
# qmk flash -c -kb <keyboard> -km <keymap> -e CONVERT_TO=elite_pi
```
