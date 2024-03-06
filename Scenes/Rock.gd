extends Sprite2D

func _process(delta):
	if Global.hasRock:
		$"../InteractArea2".queue_free()
		queue_free()
	if $"../DialogManager2" == null:
		Global.hasRock = true
		queue_free()
