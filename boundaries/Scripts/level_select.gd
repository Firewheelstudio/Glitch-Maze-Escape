extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_level_1_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")

func _on_level_2_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")


func _on_level_3_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_3.tscn")



func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn") # Replace with function body.
