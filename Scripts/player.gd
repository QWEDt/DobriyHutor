extends CharacterBody2D

class_name Player

var speed = 30.0
var current_direction := Vector2.ZERO
var rand_dir = ["left", "right", "up", "down"]

@export var pitch: float = 0.8
@onready var audio_stream_player = $AudioStreamPlayer
@onready var animated_sprite_2d = $AnimatedSprite2D
@export var can_dash = false
@export var alternative_control := false

const DEFOULT_HEALTH_COUNT = 3
var health_count = DEFOULT_HEALTH_COUNT


func _ready():
	animated_sprite_2d.play("move")
	audio_stream_player.pitch_scale = pitch
	update_movement_buttons()

func _physics_process(delta):
	velocity = current_direction * speed
	move_and_slide()

func geting_dash():
	can_dash = true

func _unhandled_input(event):
	if event is InputEventKey:
	
		if event.is_action_pressed("down"):
			current_direction = Vector2.DOWN
			animated_sprite_2d.rotation_degrees = 90
		if event.is_action_pressed("up"):
			current_direction = Vector2.UP
			animated_sprite_2d.rotation_degrees = -90
		if event.is_action_pressed("left"):
			current_direction = Vector2.LEFT
			animated_sprite_2d.rotation_degrees = 180
		if event.is_action_pressed("right"):
			current_direction = Vector2.RIGHT
			animated_sprite_2d.rotation_degrees = 0
			
		if alternative_control:
			current_direction = Input.get_vector(rand_dir[0], rand_dir[1], rand_dir[2], rand_dir[3])
	
		if event.keycode == KEY_SHIFT and event.is_pressed() and can_dash:
			dash()

func dash():
	speed = 50
	var timer = Timer.new()
	add_child(timer)
	timer.start(0.7)
	await timer.timeout
	speed = 30

func update_movement_buttons():
	rand_dir.shuffle()
	var timer = Timer.new()
	add_child(timer)
	timer.start(10)
	await timer.timeout
	update_movement_buttons()
