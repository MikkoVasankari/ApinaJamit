extends Node

@export var player_size: Vector2i = Vector2i(32, 32) # Should be the size of your character sprite, or slightly bigger

@onready var _MainWindow: Window = get_window()
@onready var _SubWindow: Window = $Window

func _ready():
  _SubWindow.world_2d = _MainWindow.world_2d
