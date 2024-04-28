extends Label

@onready var player = $"../.."


# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(player.health_count)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(player.health_count)
