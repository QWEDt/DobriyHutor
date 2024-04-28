extends Node

func _ready():
	var timer = Timer.new()
	add_child(timer)
	TextPrinter.print_text("Собери все монеты и перейди на следующий уровень!")
	timer.start(6)
	await timer.timeout
	TextPrinter.print_text("Управляй на WASD или на СТРЕЛОЧКИ")
	timer.start(6)
	await timer.timeout
	TextPrinter.label.visible = false
	get_tree().change_scene_to_file("res://Scenes/levels/level_1.tscn")
