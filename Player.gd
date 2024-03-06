extends CharacterBody2D

@onready var anim = $AnimationPlayer
var speed : float = 15
@onready var eyes: Sprite2D = $Sprite2D/Eyes
@onready var sprite = $Sprite2D

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
	if(Input.is_action_pressed("Down") and (Input.is_action_pressed("Left") or Input.is_action_pressed("Right"))) or (Input.is_action_pressed("Up") and (Input.is_action_pressed("Right") or Input.is_action_pressed("Left"))):
		anim.play("walkVert")
	elif Input.is_action_pressed("Down") or Input.is_action_pressed("Up"):
		anim.play("walkVert")
	elif Input.is_action_pressed("Right") or Input.is_action_pressed("Left"):
		anim.play("walkHor")
	else:
		anim.play("idle")
	
	if anim.current_animation == "idle" or (anim.current_animation == "walkVert" and Input.is_action_pressed("Down")):
		eyes.visible = true
	else:
		eyes.visible = false
	
	if Input.is_action_pressed("Left"):
		sprite.scale.x = 1
		eyes.scale.x = -1
	if Input.is_action_pressed("Right"):
		sprite.scale.x = -1
		eyes.scale.x = 1
