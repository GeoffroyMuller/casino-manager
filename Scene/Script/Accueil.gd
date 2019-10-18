extends "res://Scene/Script/room_interface.gd"

func _ready():
	id = 1
	cost = 200
	$Timer.start()

func on_click():
	emit_signal("clicked", self, id)
	print("Click on Accueil", get_pos())