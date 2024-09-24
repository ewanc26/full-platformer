extends Control

@onready var navigation: AudioStreamPlayer2D = $Audio/navigation
@onready var click: AudioStreamPlayer2D = $Audio/click
@onready var start_button: Button = $VBoxContainer/StartButton

func _ready():
	start_button.grab_focus()

func _on_start_button_pressed() -> void:
	$Audio/click.play()
	get_tree().change_scene_to_file("res://menus/level_select.tscn")

func _on_quit_button_pressed() -> void:
	$Audio/click.play()
	get_tree().quit()
	
func _on_button_focus_entered() -> void:
	$Audio/navigation.play()
