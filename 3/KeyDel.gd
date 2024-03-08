extends Node2D

func _process(delta):
	if $"../DialogManager" == null:
		$"../Table0".texture = load("res://3/table1.png")
		Global.hasKey = true
		get_tree().get_first_node_in_group("enemy").activate()
		queue_free()
