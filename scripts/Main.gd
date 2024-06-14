extends Node

@export var player_size: Vector2i = Vector2i(32, 32) # Should be the size of your character sprite, or slightly bigger
@export_range(0, 19) var player_visibility_layer: int = 1
@export_range(0, 19) var world_visibility_layer: int = 0

@onready var _MainWindow: Window = get_window()
@onready var _SubWindow: Window = $Window

func _ready():
  _SubWindow.world_2d = _MainWindow.world_2d
