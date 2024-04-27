extends CanvasLayer

@onready var label = $Label

func _ready():
	label.visible = false

func show_text(text: String):
	var timer = Timer.new()
	add_child(timer)
	timer.start(1.5)
	await timer.timeout
	label.text = text
	label.visible = true
	timer.start(2.5)
	await timer.timeout
	timer.queue_free()
	label.visible = false
