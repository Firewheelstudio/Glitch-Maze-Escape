extends CanvasLayer

func _process(delta):
	if Input.is_action_pressed("move_down"):
		$Label.hide()
		$Label2.hide()
		$"../..".canmove = true
	if Input.is_action_pressed("move_up"):
		$Label.hide()
		$Label2.hide()
		$"../..".canmove = true
	if Input.is_action_pressed("move_left"):
		$Label.hide()
		$Label2.hide()
		$"../..".canmove = true	
	if Input.is_action_pressed("move_right"):
		$Label.hide()
		$Label2.hide()
		$"../..".canmove = true
func _on_button_button_down():
	$Label.hide()
	$Label2.hide()
	$"../..".canmove = true
	
