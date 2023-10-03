extends Node2D


func _process(delta):
	if Input.is_action_just_pressed("ResetScore"):
		Global.highscore = 0
		Global.score = 0
		Global.save_highscore()

func _on_play_pressed():
	Global.score = 0
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/settings.tscn")	


func _on_upgrades_pressed():
	get_tree().change_scene_to_file("res://Scenes/shop.tscn")
