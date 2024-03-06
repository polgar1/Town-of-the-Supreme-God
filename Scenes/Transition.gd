extends Node2D
var timer : float = 1
func _process(delta):
	if $"../WindowBreak" == null and Global.wBroken:
		timer -= delta
		if timer <= 0:
			get_tree().change_scene_to_file("res://Scenes/9.tscn")
