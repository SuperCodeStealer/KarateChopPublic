extends Sprite2D

func Arm(st):
	if st == true:
		$Hand/HandCollision.disabled = false
		print("hand enebled")
	else:
		$Hand/HandCollision.disabled = true
		print("hand disabled")
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:

			if event.position.x < get_viewport_rect().size.x / 2:
				scale.x = -10
				$AnimationPlayer.play("PunchRight")
				Arm(true)
				await get_tree().create_timer(0.3).timeout
				$AnimationPlayer.play("Deafult")
				Arm(false)
				
			else:
				scale.x = 10
				$AnimationPlayer.play("PunchRight")
				Arm(true)
				await get_tree().create_timer(0.3).timeout
				$AnimationPlayer.play("Deafult")
				Arm(false)
	
