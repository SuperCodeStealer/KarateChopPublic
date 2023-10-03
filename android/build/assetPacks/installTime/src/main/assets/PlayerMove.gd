extends CharacterBody2D
const JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _input(event):
		if event is InputEventMouseButton and event.pressed:
			if event.button_index == MOUSE_BUTTON_LEFT:
				if event.position.y > get_viewport_rect().size.y * 0.9:
					if is_on_floor():
						#velocity.y = JUMP_VELOCITY
						pass
						
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	move_and_slide()



func _on_hand_body_entered(body):
	
	if Global.stats["GoldBlood"] == 1:
		$Player/Hand/CPUParticles2D.color = Color(0.77647060155869, 0.6745098233223, 0.09803921729326)
	else:	
		$Player/Hand/CPUParticles2D.color = Color(0.97254902124405, 0, 0)
		
	if body.is_in_group("enemy"):
	
		
		if Global.blood == true:
			$Player/Hand/CPUParticles2D.restart()
			
		if Global.sound == true:
			$Player/AudioStreamPlayer.play()
			
		Global.stats.Money += 10
		if Global.stats.Item3 == 1:
			Global.stats.Money += 10
		Global.save_stats()
		body.defeated()
