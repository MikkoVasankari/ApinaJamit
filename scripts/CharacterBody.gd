extends CharacterBody2D

@export var speed = 280

@onready var timer: Timer = $Timer
@onready var Sprite = $AnimatedSprite2D

@onready var cycleSound = $CycleSound
@onready var click_banana = $"../../Banana_collect_sound"

@onready var banana_1 = $"../../banana1"
@onready var banana_2 = $"../../banana2"
@onready var banana_3 = $"../../banana3"
@onready var banana_4 = $"../../banana4"
@onready var banana_5 = $"../../banana5"
@onready var banana_6 = $"../../banana6"
@onready var banana_7 = $"../../banana7"
@onready var banana_8 = $"../../banana8"
@onready var banana_9 = $"../../banana9"
@onready var banana_10 = $"../../banana10"
@onready var banana_11 = $"../../banana11"
@onready var banana_12 = $"../../banana12"
@onready var banana_13 = $"../../banana13"
@onready var banana_14 = $"../../banana14"
@onready var banana_15 = $"../../banana15"

@onready var office_door = $"../../OfficeDoor"

@onready var banana_count_label = $"../../Banana_count_label"

@export var banana_count = 0


func _ready():
	timer.one_shot = true


func reset_speed():
	speed = 280


func collect_banana():
	banana_count += 1
	var bananas_collected = "%s / 15"
	banana_count_label.text = bananas_collected % banana_count
	click_banana.play(0)
	
	if banana_count == 15:
		office_door.visible = true


func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SHIFT:
			timer.start(0.5)
			speed = 200
			Sprite.set_rotation(-45)
			await timer.timeout
			Sprite.set_rotation(0)
			reset_speed()
			
			
func _physics_process(delta):
	
	var cycling = false
	
	if Input.is_action_pressed("ui_right"):
		# Move as long as the key/button is pressed.
		position.x += speed * delta
		Sprite.flip_h = false
		Sprite.play("cycle_anim")
		cycleSound.play(2.85)
		cycling = true
		
	if Input.is_action_pressed("ui_left"):
		# Move as long as the key/button is pressed.
		position.x -= speed * delta
		Sprite.flip_h = true
		Sprite.play("cycle_anim")
		cycleSound.play(2.85)
		cycling = true
		
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
		Sprite.play("cycle_anim")
		cycleSound.play(2.85)
		cycling = true
		
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
		Sprite.play("cycle_anim")
		cycleSound.play(2.85)
		cycling = true
		
	if !cycling:
		Sprite.stop()
		
	move_and_slide()


func _on_banana_1_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_1.visible = false
		banana_1.collision_mask = 2
		collect_banana()


func _on_banana_2_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_2.visible = false
		banana_2.collision_mask = 2
		collect_banana()


func _on_banana_3_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_3.visible = false
		banana_3.collision_mask = 2
		collect_banana()


func _on_banana_4_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_4.visible = false
		banana_4.collision_mask = 2
		collect_banana()


func _on_banana_5_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_5.visible = false
		banana_5.collision_mask = 2
		collect_banana()


func _on_banana_6_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_6.visible = false
		banana_6.collision_mask = 2
		collect_banana()


func _on_banana_7_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_7.visible = false
		banana_7.collision_mask = 2
		collect_banana()


func _on_banana_8_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_8.visible = false
		banana_8.collision_mask = 2
		collect_banana()


func _on_banana_9_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_9.visible = false
		banana_9.collision_mask = 2
		collect_banana()


func _on_banana_10_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_10.visible = false
		banana_10.collision_mask = 2
		collect_banana()


func _on_banana_11_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_11.visible = false
		banana_11.collision_mask = 2
		collect_banana()


func _on_banana_12_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_12.visible = false
		banana_12.collision_mask = 2
		collect_banana()


func _on_banana_13_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_13.visible = false
		banana_13.collision_mask = 2
		collect_banana()


func _on_banana_14_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_14.visible = false
		banana_14.collision_mask = 2
		collect_banana()


func _on_banana_15_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("interact"):
		banana_15.visible = false
		banana_15.collision_mask = 2
		collect_banana()
