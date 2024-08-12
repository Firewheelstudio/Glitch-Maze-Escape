extends Node2D

@export var checpoints = []
@onready var plr = $"../../playernode"

func _on_area_2d_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint1".global_position
		$"../checkpoint1/Area2D/CollisionShape2D".disabled = true


func _on_checpointarea_2_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint2".global_position
		$"../checkpoint2/checpointarea2/CollisionShape2D".disabled = true
