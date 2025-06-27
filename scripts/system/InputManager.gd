# scripts/systems/InputManager.gd
extends Node

## Valeur de mouvement actuel
var move_direction := Vector2.ZERO

## Dernière action lancée (pour affichage, debug, ou son)
var last_action := ""

## Pour commandes vocales (plus tard)
var last_voice_command := ""

func _process(_delta):
	_read_movement()

func _read_movement():
	var direction = Vector2.ZERO
	
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	if (direction.length() > 1):
		direction = Vector2.ZERO
		
	move_direction = direction
