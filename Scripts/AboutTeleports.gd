extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = Timer.new()
	add_child(timer)
	TextPrinter.print_text("Так держать!")
	timer.start(3)
	await timer.timeout
	TextPrinter.print_text("В следующий раз тебе могут встретиться проходы в стенах.")
	timer.start(6)
	await timer.timeout
	TextPrinter.print_text("На первый взгляд они никуда не ведут, но стоит в них зайти..")
	timer.start(6)
	await timer.timeout
	TextPrinter.print_text("...")
	timer.start(1)
	await timer.timeout
	TextPrinter.label.visible = false
	get_tree().change_scene_to_file("res://Scenes/levels/level_2.tscn")
