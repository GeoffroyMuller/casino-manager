extends "res://Scene/Script/room_interface.gd"

func _ready():
	id = 0
	

func on_click():
	emit_signal("clicked", self, id)
	print("Click on Empty", get_pos())

