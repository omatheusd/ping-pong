extends Node2D

#@onready var pont_1: label = $placarp1
#@onready var pont_2: label = $placarp2
@onready var pont_1: Label = $placarp1
@onready var pont_2: Label = $placarp2

var ponto1 : int = 0
var ponto2 : int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_bola_gameoverp_1() -> void:
	ponto1 += 1
	pont_1.text = "PLAYER2:%03d" % ponto1

func _on_bola_gameoverp_2() -> void:
	ponto2 += 1
	pont_2.text = "PLAYER1:%03d" % ponto2
	pass
