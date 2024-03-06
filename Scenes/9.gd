extends Node2D
@onready var player = $Player

func _ready():
	if Global.prevScene == 7:
		player.position = Vector2(80,69)
	elif Global.prevScene == 10:
		player.position = Vector2(145,48)
