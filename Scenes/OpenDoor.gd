extends Node2D

func _process(delta):
	if not Global.hasKey:
		queue_free()
	elif $"../InteractArea" != null:
		$"../InteractArea".queue_free()
