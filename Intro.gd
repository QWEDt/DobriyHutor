extends Node

@onready var audio_stream_player_2d = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	TextPrinter.print_text("27 апреля. 1982 год. Япония.
Дождь. Подъемные краны.
Старое сменяется новым.
Хочется смотреть в одну точку.")

	var timer = Timer.new()
	add_child(timer)
	timer.start(13)
	await timer.timeout
	TextPrinter.print_text("Отвлекает очередной объект желающий удовлетворить свои потребности.
Вопрос. Имя. Имя. Предложение. Понурое согласие.
Игровой салон. Напиток. Таблетка.")

	timer.start(16)
	await timer.timeout
	TextPrinter.print_text("Игровой автомат. В мониторе вижу свою отражение.
Волосы умирают. Таблетка начинает брать.
Вторая часть игры Pacman о которой трезвонят все вокруг.")

	timer.start(16)
	await timer.timeout
	TextPrinter.label.visible = false
	Transition.transition_to_black()
	await Transition.on_transition_finished
	get_tree().change_scene_to_file("res://Scenes/levels/control.tscn")

func _unhandled_key_input(event):
	TextPrinter.label.visible = false
	get_tree().change_scene_to_file("res://Scenes/levels/control.tscn")