extends Node2D

var speedy = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("w(player2)"):
		position.y = position.y - speedy * delta
	if Input.is_action_pressed("s(player2)"):
		position.y = position.y + speedy * delta
	elif position.y <= 90:
		position.y = 90
	elif position.y >= 560:
		position.y = 560
	
