extends Area2D


func _on_body_entered(body):
	if body.is_in_group("player"):
		$"../5a".queue_free()
		queue_free()
