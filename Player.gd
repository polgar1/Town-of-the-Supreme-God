extends CharacterBody2D

@onready var anim = $AnimationPlayer
var speed : float = 15
func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("Right"):
		motion.x += 1
	if Input.is_action_pressed("Left"):
		motion.x -= 1
	if Input.is_action_pressed("Down"):
		motion.y += 1
	if Input.is_action_pressed("Up"):
		motion.y -= 1
	
	motion = motion.normalized()
	velocity = motion * speed
	move_and_slide()

func _process(delta):
	handleAnim()

func handleAnim():
	if(Input.is_action_just_pressed("Down") and (Input.is_action_just_pressed("Left") or Input.is_action_just_pressed("Right"))) or (Input.is_action_just_pressed("Up") and (Input.is_action_just_pressed("Right") or Input.is_action_just_pressed("Left"))):
		anim.play("walkVert")
	elif Input.is_action_pressed("Down") or Input.is_action_pressed("Up"):
		anim.play("walkVert")
	elif Input.is_action_pressed("Right") or Input.is_action_pressed("Left"):
		anim.play("walkHor")

	else:
		anim.play("idle")
