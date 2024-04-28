extends CanvasLayer

@onready var label = $Label

signal text_showed

func _ready():
	label.visible = false

func show_text(text: String, font_size: int = 140, before_time: float = 1.5, after_time :float = 2.5):
	var timer = Timer.new()
	label.label_settings.font_size = font_size
	add_child(timer)

	timer.start(before_time)
	var audio = AudioStreamPlayer.new()
	add_child(audio)

	await timer.timeout
	audio.stream = load("res://Sound/efe17df40001109.mp3")
	audio.pitch_scale = randf_range(0.9, 1.1) 
	audio.play()
	label.text = text
	label.visible = true
	timer.start(after_time)
	await timer.timeout
	timer.queue_free()
	label.visible = false
	text_showed.emit()
