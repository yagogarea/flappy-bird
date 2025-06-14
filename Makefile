PROJECT := project.godot

EXPORT_NAME := Web

EXPORT_DIR := web/public/godot_game/
OUTPUT := $(EXPORT_DIR)/index_godot.html

.PHONY: all export launch

all: export

export:
	mkdir -p $(EXPORT_DIR)
	godot --headless --path godot --export-release "$(EXPORT_NAME)" "../$(OUTPUT)"

launch:
	npm --prefix web run dev
