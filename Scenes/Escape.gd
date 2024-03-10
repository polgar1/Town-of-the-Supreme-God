extends Area2D
func asd():
	if $"../InteractArea" != null:
		$"../InteractArea".queue_free()
	$"../SceneChangerArea".position = Vector2(137, -2)
	$"../12".texture = load("res://3/12a.png")
	$"../Beep".play()

func _on_body_entered(body):
	if body.is_in_group("b"):
		asd()
