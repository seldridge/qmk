repoQmk ?= $(HOME)/repos/github.com/qmk/qmk_firmware

.PHONY: all build install uninstall

all: build

build: install
	cd $(repoQmk) && qmk compile -kb crkbd -km seldridge -e CONVERT_TO=elite_pi

install:
	stow qmk_firmware -t $(repoQmk)

uninstall:
	stow -D qmk_firmware -t $(repoQmk)
