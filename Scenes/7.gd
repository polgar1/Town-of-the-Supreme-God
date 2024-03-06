extends Node2D
@onready var player = $Player

func _ready():
	if Global.prevScene == 6:
		player.position = Vector2(146, 83)
	elif Global.prevScene == 8:
		player.position = Vector2(143, 17)
	Global.prevScene = 7
