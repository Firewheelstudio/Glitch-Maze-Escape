extends AudioStreamPlayer

func play_alarm(body):
	if body.name == "playernode":
		play(0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_room_entrance_detector_body_entered(body):
	play_alarm(body) # Replace with function body.


func _on_room_entrance_detector_2_body_entered(body):
	play_alarm(body) # Replace with function body.


func _on_room_entrance_detector_3_body_entered(body):
	play_alarm(body) # Replace with function body.


func _on_room_entrance_detector_4_body_entered(body):
	play_alarm(body) # Replace with function body.
