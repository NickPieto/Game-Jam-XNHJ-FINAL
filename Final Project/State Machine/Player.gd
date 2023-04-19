extends Node

var velocity = 1
var speed = 1
var jumping_speed = 1

func _ready():
	pass

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("backward"):
		velocity.x -= speed
	if Input.is_action_pressed("forward"):
		velocity.x += speed 
	if Input.is_action_pressed("jump"):
		velocity.y -= jumping_speed
