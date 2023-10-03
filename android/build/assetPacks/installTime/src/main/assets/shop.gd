extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.load_stats()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Money.text = "Money: " + str(Global.stats.Money)


func _on_back_pressed():
	Global.save_stats()
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")



func _on_buy_1_pressed():
	if Global.stats.Cat == 0:
		if Global.stats.Money >= 100:
			Global.stats.Cat = 1
			Global.stats.Money -= 100
	else:
		Global.stats.Cat = 0
		Global.stats.Money += 100

func _on_buy_2_pressed():
	if Global.stats.Dog == 0:
		if Global.stats.Money >= 1000:
			Global.stats.Dog = 1
			Global.stats.Money -= 1000
	else:
		Global.stats.Dog = 0
		Global.stats.Money += 1000

func _on_buy_5_pressed():
	if Global.stats.NightTheme == 0:
		if Global.stats.Money >= 10000:
			Global.stats.NightTheme = 1
			Global.stats.Money -= 10000
	else:
		Global.stats.NightTheme = 0
		Global.stats.Money += 10000

func _on_buy_6_pressed():
	if Global.stats.GoldBlood == 0:
		if Global.stats.Money >= 100000:
			Global.stats.GoldBlood = 1
			Global.stats.Money -= 100000
	else:
		Global.stats.Money += 100000
		Global.stats.GoldBlood = 0




func _on_buy_3_pressed():
	if Global.stats.Item3 == 0:
		if Global.stats.Money >= 2000:
			Global.stats.Item3 = 1
			Global.stats.Money -= 2000
	else:
		Global.stats.Money += 2000
		Global.stats.Item3 = 0

