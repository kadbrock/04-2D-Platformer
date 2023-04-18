extends KinematicBody2D

<<<<<<< HEAD
export var speed = 25
=======
export var speed = 20
>>>>>>> 250cae1eb65c85df96d08e59f803c61ffc4f7f11
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO


func _physics_process(_delta):
<<<<<<< HEAD
	if direction < 0 and !$Sprite.flip_h:
		$Sprite.flip_h = true
	if direction > 0 and $Sprite.flip_h:
		$Sprite.flip_h = false
	velocity.x = direction * speed
	move_and_slide_with_snap(velocity, Vector2.UP)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Platform" or collision.collider.name == "Ground":
			velocity.x = 0
			direction *= -1
		if collision.collider.name == "Player":
			collision.collider.do_damage(damage)

=======
	velocity.x = direction * speed
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		direction *= -1
>>>>>>> 250cae1eb65c85df96d08e59f803c61ffc4f7f11
