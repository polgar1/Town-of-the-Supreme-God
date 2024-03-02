extends Node2D
@onready var color_rect = $"../CanvasLayer/ColorRect"
@onready var color_rect_2 = $"../CanvasLayer/ColorRect2"
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
		index += 1
