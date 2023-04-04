.PHONY: build json release

icon_gen:
    @flutter pub run icons_launcher:create

json:
	@flutter pub run build_runner build

release:
	@flutter build apk --release --obfuscate --split-debug-info=./symbols

build:
	@flutter build apk --debug
