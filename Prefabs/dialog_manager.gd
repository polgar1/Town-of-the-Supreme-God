extends Node2D


@export var dialogLines: Array[String]
@onready var dialogBox: Label = get_tree().get_first_node_in_group("db")
@onready var index = 0
@onready var beep: AudioStreamPlayer = get_tree().get_first_node_in_group("beep")
@export var voiceLines : Array[AudioStreamPlayer]
var timerStarted
var timer := 0.3
var isActive : bool
func _process(delta):
	if len(dialogLines) != index and len(voiceLines) != index and isActive:
		dialogBox.text = dialogLines[index]
		if Input.is_action_just_released("Space") and dialogBox.visible and timer <= 0:
			nextLine()
			timer = 0.2
	elif isActive:
		deactivate()
		beep.play()
		queue_free()
	
	if timerStarted:
		timer -= delta

func nextLine():
	if voiceLines[index].playing:
		voiceLines[index].stop()
	index+=1
	if len(voiceLines) > index:
		voiceLines[index].play()

func activate():
	beep.play()
	dialogBox.visible = true
	timer = 0.2
	timerStarted = true
	voiceLines[0].play()
	isActive = true

func deactivate():
	dialogBox.visible = false
	isActive = false
