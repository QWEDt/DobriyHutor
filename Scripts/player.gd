extends CharacterBody2D


const SPEED = 30.0
var current_direction := Vector2.ZERO
@onready var animated_sprite_2d = $AnimatedSprite2D


func _ready():
	animated_sprite_2d.play("move")

func _physics_process(delta):
	velocity = current_direction * SPEED
	move_and_slide()


func _unhandled_input(event):
	if event is InputEventKey and event.is_action_pressed("down"):
		current_direction = Vector2.DOWN
		animated_sprite_2d.rotation_degrees = 90		
	if event is InputEventKey and event.is_action_pressed("up"):
		current_direction = Vector2.UP
		animated_sprite_2d.rotation_degrees = -90
		
	if event is InputEventKey and event.is_action_pressed("left"):
		current_direction = Vector2.LEFT
		animated_sprite_2d.rotation_degrees = 180
		
	if event is InputEventKey and event.is_action_pressed("right"):
		current_direction = Vector2.RIGHT
		animated_sprite_2d.rotation_degrees = 0
		
