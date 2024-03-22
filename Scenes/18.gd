extends Node2D

var timer : float = 5.0

func _process(delta):
	timer -= delta
	if timer <= 0:
		get_tree().change_scene_to_file("res://MainMenu/menu.tscn")
