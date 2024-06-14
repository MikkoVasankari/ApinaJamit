extends Node

@onready var _MainWindow: Window = get_window()
@onready var _SubWindow: Window = $Window

func _ready():
  _SubWindow.world_2d = _MainWindow.world_2d
