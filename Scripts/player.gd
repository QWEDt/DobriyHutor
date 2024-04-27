extends CharacterBody2D


const SPEED = 300.0
var current_direction := Vector2.RIGHT

func _ready():
	velocity = current_direction


func _physics_process(delta):
	move_and_slide()


func _unhandled_input(event):
	if event is InputEventKey and event.is_action_pressed("down"):
		current_direction = Vector2.DOWN
	if event is InputEventKey and event.is_action_pressed("up"):
		current_direction = Vector2.UP
	if event is InputEventKey and event.is_action_pressed("left"):
		current_direction = Vector2.LEFT
	if event is InputEventKey and event.is_action_pressed("right"):
		current_direction = Vector2.RIGHT
