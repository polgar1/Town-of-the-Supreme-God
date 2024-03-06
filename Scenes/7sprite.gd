extends Sprite2D

func _process(delta):
	if Global.wBroken:
		texture = load("res://2/7a.png")
