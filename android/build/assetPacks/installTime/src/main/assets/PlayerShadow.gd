extends Sprite2D

# The node to follow as a shadow
var target_node: Node2D

# Called when the node enters the scene tree for the first time
func _ready():
	set_process(true)

# Called every frame
func _process(delta: float):
	if target_node != null:
		# Get the position of the target node
		var target_position = target_node.position

		# Set the shadow position
		position = Vector2(target_position.x, -target_position.y)
