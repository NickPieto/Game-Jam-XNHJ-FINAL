extends Node

var velocity = 1
var speed = 1
var jumping_speed = 1

func _ready():
	pass

func _physics_process(_delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("backward"):
		velocity.x -= speed
	if Input.is_action_pressed("forward"):
		velocity.x += speed 
	if Input.is_action_pressed("jump"):
		velocity.y -= jumping_speed

func is_moving():
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		return true
	return false

func move_vector():
	return Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),1.0)
