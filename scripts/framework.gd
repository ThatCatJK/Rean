extends Node2D

### Enums.

# List of levels.
var LevelDict = {
	MainMenu = "main_menu",
	Adventure = ""
}

### Variables.

@onready var currentLevel: String
@onready var level: PackedScene

### Functions.

# Loads requested level by name.
# This method only looks for level that is a child of res://scenes/levels/
func load_level(level: String) -> void:
	if Config.logLevel == Config.LogLevel.Info:
		print("Loaded level: ", level.capitalize())
	var path = "res://scenes/levels/"
	path += level
	path += ".tscn"
	var _level = load(path)
	add_child(_level.instantiate())
