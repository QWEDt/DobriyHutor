extends CharacterBody2D


const SPEED = 300.0
var current_direction := Vector2.RIGHT


func _physics_process(delta):
	velocity = current_direction * SPEED
	move_and_slide()


func _unhandled_input(event):
	if event is InputEventKey and event.is_action_pressed("down"):
		current_direction = Vector2.DOWN
		rotation_degrees = 90		
	if event is InputEventKey and event.is_action_pressed("up"):
		current_direction = Vector2.UP
		rotation_degrees = -90
		
	if event is InputEventKey and event.is_action_pressed("left"):
		current_direction = Vector2.LEFT
		rotation_degrees = 180
		
	if event is InputEventKey and event.is_action_pressed("right"):
		current_direction = Vector2.RIGHT
		rotation_degrees = 0
		
