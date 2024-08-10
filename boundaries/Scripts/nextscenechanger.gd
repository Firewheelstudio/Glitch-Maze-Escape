extends Node2D

@export var nextscenes = ["res://Scenes/level_2.tscn", "res://Scenes/level_3.tscn", "res://Scenes/level_4.tscn"]
func _process(delta):
	match $"..".name:
		"level1":
			$"../winnode".file = nextscenes[0]
		"level2":
			$"../winnode".file = nextscenes[1]
		"level3":
			$"../winnode".file = nextscenes[2]
		_:
			pass
