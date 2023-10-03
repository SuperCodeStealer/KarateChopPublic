extends CharacterBody2D

const SPEED = 300.0
var dead = "false"
	

func _ready():
	if position.x < 288:
		scale.x=1
	else:
		scale.x=-1

func _physics_process(delta):
	if dead == "false":
		if position.x < 288:
			velocity.x = SPEED
		else:
			velocity.x = -SPEED
	
		move_and_slide()

func defeated():
	Global.score += 10
	dead = "true"
	$enemyHitbox.queue_free()
	$AnimationPlayer.play("Deafeted")
	$enemyShadow.visible = false
	
	await get_tree().create_timer(1.0).timeout
	queue_free()


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		Global.save_highscore()
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
		print("Game Over")
