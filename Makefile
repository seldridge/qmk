repoQmk ?= $(HOME)/repos/github.com/qmk/qmk_firmware

.PHONY: all build install uninstall

all: build

build: install
	cd $(repoQmk) && qmk compile -km seldridge

install:
	stow qmk_firmware -t $(repoQmk)

uninstall:
	stow -D qmk_firmware -t $(repoQmk)
