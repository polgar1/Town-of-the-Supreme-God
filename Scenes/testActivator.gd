extends Node2D

@export var dialogBox: Node2D

func _ready():
	dialogBox.activate()
	queue_free()
