class_name Menu
extends Control

@onready var play_button = $VBoxContainer/PlayButton as TextureButton
@onready var options_button = $VBoxContainer/OptionsButton as TextureButton
@onready var exit_button = $VBoxContainer/ExitButton as TextureButton
@onready var options_menu = $Options as OptionsMenu
@onready var vbox_container = $VBoxContainer as VBoxContainer

@onready var start_game = preload("res://main.tscn") as PackedScene

func _ready():
	handle_connecting_signals()


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_packed(start_game)


func _on_options_button_pressed() -> void:
	vbox_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_exit_menu_pressed() -> void:
	vbox_container.visible = true
	options_menu.visible = false


func handle_connecting_signals() -> void:
	play_button.button_down.connect(_on_play_button_pressed)
	options_button.button_down.connect(_on_options_button_pressed)
	exit_button.button_down.connect(_on_exit_button_pressed)
	options_menu.exit_options_menu.connect(_on_exit_menu_pressed)
