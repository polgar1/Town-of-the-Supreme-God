extends Node2D

var timer= 2.0

func _process(delta):
	timer -= delta
	if timer <= 0:
		$"../DialogManager".activate()
		queue_free()
