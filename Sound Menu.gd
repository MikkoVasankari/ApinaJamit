class_name sound_menu
extends VBoxContainer

@onready var pause_menu_box = $"../PauseMenuBox" as VBoxContainer
@onready var back_button = $Back as Button

func _on_back_pressed():
	pause_menu_box.visible = true
	set_process(false)
	$".".visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	back_button.button_down.connect(_on_back_pressed)
	set_process(false)

