extends KinematicBody2D

export var speed = 20
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO


func _physics_process(_delta):
	velocity.x = direction * speed
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		direction *= -1
