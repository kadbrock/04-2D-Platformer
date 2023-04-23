extends Node

var score = 0
var lives = 5
var health = 100
var max_health = 100
var level = 1
var menu = null



func increase_score(s):
	score += s

func decrease_health(h):
	health -= h

func decrease_lives(l):
	lives -= l
	health = max_health
	if lives <= 0:
		var _scene = get_tree().change_scene("res://UI/End.tscn")

func reset():
	score = 0
	lives = 5

