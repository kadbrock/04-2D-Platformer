extends KinematicBody2D

export var speed = 2
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO


func _physics_process(_delta):
	print("Physics process called")
	velocity.x = direction * speed
	print("Velocity: ", velocity)
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		print("Collision detected")
		direction *= -1
	print("Position: ", position)
