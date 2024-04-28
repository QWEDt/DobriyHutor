extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = Timer.new()
	add_child(timer)
	TextPrinter.print_text("Вчера сегодня завтра")
	timer.start(3)
	await timer.timeout
	TextPrinter.print_text("Завтра сегодня будет вчера")
	timer.start(3)
	await timer.timeout
	TextPrinter.print_text("Вчера сегодня завтра")
	timer.start(3)
	await timer.timeout
	TextPrinter.print_text("Завтра сегодня будет вчера")
	timer.start(3)
	await timer.timeout
	TextPrinter.label.visible = false
	get_tree().change_scene_to_file("res://Scenes/levels/level 5.tscn")

