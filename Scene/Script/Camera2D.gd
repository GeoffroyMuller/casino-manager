extends Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_up_hover : bool = false
var camera_down_hover : bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_downButton_button_down():
	camera_down_hover = true
	$downButton/TimerDown.start()
	pass # Replace with function body.


func _on_downButton_button_up():
	camera_down_hover = false
	$downButton/TimerDown.stop()
	pass # Replace with function body.


func _on_upButton_button_down():
	camera_up_hover = true
	$upButton/TimerUp.start()
	pass # Replace with function body.


func _on_upButton_button_up():
	$upButton/TimerUp.stop()
	camera_up_hover = false
	pass # Replace with function body.


func _on_TimerUp_timeout():
	self.move_local_y(-2)
	pass # Replace with function body.


func _on_TimerDown_timeout():
	self.move_local_y(2)
	pass # Replace with function body.
