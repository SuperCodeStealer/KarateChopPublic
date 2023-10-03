extends Sprite2D

var amplitude = 10  # Adjust the amplitude of the wave
var frequency = 1.5  # Adjust the frequency of the wave

var original_position = Vector2.ZERO
var time_passed = 0.0



func _ready():
	original_position = position

func _process(delta: float):
	time_passed += delta

	# Calculate the vertical offset using a sine wave function
	var vertical_offset = sin(time_passed * frequency)
	
	# Update the sprite's position
	position = original_position + Vector2(0, amplitude * vertical_offset)
