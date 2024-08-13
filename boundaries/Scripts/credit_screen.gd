extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		_on_back_button_pressed()

func _return_to_title():
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")

func _on_back_button_pressed():
	_return_to_title() # Replace with function body.
