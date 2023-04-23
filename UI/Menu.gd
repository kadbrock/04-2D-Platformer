extends Control

var menu = null

func _ready():
	pass

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.show()
			else:
				get_tree().paused = false
				menu.hide()

func _on_Continue_pressed():
	get_tree().paused = false
	hide()


func _on_Restart_pressed():
	Global.reset()
	var _scene = get_tree().change_scene("res://Levels/Level1.tscn")
	get_tree().paused = false


func _on_Quit_pressed():
	get_tree().quit()
