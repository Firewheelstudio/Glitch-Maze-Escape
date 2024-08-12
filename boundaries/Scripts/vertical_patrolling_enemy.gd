extends Node2D

signal player_captured
var speed = 500
var vector = Vector2.UP

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = speed * vector
	position += velocity * delta


func _on_area_2d_body_entered(body):
	match body.name:
		"TileMap":
			vector *= -1 # Replace with function body.
		"playernode":
			player_captured.emit()
