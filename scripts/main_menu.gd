extends Control

@onready var navigation: AudioStreamPlayer2D = $Audio/navigation
@onready var click: AudioStreamPlayer2D = $Audio/click

func _on_start_button_pressed() -> void:
	$Audio/click.play()
	get_tree().change_scene_to_file("res://menus/level_select.tscn")

func _on_quit_button_pressed() -> void:
	$Audio/click.play()
	get_tree().quit()
	
func _on_button_mouse_entered() -> void:
	$Audio/navigation.play()
