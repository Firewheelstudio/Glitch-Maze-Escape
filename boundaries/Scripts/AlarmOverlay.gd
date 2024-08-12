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


func _on_room_entrance_detector_body_entered(body):
	if body.name == "playernode":
		alarm_active = true # Replace with function body.


func _on_room_entrance_detector_2_body_entered(body):
	if body.name == "playernode":
		alarm_active = true # Replace with function body.
