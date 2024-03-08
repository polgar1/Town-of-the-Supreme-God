extends Node2D


func _process(delta):
	if Input.is_action_just_released("Space"):
		Global.hasKey = false
		Global.wBroken = false
		Global.hasRock = false
		Global.beenIn10 = false
		get_tree().change_scene_to_file("res://Scenes/" + str(Global.prevScene) +".tscn")

