extends HSlider

@export
var audio_bus: String

var bus_index: int


func _ready():
	bus_index = AudioServer.get_bus_index(audio_bus)
	value_changed.connect(_on_value_changed)
	
	
func _on_value_changed(_value: float) -> void:
	AudioServer.set_bus_volume_db(bus_index, _value)
		
	if audio_bus == "Effects":
		$"../../AudioStreamPlayer".play(0)
	
	if _value == -30:
		AudioServer.set_bus_mute(bus_index, true)
	
	else:
		AudioServer.set_bus_mute(bus_index, false)


func _process(_delta):
	pass
