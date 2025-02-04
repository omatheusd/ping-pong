extends Node2D

var diry: int = 1
var dirx: int = 1
var velocx: int = randi_range(100,500)
var velocy: int = randi_range(100,500)

signal gameoverp1
signal gameoverp2

func _ready() -> void:
	pass 
	position = Vector2(600,50)
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
	position += Vector2(velocx,velocy) *Vector2(dirx, diry) * delta
	#print(" ", position)
	if position.y >= 645:
		diry = - diry
	elif position.y <= 25:
		diry = - diry
	if position.x >= 1145:
		position = Vector2(550, 100)
		gameoverp2.emit()
	elif position.x <= 0:
		position = Vector2(550, 100)
		gameoverp1.emit()
		


func acertoubola(area: Area2D) -> void:
	dirx = -dirx
	velocx += randi_range(1, 50)
	velocy += randi_range(10, 100)
