extends Area2D
@export_file("*.tscn") var nextScene
@export var x : float
@export var y : float

func _ready():
	get_child(0).scale = Vector2(x,y)


func _on_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene_to_file(nextScene)

