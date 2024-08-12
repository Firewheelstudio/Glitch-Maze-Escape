extends Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_room_entrance_detector_body_entered(body):
	if body.name == "playernode":
		start(2) # 2 second timer for alarm overlay


func _on_room_entrance_detector_2_body_entered(body):
	if body.name == "playernode":
		start(2)  # Replace with function body.
