extends Node
# Called when the node enters the scene tree for the first time.
func _ready():
	TextLabel.show_text("LEVEL ?", 120)
	$AudioStreamPlayer2D.play()
	$Timer.start()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/levels/end.tscn")
