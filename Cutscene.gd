extends AnimationPlayer

func _ready():
	play("1")

func _on_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://Scenes/14.tscn")
