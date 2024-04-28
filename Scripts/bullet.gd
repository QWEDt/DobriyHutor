extends RigidBody2D

var speed = 1

func _ready():
	linear_velocity.x = speed * cos(rotation)
	linear_velocity.y = speed * sin(rotation)

func _physics_process(delta):
	var collider = move_and_collide(linear_velocity)
	if collider:
		var body = collider.get_collider()
		print(body.name)
		if body.is_in_group("Player"):
			(body as CharacterBody2D).health_count -= 1
			if (body as CharacterBody2D).health_count <= 0:
				get_tree().reload_current_scene()
		queue_free()
	
