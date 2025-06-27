extends CharacterBody2D

@export var move_speed: float = 150.0

func _physics_process(_delta: float): 
	velocity = InputManager.move_direction * move_speed
	
	move_and_slide()
