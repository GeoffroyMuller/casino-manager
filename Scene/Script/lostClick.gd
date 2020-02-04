extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal exit_all()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed() ):
		emit_signal("exit_all")
