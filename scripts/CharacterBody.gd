extends CharacterBody2D

@export var speed = 400

@onready var timer: Timer = $Timer
@onready var Sprite = $Sprite2D

func _ready():
	# Assuming the Timer node is a child of the current node
	timer.one_shot = true

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_T:
			timer.start(2.0) 
			Sprite.set_rotation(-45)
			await timer.timeout
			Sprite.set_rotation(0)
		

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		# Move as long as the key/button is pressed.
		position.x += speed * delta
		Sprite.flip_h = false
		
	if Input.is_action_pressed("ui_left"):
		# Move as long as the key/button is pressed.
		position.x -= speed * delta
		Sprite.flip_h = true
			
	if Input.is_action_pressed("ui_down"):
		position.y -= speed * delta
		
	if Input.is_action_pressed("ui_up"):
		position.y += speed * delta
	
	move_and_slide()
