extends Node2D

func _process(delta):
	if $"../DialogManager2" == null:
		get_tree().change_scene_to_file("res://Scenes/3.tscn")
