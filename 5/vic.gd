extends CharacterBody2D
var timer = randf_range(3.5, 5.5)

func _process(delta):
	timer -= delta
	if timer <= 0:
		shoot()

func shoot():
	var bullet = preload("res://5/bullet.tscn").instantiate()
	get_parent().add_child(bullet)
	bullet.position = position
	timer = randf_range(3.5, 5.5)
