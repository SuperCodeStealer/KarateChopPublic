extends Node2D

func _ready():

	$blood.button_pressed = Global.blood
	$music.button_pressed = Global.music
	$sound.button_pressed = Global.sound
	
	
	
func _on_back_pressed():
	Global.save_stats()
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	


func _on_blood_toggled(button_pressed):
	Global.blood = button_pressed
	Global.stats.blood = Global.blood
	Global.stats.music = Global.music
	Global.stats.sound = Global.sound


func _on_music_toggled(button_pressed):
	Global.music = button_pressed
	Global.stats.blood = Global.blood
	Global.stats.music = Global.music
	Global.stats.sound = Global.sound

func _on_sound_toggled(button_pressed):
	Global.sound = button_pressed
	Global.stats.blood = Global.blood
	Global.stats.music = Global.music
	Global.stats.sound = Global.sound
