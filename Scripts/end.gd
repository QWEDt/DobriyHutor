extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()
	var timer = Timer.new()
	add_child(timer)	
	timer.start(3)
	await timer.timeout	
	TextPrinter.print_text("В японском игровом салоне произошло трагическое событие:")
	timer.start(6)
	await timer.timeout
	TextPrinter.print_text("Была обнаружена девушка с кортечью в голове")
	timer.start(6)
	await timer.timeout
	TextPrinter.print_text("Инцидент произошел в ночь субботы, когда посетители услышали звук выстрела и обнаружили тело девушки.")
	timer.start(8)
	await timer.timeout
	TextPrinter.print_text("При ней были таблетки непонятного происхождения, дробовик и торт со свечой.")
	timer.start(7)
	await timer.timeout
	TextPrinter.print_text("Полиция начала расследование, чтобы выяснить обстоятельства случившегося. Следственные действия продолжаются...")
	timer.start(9)
	await timer.timeout
	TextPrinter.print_text("Стройка. Подьемные краны. Шум. Тоже продолжаются...")
	timer.start(9)
	await timer.timeout
	TextPrinter.label.visible = false
	Transition.transition_to_black()
	await Transition.on_transition_finished
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



