extends Node2D

@export var cScene: int

func _ready():
	Global.prevScene = cScene
	Global.beenIn10 = true
