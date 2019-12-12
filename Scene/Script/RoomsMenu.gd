extends Node2D

onready var accueil : PackedScene =  preload("res://Scene/Accueil.tscn")
onready var machine_sous : PackedScene =  preload("res://Scene/Machine_sous.tscn")
#onready var nul : PackedScene = preload("res://Scene/Empty.tscn")

signal room_selected(room, pos)

var x = -1
var y = -1

func _ready():
	pass # Replace with function body.

func set_pos(x, y):
	self.x = x
	self.y = y 
	
func create_and_init(object):
	var object_instance = object.instance()
	object_instance.set_pos(x, y)
	emit_signal("room_selected", object, [x, y])

func _on_AccueilButton_pressed():
	create_and_init(accueil)

func _on_MASButton_pressed():
	create_and_init(machine_sous)


func _on_exit_pressed():
	self.visible = false
	pass # Replace with function body.
