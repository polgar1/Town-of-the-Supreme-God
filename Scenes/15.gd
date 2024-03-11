extends Node2D

func _process(delta):
	if Input.is_action_just_released("Space"):
		get_tree().change_scene_to_file("res://Scenes/16.tscn")
