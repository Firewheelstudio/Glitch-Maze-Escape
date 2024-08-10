extends Node2D

@export var nextscenes = ["res://Scenes/level_2.tscn", "res://Scenes/level_3.tscn"]
func _process(delta):
	if $"..".name == "level1":
		$"../winnode".file = nextscenes[0]
	if $"..".name == "level2":
		$"../winnode".file = nextscenes[1]
	
