extends Node2D
var file #this variable is modified by nextscenechanger.gd
func _ready():
	pass

func _on_area_2d_body_entered(body):
	if body.name == "playernode":
		win()

func win():
	get_tree().change_scene_to_file(file)
	print(file)
