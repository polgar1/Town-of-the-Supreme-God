extends Area2D

@export var dialogManager:Node2D
@export var x : float
@export var y : float
var playerInside: bool
@onready var dialog_bubble = $DialogBubble


func _ready():
	get_child(0).scale = Vector2(x,y)

func _process(delta):
	if playerInside and Input.is_action_just_released("Space"):
		dialogManager.activate()
		queue_free()
	if playerInside:
		dialog_bubble.visible = true
	else:
		dialog_bubble.visible = false
func _on_body_entered(body):
	if body.is_in_group("player"):
		playerInside = true


func _on_body_exited(body):
	if body.is_in_group("player"):
		playerInside = false
