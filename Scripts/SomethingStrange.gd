extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	TextPrinter.print_text("Стройка, стройка, стройка...")
	var timer = Timer.new()
	add_child(timer)
	timer.start(4)
	await timer.timeout
	TextPrinter.print_text("Шумы, гамы, подъемные краны.")
	timer.start(4)
	await timer.timeout
	TextPrinter.print_text("Когда это закончится, ты знаешь?")
	timer.start(4)
	await timer.timeout
	TextPrinter.label.visible = false
	Transition.transition_to_black()
	await Transition.on_transition_finished
	get_tree().change_scene_to_file("res://Scenes/levels/level_3.tscn")
