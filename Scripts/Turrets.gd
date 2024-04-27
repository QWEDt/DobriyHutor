extends Node

func _on_dash_spawn_on_dash_get():
	for node: Node2D in get_children():
		node.visible = true
