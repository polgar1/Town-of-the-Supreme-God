extends Node2D
@onready var dialog_manager_2 = $DialogManager2

func _ready():
	if not Global.hasRock:
		queue_free()

func _process(delta):
	if dialog_manager_2 == null:
		$"../Audio/glassShatter".play()
		$"../7".texture = load("res://2/7a.png")
		Global.wBroken = true
		queue_free()
