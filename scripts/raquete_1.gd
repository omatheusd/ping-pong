extends Node2D
var ponto1 = 0
var ponto2 = 0
var speedy = 200
# Called when the node enters the scene tree for the first time.
signal acertou()
func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("cima(player1)"):
		position.y = position.y - speedy * delta
	if Input.is_action_pressed("baixo(player1)"):
		position.y = position.y + speedy * delta
	if position.y <= 99:
		position.y = 99
	if position.y >= 550:
		position.y = 550

func retornaPonto () -> int:
	return ponto1

func resetPonto () -> void:
	ponto1 = 0


func acertouraquete(area: Area2D) -> void:
	ponto1 = ponto1 + 1
	print("pontuacao vale ",ponto1)
	acertou.emit()
