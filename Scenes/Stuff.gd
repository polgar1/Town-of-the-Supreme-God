extends Node2D
@onready var color_rect = $"../CanvasLayer/ColorRect"
@onready var color_rect_2 = $"../CanvasLayer/ColorRect2"
@onready var color_rect_3 = $"../CanvasLayer/ColorRect3"

var index = 0
var timer = 5.0

func _process(delta):
	timer -= delta
	
	if timer <= 0:
		timer = 5.0
		if index == 0:
			color_rect.visible = true
		elif index == 1:
			color_rect.visible = false
		elif index == 2:
			color_rect_2.visible = true
		elif index == 3: 
			color_rect_2.visible = false
		elif index == 4:
			color_rect_3.visible = true
		elif index == 6:
			color_rect_3.visible = false
		elif index == 7:
			get_tree().change_scene_to_file("res://Scenes/5.tscn")
		index += 1
