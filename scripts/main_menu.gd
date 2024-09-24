extends Control

@onready var start_button: Button = $Background/MarginContainer/VBoxContainer/StartButton

func _on_start_button_pressed() -> void:
	UISounds.play_click_sound()
	get_tree().change_scene_to_file("res://menus/level_select.tscn")

func _on_quit_button_pressed() -> void:
	UISounds.play_click_sound()
	get_tree().quit()

func _on_button_focus_entered() -> void:
	if not UILogic.is_using_mouse():  # Check if mouse is not used
		UISounds.play_navigation_sound()

func _on_button_mouse_entered() -> void:
	if not UILogic.is_using_mouse():  # Check if mouse is not used
		UISounds.play_navigation_sound()
