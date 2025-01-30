extends Node2D

class_name RAQUETEINIMIGA

var speedx: int = 300
var ponto: int = 0

signal acertou

func _ready() -> void:
	pass 
	
func _process(delta: float) -> void:
	if Input.is_action_pressed("baix2"):
		position.y = position.y + speedx * delta
	elif Input.is_action_pressed("cima2"):
		position.y = position.y - speedx * delta
	
	if position.y <= 100:
		position.y = 100
	elif position.y >= 550:
		position.y = 550

func retornaPonto () -> int:
	return ponto

func resetPonto () -> void:
	ponto = 0


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
