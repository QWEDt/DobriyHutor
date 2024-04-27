extends Control


func _on_start_button_button_up():
	Transition.transition_to_black()
	await Transition.on_transition_finished
	get_tree().change_scene_to_file("res://Scenes/levels/level_1.tscn")


func _on_exit_button_button_up():
	get_tree().quit()
