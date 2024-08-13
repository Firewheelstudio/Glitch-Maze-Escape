extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_end_button_pressed():
	get_tree().quit() # Replace with function body.

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		_on_title_button_pressed()

func _on_title_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn") # Replace with function body.


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")# Replace with function body.
