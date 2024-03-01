# [Quantum Mechanical Keyboard (QMK)](https://docs.qmk.fm) Out-of-tree Firmware

This repository contains QMK firmware maintained out-of-tree.
The out-of-tree-ness is managed with GNU Stow.
This is done to avoid having to keep a fork of QMK around.

Pushes to this repository will trigger a GitHub Action that builds the firmware.
Once the firmware is built, it can be copied to the Raspberry Pi when it is in mass storage device mode.

## Layout

![A picture showing a 3-layer keymap](https://raw.githubusercontent.com/seldridge/qmk/assets/keyboard.png)
