extends Node2D

onready var Pause_Menu = $UI/Pause

func _ready():
	pass

func _unhandled_input(_event):
	if Input.is_action_pressed("pause"):
		#print("paused game")
		if Pause_Menu.visible == true:
			#print("visible")
			get_tree().paused = false
			Pause_Menu.hide()
		else:
			#print("invisible")
			get_tree().paused = true
			Pause_Menu.show()
