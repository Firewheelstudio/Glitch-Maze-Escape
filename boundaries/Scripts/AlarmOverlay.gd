extends Sprite2D

var alarm_active = false
var modulate_dir = 0.001
# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a = 0 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if alarm_active:
		modulate.a += modulate_dir


func _on_timer_timeout():
	modulate_dir *= -1 # Replace with function body.

func activate_alarm(plyr):
	if plyr.name == "playernode":
		alarm_active = true

func _on_room_entrance_detector_body_entered(body):
	activate_alarm(body) # Replace with function body.


func _on_room_entrance_detector_2_body_entered(body):
	activate_alarm(body) # Replace with function body.


func _on_room_entrance_detector_3_body_entered(body):
	activate_alarm(body) # Replace with function body.


func _on_room_entrance_detector_4_body_entered(body):
	activate_alarm(body) # Replace with function body.


func _on_timer_2_timeout():
	modulate_dir *= -1 # Replace with function body.
