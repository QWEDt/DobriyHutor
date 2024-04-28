extends Area2D

@export var other: Node2D
var to_new_scene := false

func _on_body_entered(body):
	if to_new_scene:
		get_tree().change_scene_to_file("res://Scenes/levels/level_4.tscn")
	body.position = other.global_position
	

func _on_dash_spawn_on_dash_get():
	to_new_scene = true
