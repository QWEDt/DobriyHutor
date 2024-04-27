extends CanvasLayer

@onready var label = $Label

signal text_showed

func _ready():
	label.visible = false

func show_text(text: String, font_size: int = 140):
	var timer = Timer.new()
	label.label_settings.font_size = font_size
	add_child(timer)
	timer.start(1.5)
	await timer.timeout
	label.text = text
	label.visible = true
	timer.start(2.5)
	await timer.timeout
	timer.queue_free()
	label.visible = false
	text_showed.emit()
