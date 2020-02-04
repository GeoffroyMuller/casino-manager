extends Node2D

var id : int = -1
var cost : int = 0
var gain : int = 0
var position_x : int = -1
var position_y : int = -1
var time : float = 0
var level : int = 1
var levelMax : int = 3
export var rewardAtTime : int = 0

signal clicked(room, id)
signal facture(gain, cost)

func save() -> JSON:
	var save_dict = {
		"filename" : get_filename(),
		"id": id,
		"level": level,
		"position_x": position_x,
		"position_y": position_y,
		"cost": cost,
		"gain": gain	
	}
	return save_dict

func get_id() -> int :
	return id

func get_pos() -> Array :
	return [position_x, position_y]
	
func set_pos(x, y):
	position_x = x
	position_y = y
	
func _input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed():
        self.on_click()

# emit a signal who contain the room and the id of the room
func on_click():
	emit_signal("clicked", self, id)
	print("Click on room interface", get_pos())

func _on_Timer_timeout():
	emit_signal("facture", gain, cost) 
	$Timer.start()
	
func initialize_timer():
	if (rewardAtTime > 0):
		$Timer.wait_time = rewardAtTime
		$Timer.start()
	
func initialize_gain_cost(gainR, costR):
	gain = gainR
	cost = costR

func get_new_level():
	if level <= levelMax :
		level = level + 1
	