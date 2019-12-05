extends "res://Scene/Script/room_interface.gd"

func _ready():
	id = 1
	initialize_gain_cost(0,200)
	initialize_timer()

func on_click():
	emit_signal("clicked", self, id)
	print("Click on Accueil", get_pos())