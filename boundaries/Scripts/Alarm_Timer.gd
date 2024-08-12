extends Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_alarm_timer(plyr):
	if plyr.name == "playernode":
		start(2)
		
func _on_room_entrance_detector_body_entered(body):
	set_alarm_timer(body)# 2 second timer for alarm overlay


func _on_room_entrance_detector_2_body_entered(body):
	set_alarm_timer(body)  # Replace with function body.


func _on_room_entrance_detector_3_body_entered(body):
	set_alarm_timer(body) # Replace with function body.


func _on_room_entrance_detector_4_body_entered(body):
	set_alarm_timer(body) # Replace with function body.
