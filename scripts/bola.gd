extends Node2D

var dirx: int = 1
var velocx: int = 50
var diry: int = 1
var velocy: int = 50
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	var atoa: int = randi_range(0,1)
	if atoa == 0:
		diry = -1
	else:
		dirx = -1
	atoa = randi_range(0,1)
	if atoa == 0:
		diry = -1
	else:
		dirx = -1
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = Vector2(velocx,velocy) *Vector2( dirx,diry)
	if position.y <= 10:
		diry = -diry
	print (position)
