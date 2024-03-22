extends Node2D

@onready var d = $"../DialogManager"

func _process(delta):
	if d == null:
		get_tree().change_scene_to_file("res://Scenes/17.tscn")
