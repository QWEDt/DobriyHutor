extends Node

var coins_count: int

func _process(delta):
	if coins_count > 0:
		return
	
	TextLabel.show_text("LEVEL COMPLITED", 45)
	var timer = Timer.new()
	add_child(timer)
	timer.start(5)
	await timer.timeout
	change_to_level_2()

func change_to_level_2():
	get_tree().change_scene_to_file("res://Scenes/levels/AboutTeleports.tscn")
	
func _on_child_exiting_tree(node):
	coins_count -= 1

func _on_child_entered_tree(node):
	coins_count += 1
