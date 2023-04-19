extends Control

var Global

func _ready():
	pass

func _on_Resume_pressed():
	get_tree().paused = false
	Global.reset()
	var _scene = get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
	get_tree().quit()
