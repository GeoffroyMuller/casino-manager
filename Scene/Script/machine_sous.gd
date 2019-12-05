extends "res://Scene/Script/room_interface.gd"

func _ready():
	id = 2
	initialize_gain_cost(400,100)
	initialize_timer()

func on_click():
	emit_signal("clicked", self, id)
	print("Click on Machine a sous", get_pos())