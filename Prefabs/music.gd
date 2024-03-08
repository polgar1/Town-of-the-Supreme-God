extends AudioStreamPlayer


func _on_finished():
	play()

func _process(delta):
	if get_tree().current_scene != null:
		if get_tree().current_scene.name == "GameOver":
			stop()
		elif not playing:
			playing = true
