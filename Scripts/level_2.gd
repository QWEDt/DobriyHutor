extends Node

var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	TextLabel.show_text("LEVEL 2", 130)
	timer = Timer.new()
	add_child(timer)
	timer.timeout.connect(next_level)
	timer.start(16)

func next_level():
	get_tree().change_scene_to_file("res://Scenes/levels/level_3.tscn")
