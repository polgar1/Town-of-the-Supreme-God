extends ColorRect

func _ready():
	checkIfActive()

func checkIfActive():
	if not Global.crtOn and get_parent().name != "Menu":
		queue_free() 
