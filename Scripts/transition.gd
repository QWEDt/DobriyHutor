extends CanvasLayer

@onready var animation_player = $AnimationPlayer
@onready var color_rect = $ColorRect

signal on_transition_finished

# Called when the node enters the scene tree for the first time.
func _ready():
	color_rect.visible = false


func _on_animation_finished(anim_name: String):
	if anim_name == "fade_to_black":
		animation_player.play("fade_back")
		on_transition_finished.emit()
	elif anim_name == "fade_back":
		color_rect.visible = false


func transition_to_black():
	color_rect.visible = true
	animation_player.play("fade_to_black")
