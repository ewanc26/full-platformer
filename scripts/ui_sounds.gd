extends Node

# Preload the audio files so they can be instantiated later
var navigation_audio: AudioStream = preload("res://assets/UI/Interface Sounds/tick_002.ogg")
var click_audio: AudioStream = preload("res://assets/UI/Interface Sounds/select_001.ogg")
var error_audio: AudioStream = preload("res://assets/UI/Interface Sounds/error_006.ogg")

# Onready variables to hold the audio players
@onready var navigation: AudioStreamPlayer2D = AudioStreamPlayer2D.new()
@onready var click: AudioStreamPlayer2D = AudioStreamPlayer2D.new()
@onready var error: AudioStreamPlayer2D = AudioStreamPlayer2D.new()

func _ready():
	# Set the audio stream for each AudioStreamPlayer2D instance
	navigation.stream = navigation_audio
	click.stream = click_audio
	error.stream = error_audio

	# Optionally, add the players to the scene tree if necessary
	add_child(navigation)
	add_child(click)
	add_child(error)

# Functions to play sounds
func play_navigation_sound():
	navigation.play()

func play_click_sound():
	click.play()

func play_error_sound():
	error.play()
