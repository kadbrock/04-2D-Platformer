extends KinematicBody2D

var player = null
onready var ray = $RayCast2D
export var speed = 45
export var damage = 10
var velocity = Vector2.ZERO

func _physics_process(_delta):
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		ray.cast_to = to_local(player.global_position)
		if ray.is_colliding() and ray.get_collider().name == "Player":
			velocity = ray.cast_to.normalized()*speed
			velocity = move_and_slide(velocity, Vector2(0,0))

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.do_damage(damage)
