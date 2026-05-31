# A clone of qmk/qmk_firmware.  This can either be cloned into a directory
# manually or it can be installed using `qmk setup`.
repoQmk ?= $(HOME)/repos/github.com/qmk/qmk_firmware
# The configurations to build.  Build everything that a user could possibly use.
# Build rev1 firmware for either an ATmega or RP2040 .  Also, build rev4
# firmware.
configs := \
	$(repoQmk)/crkbd_rev1_seldridge_elite_pi.uf2 \
	$(repoQmk)/crkbd_rev1_seldridge.hex \
	$(repoQmk)/crkbd_rev4_1_standard_seldridge.uf2

.PHONY: all clean uninstall

all: $(configs)

clean:
	rm -rf $(configs)

uninstall:
	stow -D qmk_firmware -t $(repoQmk)

$(repoQmk)/crkbd_rev1_seldridge_elite_pi.uf2: | $(repoQmk)/keyboards/crkbd/keymaps/seldridge/
	cd $(repoQmk) && qmk compile -kb crkbd/rev1 -km seldridge -e CONVERT_TO=elite_pi

$(repoQmk)/crkbd_rev1_seldridge.hex: | $(repoQmk)/keyboards/crkbd/keymaps/seldridge/
	cd $(repoQmk) && qmk compile -kb crkbd/rev1 -km seldridge

$(repoQmk)/crkbd_rev4_1_standard_seldridge.uf2: | $(repoQmk)/keyboards/crkbd/keymaps/seldridge/
	cd $(repoQmk) && qmk compile -kb crkbd/rev4_1/standard -km seldridge

$(repoQmk)/keyboards/crkbd/keymaps/seldridge/:
	stow qmk_firmware -t $(repoQmk)
