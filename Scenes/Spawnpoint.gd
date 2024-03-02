extends Node2D

var timer = randi_range(0.5, 1.5)
var tree : PackedScene = preload("res://1/tree_intro.tscn")
func _process(delta):
	timer -= delta
	if timer <= 0:
		var a = tree.instantiate()
		add_child(a)
		timer = randi_range(0.5, 1.5)
