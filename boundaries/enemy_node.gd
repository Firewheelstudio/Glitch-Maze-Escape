extends Node2D


var speed = 700
var canmove = false

signal captured_player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if canmove:
		var vector_to_player = position - $"../playernode".position
		vector_to_player = vector_to_player.normalized()
		var velocity = vector_to_player * speed
		position -= velocity * delta

func _on_area_2d_body_entered(body):
	if body.name == "playernode": 
		captured_player.emit()# Replace with function body.


func _on_button_button_down():
	canmove = true # Replace with function body.
