extends CharacterBody2D

@onready var player = get_tree().get_first_node_in_group("player")
var speed : float = .55
@onready var targetPos = Vector2(player.position.x, player.position.y-30)
var timer = 3.0
func _process(delta):
	position = position.lerp(targetPos,speed * delta)
	timer -= delta
	if timer <= 0:
		queue_free()


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
