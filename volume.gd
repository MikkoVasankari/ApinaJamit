extends HSlider

@export
var audio_bus: String

var bus_index: int


# Called when the node enters the scene tree for the first time.
func _ready():
	bus_index = AudioServer.get_bus_index(audio_bus)
	value_changed.connect(_on_value_changed)
	
	value = db_to_linear(
		AudioServer.get_bus_volume_db(bus_index)
	)
	
func _on_value_changed(_value: float) -> void:
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
