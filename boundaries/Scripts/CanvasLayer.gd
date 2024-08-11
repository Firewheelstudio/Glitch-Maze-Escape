extends CanvasLayer


func _on_button_button_down():
	$Label.hide()
	$Button.hide()
	$Label2.hide()
	$"../..".canmove = true
