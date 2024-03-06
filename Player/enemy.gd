extends CharacterBody2D

@onready var player = $".."
var isActive : bool
var timer : float = 5.0
func _ready():
	visible = false

func _process(delta):
	if isActive:
		timer -= delta
		if timer <= 0:
			death()
		visible = true
	else:
		visible = false

func activate():
	isActive = true

func death():
	pass
