extends Node2D


func _ready():
	pass

func physics_process(_delta):
	if Input.action_is_pressed("pause"):
		var _scene = get_tree().change_scene("res://UI/Pause.tscn")
