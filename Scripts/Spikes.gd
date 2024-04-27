extends Node

var spikes_count: int
@onready var player = $"../Player"

func _process(delta):
	if player.health_count <= 0:
		restart_level()
		
func restart_level():
	get_tree().reload_current_scene()
	

func _on_child_exiting_tree(node):
	player.health_count -= 1
