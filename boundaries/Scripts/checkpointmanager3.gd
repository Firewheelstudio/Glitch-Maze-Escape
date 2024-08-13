extends Node2D
@onready var plr = $"../../playernode"


func _on_checkpointarea_1_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint1".global_position
		$"../checkpoint1/checkpointarea1/CollisionShape2D".queue_free()

func _on_checkpointarea_2_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint2".global_position
		$"../checkpoint2/checkpointarea2/CollisionShape2D".queue_free()


func _on_checkpointarea_3_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint3".global_position
		$"../checkpoint3/checkpointarea3/CollisionShape2D".queue_free()


func _on_checkpointarea_4_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint4".global_position
		$"../checkpoint4/checkpointarea4/CollisionShape2D".queue_free()


func _on_checkpointarea_5_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint5".global_position
		$"../checkpoint5/checkpointarea5/CollisionShape2D".queue_free()


func _on_checkpointarea_6_body_entered(body):
	if body.name == "playernode":
		plr.placetorespawn = $"../checkpoint6".global_position
		$"../checkpoint6/checkpointarea6/CollisionShape2D".queue_free()
