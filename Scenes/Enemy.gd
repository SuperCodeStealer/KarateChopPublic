extends Node2D

var teleportDelay = 1.0
@export var enemy: PackedScene
var teleportTimer = 0.0


func _on_timer_timeout():
	spawn()
	var e = enemy.instantiate()
	e.position = position
	owner.add_child(e)
	
	
func spawn():
	var side = pow(-1, randi() % 2)
	if side == 1:
		position = Vector2(33, 585)
	else:
		position = Vector2(535, 585)

	print("enemy printed")

func _process(delta):
	if Input.is_action_just_pressed("Debug"):
		Global.score += 1000
	if Global.score >= 10000:
		$Timer.wait_time = 0.4
	elif Global.score >= 500:
		$Timer.wait_time = 0.5
	elif Global.score >= 300:
		$Timer.wait_time = 0.7
	elif Global.score >= 100:	
		$Timer.wait_time = 1

	

