extends Node2D

var id : int = -1
var cost : int = 0
var gain : int = 0
var position_x : int = -1
var position_y : int = -1
var time : float = 0
export var rewardAtTime : int = 0

signal clicked(room, id)
signal facture(gain, cost)

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
