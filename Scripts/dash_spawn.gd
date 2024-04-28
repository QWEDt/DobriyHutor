extends Area2D

@export var player: CharacterBody2D
@onready var gpu_particles_2d = $GPUParticles2D
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

signal on_dash_get

func _ready():
	if !player:
		return
	
	go_particles()
	on_dash_get.connect(player.geting_dash)

func go_particles():
	if !player:
		return
	gpu_particles_2d.emitting = true
	var length = (global_position - player.global_position).length()
	gpu_particles_2d.amount = \
 	30000 / (length * length)
	gpu_particles_2d.one_shot = true
	var timer = Timer.new()
	add_child(timer)
	timer.start(6)
	await timer.timeout
	go_particles()


func _on_body_entered(body):
	if body.is_in_group("Player"):
		on_dash_get.emit()
		player = null
		audio_stream_player_2d.stop()
