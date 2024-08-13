extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_end_button_button_down():
	$"../playernode".respawn()

func _on_level_select_button_button_down():
	$"../playernode".respawn()
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn") # Replace with function body.
