extends Node


var score = 0
var blood = true
var music = true
var sound = true
var highscore = 0
var stats = {
	"Money":0,
	"Cat":0,
	"Dog":0,
	"Item3":0,
	"Item4":0,
	"NightTheme":0,
	"GoldBlood":0,
	"music":music,
	"sound":sound,
	"blood":blood
	}
var save_path = "user://score.save"
var saves_stats = "user://stats.save"



func _ready():
	load_highscore()
	load_stats()
	print(stats)
	blood = stats.blood
	music = stats.music
	sound = stats.sound 
	
func save_highscore():
	if score >= highscore:
		highscore = score
		var file = FileAccess.open(save_path, FileAccess.WRITE)
		file.store_var(highscore)
		print("save highscore to", highscore)

func save_stats():
	var file = FileAccess.open(saves_stats, FileAccess.WRITE)
	file.store_var(stats)
	print("saved stats to", stats)

func load_stats():
	
	if FileAccess.file_exists(saves_stats):
		print("file found")
		var file = FileAccess.open(saves_stats, FileAccess.READ)
		stats = file.get_var()
	else:
		print("file saves_stats not found")

func load_highscore():
	
	if FileAccess.file_exists(save_path):
		print("file found")
		var file = FileAccess.open(save_path, FileAccess.READ)
		highscore = file.get_var()
	else:
		print("file save_path not found")
