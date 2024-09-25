class_name MainMenu
extends Control

@onready var start_button: Button = $Background/MarginContainer/VBoxContainer/StartButton

func _on_start_button_pressed() -> void:
	UISounds.play_click_sound()
	LevelManager.load_level(1)
	deactivate()
	
func _on_quit_button_pressed() -> void:
	UISounds.play_click_sound()
	await get_tree().create_timer(0.5).timeout  # Wait for 0.5 seconds
	get_tree().quit()
	
func _on_button_focus_entered() -> void:
	if not UILogic.is_using_mouse():  # Check if mouse is not used
		UISounds.play_navigation_sound()

func _on_button_mouse_entered() -> void:
	if not UILogic.is_using_mouse():  # Check if mouse is not used
		UISounds.play_navigation_sound()

func deactivate() -> void:
	hide()
	set_process(false)
	set_physics_process(false)
	set_process_unhandled_input(false)
	set_process_input(false)

func activate() -> void:
	show()
	set_process(true)
	set_physics_process(true)
	set_process_unhandled_input(true)
	set_process_input(true)
