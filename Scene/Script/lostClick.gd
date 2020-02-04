extends Area2D

signal exit_all()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed()):
		emit_signal("exit_all")
