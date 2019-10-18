extends Node2D

var accueil : PackedScene =  preload("res://Scene/Accueil.tscn")
var machine_sous : PackedScene =  preload("res://Scene/Machine_sous.tscn")
var nul : PackedScene = preload("res://Scene/Empty.tscn")

var objectToCreate : PackedScene = accueil

signal gainChanged(gain)

var grid : Array = [
	[null, null, null],
	[null, null, null],
	[null, null, null]
]

var x : Array = [0, 128, 256]
var y : Array = [0, 64, 128]

var rooms : Array = [null, accueil]

func _ready():
	set_object_at_coordonates(1,1,accueil)
	set_object_at_coordonates(2,1,nul)
	set_object_at_coordonates(1,2,machine_sous)
	set_object_at_coordonates(2,2,nul)
	display_all_rooms()
	pass 
	
func get_object_at_coordonates(x_coord, y_coord) -> PackedScene :
	var room_object = grid[x_coord][y_coord]
	return room_object

func set_object_at_coordonates(x_coord, y_coord, object):
	if (object != null):
		var object_instance = object.instance()
		grid[x_coord][y_coord] = object_instance
		object_instance.set_pos(x_coord, y_coord)
		
	else : grid[x_coord][y_coord] = object
	
func display_room(i, j):
	var obj = get_object_at_coordonates(i,j)
	if (obj != null):
		$allFloor.add_child(obj)
		obj.connect("clicked", self,"onObjectClicked")
		obj.connect("facture", self,"onFactureReceived")
		obj.position = Vector2(x[j], y[i])
		
func display_all_rooms():
	for i in range(3):
		for j in range(3):
			display_room(i, j)

func remove_all_rooms():
	for i in range(3):
		for j in range(4):
			var object : Object = get_object_at_coordonates(i,j)
			if (object != null):
				object.queue_free()
			set_object_at_coordonates(i,j, null)
			
# when a floor is clicked 
func onObjectClicked(room, id):
	print(room.get_pos(), " ", id)
	
	#replace an empty floor with the floor stocked in objectToCreate
	if (id == 0 and objectToCreate != null):
		set_object_at_coordonates(room.get_pos()[0], room.get_pos()[1], objectToCreate)
		display_room(room.get_pos()[0], room.get_pos()[1])
		room.queue_free()
		objectToCreate = null
	# else print info of the selected floor

func onFactureReceived(cost, gain):
	print("cost = ", cost, " gain = ", gain)
	var total = gain - cost 
	# the core scene will handled this signal and modified the gain
	emit_signal("gainChanged", total)
	pass