extends CharacterBody2D

@onready var phage: CharacterBody2D = $"../Wheel/Area2D/Phage"

func _process(delta):
	look_at(phage.global_position)
	rotate(PI/2)
