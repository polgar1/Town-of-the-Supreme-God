extends Node2D
@onready var dt = $DialogText
@onready var dt2 = $DialogText2
@onready var dt3 = $DialogText3
var index = 1

func _process(delta):
	if Input.is_action_just_released("Space"):
		index +=1
		$Beep.play()
	
	if index == 1:
		dt.visible = true
		dt2.visible = false
		dt3.visible = false
	elif index == 2:
		dt.visible = false
		dt2.visible = true
		dt3.visible = false
	elif index == 3:
		dt.visible = false
		dt2.visible = false
		dt3.visible = true
	elif index == 4:
		get_tree().change_scene_to_file("res://Scenes/4.tscn")
