extends Node2D

class_name RAQUETE

var ponto: int = 0
var speedx: int = 300

signal acertou

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("baixo"):
		position.y = position.y + speedx * delta
	elif Input.is_action_pressed("cima"):
		position.y = position.y - speedx * delta
	
	if position.y <= 100:
		position.y = 100
	elif position.y >= 541:
		position.y = 541
	#print("raquete esta em: ", position, "posicao")

func retornaPonto () -> int:
	return ponto

func resetPonto () -> void:
	ponto = 0


func acertaramRaquete(area: Area2D) -> void:
	ponto = ponto + 1
	print("pontuacao vale ",ponto)
	acertou.emit()
