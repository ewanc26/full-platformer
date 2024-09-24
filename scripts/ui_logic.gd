extends Node

# To keep track of input type
var using_mouse: bool = false
var using_controller: bool = false

func _input(event):
	# Detect mouse input
	if event is InputEventMouseMotion or event is InputEventMouseButton:
		using_mouse = true
		using_controller = false  # Reset controller flag if mouse is used
	elif event is InputEventKey:
		using_mouse = false  # Reset mouse flag if keyboard is used
		using_controller = false
	elif event is InputEventJoypadButton or event is InputEventJoypadMotion:
		using_controller = true
		using_mouse = false  # Reset mouse flag if controller is used

func is_using_mouse() -> bool:
	return using_mouse

func is_using_controller() -> bool:
	return using_controller
