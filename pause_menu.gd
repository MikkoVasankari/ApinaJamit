class_name pause_menu
extends Control


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
	_is_paused = false
	get_tree().change_scene_to_file("res://menu.tscn")


func _ready():
	_is_paused = false
