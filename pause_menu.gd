class_name pause_menu
extends Control

@onready var exit_button = $PauseMenuBox/Exit as Button
@onready var pause_menu_box = $PauseMenuBox as BoxContainer
@onready var sound_menu_box = $"Sound Menu" as BoxContainer

var _is_paused:bool = false:
	set(value):
		_is_paused = value
		get_tree().paused = _is_paused
		visible = _is_paused


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		_is_paused = !_is_paused


func _on_resume_pressed():
	_is_paused = false


func _on_exit_pressed():
	get_tree().quit()


func _ready():
	exit_button.button_down.connect(_on_exit_pressed)
