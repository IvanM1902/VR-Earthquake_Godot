class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/startButton as Button
@onready var map_button = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/mapButton as Button
@onready var leaderboard_button = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/leaderboardButton as Button
@onready var exit_button = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/exitButton as Button

@onready var start_level = preload("res://src/apartment_scene.tscn")

func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed():
	get_tree().change_scene_to_packed(start_level)
	
func on_exit_pressed():
	get_tree().quit()
