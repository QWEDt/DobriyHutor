extends Node

var coins_count: int

func _process(delta):
	if coins_count > 0:
		return
	
	TextLabel.show_text("LEVEL COMPLITED")
	coins_count = 999999

func _on_child_exiting_tree(node):
	coins_count -= 1

func _on_child_entered_tree(node):
	coins_count += 1
