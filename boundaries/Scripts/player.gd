extends CharacterBody2D
var speed = 800
var accel = 1500
var canmove = false

func _on_portal_entrance_portal_entered():
	position = $"../portal_exit".position 


var placetorespawn  #it contains coords of current checpoint
func _ready():
	$Camera2D/CanvasLayer/Label3.hide()
	$Camera2D/CanvasLayer/end_button.hide()
	$Camera2D/CanvasLayer/level_select_button.hide()
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
# Replace with function body.


# signals from enemies to tell player they've lost
func _on_enemy_node_captured_player():
	death()
func _on_vertical_patrolling_enemy_player_captured():
	death()
func _on_horizontal_patrolling_enemy_player_captured():
	death()
func _on_horizontal_patrolling_enemy_2_player_captured():
	death()
func _on_horizontal_patrolling_enemy_3_player_captured():
	death()
func _on_vertical_patrolling_enemy_2_player_captured():
	death()
func _on_vertical_patrolling_enemy_4_player_captured():
	death()
func _on_vertical_patrolling_enemy_5_player_captured():
	death()
func _on_vertical_patrolling_enemy_6_player_captured():
	death()

func death():
	canmove = false
	$Camera2D/CanvasLayer/Label3.show()
	$Camera2D/CanvasLayer/end_button.show()
	$Camera2D/CanvasLayer/level_select_button.show()
func respawn():
	global_position = placetorespawn
	$Camera2D/CanvasLayer/Label3.hide()
	$Camera2D/CanvasLayer/end_button.hide()
	$Camera2D/CanvasLayer/level_select_button.hide()
	canmove = true
	velocity = Vector2.ZERO


func _on_vertical_patrolling_enemy_3_player_captured():
	death() # Replace with function body.


func _on_horizontal_patrolling_enemy_4_player_captured():
	death() # Replace with function body.


func _on_vertical_patrolling_enemy_7_player_captured():
	death() # Replace with function body.


func _on_vertical_patrolling_enemy_8_player_captured():
	death() # Replace with function body.


func _on_vertical_patrolling_enemy_9_player_captured():
	death() # Replace with function body.


func _on_horizontal_patrolling_enemy_6_player_captured():
	death() # Replace with function body.


func _on_horizontal_patrolling_enemy_8_player_captured():
	death() # Replace with function body.


func _on_vertical_patrolling_enemy_12_player_captured():
	death() # Replace with function body.
