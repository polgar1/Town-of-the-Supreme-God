extends Node2D

func _process(delta):
	if $"../DialogManager" == null:
		var stuff = preload("res://Prefabs/interact_area.tscn").instantiate()
		stuff.x = 2
		stuff.y = 2
		stuff.position = $"../Car".position
		$"..".add_child(stuff)
		stuff.dialogManager = $"../DialogManager2"
		queue_free()
