extends CharacterBody2D
@onready var scream: AudioStreamPlayer = $Scream
@onready var player = $".."
var isActive : bool
var timer : float = 5.0
var startPos: Vector2
func _ready():
	visible = false
	startPos = position

func _process(delta):
	if isActive:
		timer -= delta
		if player.velocity:
			$"../EnemyAttack".play("die")
		elif timer <= 0:
			deactivate()
		visible = true
	else:
		visible = false

func activate():
	isActive = true
	scream.play()

func death():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
func deactivate():
	isActive = false
	position = startPos
	timer = 5.0
