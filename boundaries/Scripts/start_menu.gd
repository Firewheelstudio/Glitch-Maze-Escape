extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func level_select():
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")

func _start():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")

func _quit():
	get_tree().quit() # Replace with function body.

func _go_to_credits():
	get_tree().change_scene_to_file("res://credit_screen.tscn")

func _on_start_button_pressed():
	_start()

func _on_close_button_pressed():
	_quit() # Replace with function body.


func _on_credits_button_pressed():
	_go_to_credits() # Replace with function body.


func _on_levelselectbutton_pressed():
	level_select() # Replace with function body.
