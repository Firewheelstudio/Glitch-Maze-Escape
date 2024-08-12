extends CharacterBody2D
var speed = 800
var accel = 1500
var canmove = false

func _process(delta):
	var x_axis = Input.get_axis("move_left", "move_right")
	var y_axis = Input.get_axis("move_up", "move_down")
	var input := Vector2(x_axis, y_axis)
	if canmove == true:
		position += input * speed * delta
		
	if canmove:
		if x_axis > 0:
			$AnimatedSprite2D.play("side_walk")
			$AnimatedSprite2D.flip_h = false;
		if x_axis < 0:
			$AnimatedSprite2D.play("side_walk")
			$AnimatedSprite2D.flip_h = true;
		if x_axis == 0:
			if y_axis > 0:
				$AnimatedSprite2D.play("front_walk")
			if y_axis < 0:
				$AnimatedSprite2D.play("back_walk")
			if $AnimatedSprite2D.animation == "side_walk":
				$AnimatedSprite2D.play("side_idle")
		
		if y_axis == 0:
				if $AnimatedSprite2D.animation == "front_walk":
					$AnimatedSprite2D.play("front_idle")
				if $AnimatedSprite2D.animation == "back_walk":
					$AnimatedSprite2D.play("back idle")
#	if input == Vector2.ZERO:
#		velocity = Vector2.ZERO
#	else:
#		velocity += (input * accel * delta)
#		velocity = velocity.limit_length(speed)
	move_and_slide()

# signal from portal to teleport
func _on_portal_entrance_portal_entered():
	position = $"../portal_exit".position # Replace with function body.


# signals from enemies to tell player they've lost
func _on_enemy_node_captured_player():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_vertical_patrolling_enemy_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_horizontal_patrolling_enemy_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_horizontal_patrolling_enemy_2_player_captured():
		get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_horizontal_patrolling_enemy_3_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_vertical_patrolling_enemy_2_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_vertical_patrolling_enemy_4_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_vertical_patrolling_enemy_5_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
func _on_vertical_patrolling_enemy_6_player_captured():
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn") # Replace with function body.
	
