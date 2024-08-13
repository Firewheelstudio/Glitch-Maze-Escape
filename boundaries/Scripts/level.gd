extends Node2D


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")


func _on_horizontal_patrolling_enemy_4_player_captured():
	pass # Replace with function body.


func _on_horizontal_patrolling_enemy_5_player_captured():
	pass # Replace with function body.


func _on_vertical_patrolling_enemy_10_player_captured():
	pass # Replace with function body.


func _on_horizontal_patrolling_enemy_6_player_captured():
	pass # Replace with function body.


func _on_horizontal_patrolling_enemy_7_player_captured():
	pass # Replace with function body.


func _on_vertical_patrolling_enemy_11_player_captured():
	pass # Replace with function body.


func _on_vertical_patrolling_enemy_13_player_captured():
	pass # Replace with function body.


#func _on_level_select_button_pressed():
#	get_tree().change_scene_to_file("res://Scenes/level_select.tscn") # Replace with function body.


func _on_end_button_pressed():
	get_tree().quit() # Replace with function body.


func _on_checkpointarea_2_body_entered(body):
	pass # Replace with function body.
