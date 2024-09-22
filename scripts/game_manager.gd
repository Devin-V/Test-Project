extends Node

var score = 0
@onready var score_label: Label = $"../cat/Camera2D/ScoreLabel"


func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " fish."
	if score == 5:
		get_tree().change_scene_to_file("res://scenes/you_win.tscn")
	
