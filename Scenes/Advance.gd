extends Node2D

func _process(delta):
	if Global.hasKey and $"../OpenDoor/DialogManager3" == null:
		get_tree().change_scene_to_file("res://Scenes/11.tscn")
