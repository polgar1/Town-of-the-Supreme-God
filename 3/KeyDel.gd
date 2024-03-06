extends Node2D

func _process(delta):
	if $"../DialogManager" == null:
		$"../Table0".texture = load("res://3/table1.png")
		Global.hasKey = true
		
		queue_free()
