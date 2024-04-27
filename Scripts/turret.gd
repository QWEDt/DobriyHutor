extends Node2D

var timer = Timer.new()
@onready var bullet_spawn = $BulletSpawn
@export var fire_rate : float = 3
const BULLET_SCENE = preload("res://Scenes/bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(timer)
	timer.one_shot = false
	timer.wait_time = fire_rate
	timer.timeout.connect(shoot)
	timer.start()


func shoot():
	if !visible:
		return
	var bullet = BULLET_SCENE.instantiate()
	bullet.global_position = bullet_spawn.global_position
	bullet.rotation = rotation
	get_tree().current_scene.add_child(bullet)
