extends RigidBody2D

var speed = 1

func _ready():
	linear_velocity.x = speed * cos(rotation)
	linear_velocity.y = speed * sin(rotation)

func _physics_process(delta):
	var collider = move_and_collide(linear_velocity)
	if collider:
		queue_free()
