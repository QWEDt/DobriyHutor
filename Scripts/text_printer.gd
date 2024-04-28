extends CanvasLayer
@onready var audio_stream_player = $AudioStreamPlayer

@onready var label = $Label
var idx = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	label.visible = false

func print_text(text: String):
	label.visible = true
	label.text = ""
	idx = 0
	var timer = Timer.new()
	add_child(timer)
	
	audio_stream_player.play()
	
	for letter in text:
		label.text += letter
		timer.start(0.06)
		await timer.timeout
	
	audio_stream_player.stop()
	
	timer.queue_free()
