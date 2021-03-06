extends Node2D

onready var accueil : PackedScene =  preload("res://Scene/Accueil.tscn")
onready var machine_sous : PackedScene =  preload("res://Scene/Machine_sous.tscn")
onready var nul : PackedScene = preload("res://Scene/Empty.tscn")

# will contain the object the user want to create
onready var objectToCreate : PackedScene = accueil

signal gainChanged(gain)

onready var grid : Array = [
	[null, null, null],
	[null, null, null],
	[null, null, null],
	[null, null, null]
]

var x : Array = [0, 128, 256]
var y : Array = [0, 64, 128, 192]

var rooms : Array = [null, accueil]

func _ready():
	initialize_empty_grid()
	set_object_at_coordonates(1,1,accueil)
	set_object_at_coordonates(1,2,machine_sous)
	pass 
	
func get_object_at_coordonates(x_coord, y_coord) -> PackedScene :
	var room_object = grid[x_coord][y_coord]
	return room_object

func set_object_at_coordonates(x_coord, y_coord, object):
	if (object != null):
		var old_room = get_object_at_coordonates(x_coord, y_coord)
		if (old_room != null):
			old_room.queue_free()
		var object_instance = object.instance()
		grid[x_coord][y_coord] = object_instance
		object_instance.set_pos(x_coord, y_coord)
		connect_signals(object_instance)
		display_room(x_coord, y_coord)
	else : grid[x_coord][y_coord] = object
	
func display_room(i, j):
	var obj = get_object_at_coordonates(i,j)
	if (obj != null):
		$allFloor.add_child(obj)
		obj.position = Vector2(x[j], y[i])
		
func initialize_empty_grid():
	for i in range(4):
		for j in range(3):
			set_object_at_coordonates(i, j, nul)
		
func display_all_rooms():
	for i in range(4):
		for j in range(3):
			display_room(i, j)
		
func remove_all_rooms():
	for i in range(4):
		for j in range(3):
			var object : Object = get_object_at_coordonates(i,j)
			if (object != null):
				object.queue_free()
				set_object_at_coordonates(i,j, nul)
			
# connect every signal between rooms and grid
func connect_signals(object_instance):
	object_instance.connect("clicked", self,"onObjectClicked")
	object_instance.connect("facture", self,"onFactureReceived")

# when a floor is clicked 
func onObjectClicked(room, id):
	print(room.get_pos(), " ", id)
	
	#replace an empty floor with the floor stocked in objectToCreate
	if (id == 0 and objectToCreate != null):
		set_object_at_coordonates(room.get_pos()[0], room.get_pos()[1], objectToCreate)

		objectToCreate = null
	# else print info of the selected floor

#receive all the signals from every rooms and emit a signal who whill be handled by the main scene
func onFactureReceived(gain, cost):
	print("cost = ", cost, " gain = ", gain)
	var total = gain - cost 
	# the core scene will handled this signal and modified the gain
	emit_signal("gainChanged", total)
	pass