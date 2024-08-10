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
#	if input == Vector2.ZERO:
#		velocity = Vector2.ZERO
#	else:
#		velocity += (input * accel * delta)
#		velocity = velocity.limit_length(speed)
	move_and_slide()
