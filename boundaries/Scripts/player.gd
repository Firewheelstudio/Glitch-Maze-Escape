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
		
	if x_axis > 0 && canmove:
		$AnimatedSprite2D.play("side_walk")
		$AnimatedSprite2D.flip_h = false;
	if x_axis < 0 && canmove:
		$AnimatedSprite2D.play("side_walk")
		$AnimatedSprite2D.flip_h = true;
	if x_axis == 0 && $AnimatedSprite2D.animation == "side_walk":
		$AnimatedSprite2D.play("side_idle")
		
	if y_axis > 0 && x_axis == 0 && canmove:
		$AnimatedSprite2D.play("front_walk")
		
	if y_axis == 0 && $AnimatedSprite2D.animation == "front_walk":
		$AnimatedSprite2D.play("front_idle")
		
	if y_axis < 0 && x_axis == 0 && canmove:
		$AnimatedSprite2D.play("back_walk")
		
	if y_axis == 0 && $AnimatedSprite2D.animation == "back_walk":
		$AnimatedSprite2D.play("back idle")
#	if input == Vector2.ZERO:
#		velocity = Vector2.ZERO
#	else:
#		velocity += (input * accel * delta)
#		velocity = velocity.limit_length(speed)
	move_and_slide()


func _on_portal_entrance_portal_entered():
	print("entered Portal")
	position = $"../portal_exit".position # Replace with function body.
