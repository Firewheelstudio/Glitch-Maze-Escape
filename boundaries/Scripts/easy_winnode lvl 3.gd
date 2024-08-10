extends Node2D

func _ready():
	pass

func _on_area_2d_body_entered(body):
	if body.name == "playernode":
		win()

func win():
	get_tree().change_scene_to_file("res://Scenes/easy_win_screen.tscn")
