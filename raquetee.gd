extends Node2D
var velox: int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	elif Input.is_action_pressed("esq"):
		position.x = position.x - velox + delta
	if position.x >= 1000:
		position.x	= 1000
	elif position.x <= 80:
		position.x = 80
