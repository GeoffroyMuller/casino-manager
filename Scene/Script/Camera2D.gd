extends Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_up_hover : bool = false
var camera_down_hover : bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_cameraUp_mouse_entered():
	camera_up_hover = true
	$cameraUp/TimerCameraUp.start()
	pass # Replace with function body.


func _on_TimerCameraUp_timeout():
	self.move_local_y(-2)
	pass # Replace with function body.


func _on_cameraUp_mouse_exited():
	$cameraUp/TimerCameraUp.stop()
	camera_up_hover = false
	pass # Replace with function body.


func _on_TimerCameraDown_timeout():
	self.move_local_y(2)
	pass # Replace with function body.


func _on_cameraDown_mouse_entered():
	camera_down_hover = true
	$cameraDown/TimerCameraDown.start()
	pass # Replace with function body.


func _on_cameraDown_mouse_exited():
	camera_down_hover = false
	$cameraDown/TimerCameraDown.stop()
	pass # Replace with function body.
