extends "res://Scene/Script/room_interface.gd"


func _ready():
	id = 2
	cost = 100
	gain = 300
	$Timer.start()

func on_click():
	emit_signal("clicked", self, id)
	print("Click on Machine a sous", get_pos())