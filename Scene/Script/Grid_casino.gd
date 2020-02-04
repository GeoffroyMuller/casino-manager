extends Node2D

onready var nul : PackedScene = preload("res://Scene/Empty.tscn")

var score : int = 0

onready var grid : Array = [
	[null, null, null],
	[null, null, null],
	[null, null, null],
	[load("res://Scene/Accueil.tscn").instance(), null, null]
]

var x : Array = [0, 128, 256]
var y : Array = [0, 64, 128, 192]

func _ready():
	initialize_empty_grid()
	$allRoom/Camera2D.position = Vector2(128, 64)
	load_game()
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
		$allRoom/Rooms.add_child(obj)
		obj.position = Vector2(x[j], y[i])
		
func initialize_empty_grid():
	for i in range(4):
		for j in range(3):
			if get_object_at_coordonates(i, j) == null:
				set_object_at_coordonates(i, j, nul)
			else :
				display_room(i,j)
				connect_signals(get_object_at_coordonates(i,j))
		
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

func display_room_menu(room, pos):
	$allRoom/Camera2D/RoomsMenu.visible = true
	$allRoom/Camera2D/RoomsMenu.set_pos(room.get_pos()[0], room.get_pos()[1])

# when a room is clicked screen the menu to select the room
func onObjectClicked(room, id):
	if $allRoom/Camera2D/RoomsMenu.visible :
		$allRoom/Camera2D/RoomsMenu.visible = false
	print(room.get_pos(), " ", id)
	
	var newPosition = get_global_mouse_position() - $".".position
	if (id == 0 and $allRoom/Camera2D/RoomsMenu.visible == false):	
		display_room_menu(room, newPosition)

func onObjectSelected(room, pos):
	if room != null : 
		set_object_at_coordonates(pos[0], pos[1], room)
		$allRoom/Camera2D/RoomsMenu.visible = false

#receive all the signals from every rooms and emit a signal who whill be handled by the main scene
func onFactureReceived(gain, cost):
	print("cost = ", cost, " gain = ", gain)
	var total = gain - cost 

	score = score + total
	if score < -10000 : 
		pass

# will close any window 
func _on_lostClick_exit_all():
	if $allRoom/Camera2D/RoomsMenu.visible : 
		$allRoom/Camera2D/RoomsMenu.visible = false
	pass # Replace with function body.

func _input(event):
	if (event is InputEventMouseButton):
		if (event.button_index == BUTTON_WHEEL_UP):
			if $allRoom/Camera2D.zoom > Vector2(0.5, 0.5):
				$allRoom/Camera2D.zoom = $allRoom/Camera2D.zoom - Vector2(0.5, 0.5)
				var zoom_pos = get_global_mouse_position() - $".".position
				$allRoom/Camera2D.position = zoom_pos
				$allRoom/Camera2D/RoomsMenu.scale = Vector2(0.5, 0.5)
				$allRoom/Camera2D/RoomsMenu.position = $allRoom/Camera2D/RoomsMenu.position / 2
		if (event.button_index == BUTTON_WHEEL_DOWN):
			if $allRoom/Camera2D.zoom < Vector2(1, 1):
				$allRoom/Camera2D.zoom = $allRoom/Camera2D.zoom + Vector2(0.5, 0.5)
				$allRoom/Camera2D.position = Vector2(128, 64)
				$allRoom/Camera2D/RoomsMenu.scale = Vector2(1, 1)
				$allRoom/Camera2D/RoomsMenu.position = $allRoom/Camera2D/RoomsMenu.position * 2
				
func load_game():
	var save_game = File.new()
	if not save_game.file_exists("user://savegame.save"):
		print("can't find file")
		return 
		
	save_game.open("user://savegame.save", File.READ)
	while not save_game.eof_reached():
		var current_line = parse_json(save_game.get_line())
		if current_line != null :
			var new_object = load(current_line["filename"])
			set_object_at_coordonates(current_line["position_x"], current_line["position_y"], new_object)
		
	save_game.close()