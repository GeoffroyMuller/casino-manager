extends Node2D

onready var nul : PackedScene = preload("res://Scene/Empty.tscn")
onready var accueil : PackedScene = preload("res://Scene/Accueil.tscn")

onready var coinSound = preload("res://Sound/Pickup_Coin.wav")
onready var buildSound = preload("res://Sound/put_salle.wav")

var score : int = 0

onready var line : Array = [null, null, null]

onready var grid : Array = [
	[null, null, null],
	[null, null, null],
	[null, null, null],
	[null, null, null]
]

var x : Array = [0, 128, 256]
var y : Array = [0, 64, 128, 192]
var nbY = 4

func _ready():
	
	initialize_empty_grid()
	set_object_at_coordonates(nbY - 1, 0, accueil)
	$allRoom/Camera2D.position = Vector2(128, nbY * 64 / 1.666666667 )
	load_game()
	pass 
	
func get_object_at_coordonates(y_coord, x_coord) -> PackedScene :
	var room_object
	if x_coord >= 0 and x_coord < x.size() and y_coord >= 0 and y_coord < nbY: 
		room_object = grid[y_coord][x_coord]
	else :
		room_object = null
	return room_object

func set_object_at_coordonates(y_coord, x_coord, object):
	if (object != null):
		var old_room = get_object_at_coordonates(y_coord, x_coord)
		if (old_room != null):
			old_room.queue_free()
		var object_instance = object.instance()
		grid[y_coord][x_coord] = object_instance
		object_instance.set_pos(y_coord, x_coord)
		connect_signals(object_instance)
		display_room(y_coord, x_coord)
	else : grid[y_coord][x_coord] = object
	
func display_room(i, j):
	var obj = get_object_at_coordonates(i,j)
	if (obj != null):
		$allRoom/Rooms.add_child(obj)
		obj.position = Vector2(x[j], i * 64)
		
func initialize_empty_grid():
	for i in range(nbY):
		for j in range(3):
			if get_object_at_coordonates(i, j) == null:
				set_object_at_coordonates(i, j, nul)
		
func display_all_rooms():
	for i in range(nbY):
		for j in range(3):
			display_room(i, j)
		
func remove_all_rooms():
	for i in range(nbY):
		for j in range(3):
			var object : Object = get_object_at_coordonates(i,j)
			if (object != null):
				object.disconnect("clicked", self,"onObjectClicked")
				object.disconnect("facture", self,"onFactureReceived")
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
		$SoundPlayer.stream = buildSound
		$SoundPlayer.play()

func onFactureReceived(gain, cost):
	print("cost = ", cost, " gain = ", gain)
	var total = gain - cost 

	score = score + total
	$SoundPlayer.stream = coinSound
	$SoundPlayer.play()
	if score < -10000 : 
		pass

# will close any window 
func _on_lostClick_exit_all():
	if $allRoom/Camera2D/RoomsMenu.visible : 
		$allRoom/Camera2D/RoomsMenu.visible = false
	var save_nodes = get_tree().get_nodes_in_group("emptyRoom")
	for node in save_nodes:
		node.visible = false
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
				$allRoom/Camera2D.position = Vector2(128, nbY * 64 / 1.666666667)
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
			if current_line["position_y"] > nbY:
				for i in current_line["position_y"] - nbY :
					add_new_y()
			if current_line["position_y"] == nbY:
				add_new_y()
			set_object_at_coordonates(current_line["position_y"], current_line["position_x"], new_object)
		
	save_game.close()

func _on_buildButton_pressed():
	for i in range(nbY):
		for j in range(3):
			if get_object_at_coordonates(i+1, j) != null:
				if get_object_at_coordonates(i+1, j).id != 0:
					get_object_at_coordonates(i, j).visible = true
			if get_object_at_coordonates(i, j+1) != null:
				if get_object_at_coordonates(i, j+1).id != 0:
					get_object_at_coordonates(i, j).visible = true
			if get_object_at_coordonates(i, j-1) != null:
				if get_object_at_coordonates(i, j-1).id != 0:
					get_object_at_coordonates(i, j).visible = true
	pass # Replace with function body.

func add_new_y():
	grid.push_front([null, null, null])
	nbY = grid.size()
	remove_all_rooms()
	initialize_empty_grid()
	set_object_at_coordonates(nbY - 1, 0, accueil)
	

