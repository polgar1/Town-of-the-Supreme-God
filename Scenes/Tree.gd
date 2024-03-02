extends CharacterBody2D


func _process(delta):
	velocity.x = 50000 * delta

	move_and_slide()


