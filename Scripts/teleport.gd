extends Area2D

@export var other: Node2D


func _on_body_entered(body):
	body.position = other.global_position
	
	
