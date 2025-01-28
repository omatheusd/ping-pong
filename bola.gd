extends Node2D

var velocy: int = 100
var diry: int = 1
var dirx: int = 1
var velocx: int = 20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y + diry *  (velocy * delta)
	position.x = position.x + dirx *  (velocx * delta)
	if position.y >= 640:
		diry = -diry
	elif position.y <= 10:
		diry = -diry
	if position.x >= 100:
		dirx = -dirx
	elif position.x <= 10:
		dirx = -dirx
