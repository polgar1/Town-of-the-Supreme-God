extends Node2D
@onready var _5a = $"../5a"
@onready var interact_area_2 = $"../InteractArea2"

func _process(delta):
	if Global.beenIn10:
		_5a.queue_free()
		interact_area_2.queue_free()
		queue_free()
