extends AnimationPlayer
@onready var vic = $".."


func _process(delta):
	if vic.velocity:
		play("walk")
	else:
		play("idle")
