extends Node2D

func _process(delta):
	if $"../DialogManager" == null:
		get_tree().change_scene_to_file("res://Scenes/13.tscn")
