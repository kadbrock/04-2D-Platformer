extends Area2D


func _ready():
	pass


func _on_Door_body_entered(body):
	if body.name == "Player":
		$AnimatedSprite.play()




func _on_AnimatedSprite_animation_finished():
	get_tree().change_scene("res://UI/End.tscn")
