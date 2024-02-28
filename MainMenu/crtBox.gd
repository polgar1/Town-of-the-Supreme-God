extends CheckBox
@onready var crt = $"../CRT"

func _ready():
	button_pressed = true
func _process(delta):
	if button_pressed == true:
		Global.crtOn = true
		crt.visible =  true
	else:
		Global.crtOn = false
		crt.visible = false

