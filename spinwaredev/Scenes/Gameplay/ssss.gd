extends StaticBody2D

@onready var scanio: CharacterBody2D = $Scanio
@onready var phage: CharacterBody2D = $"../Wheel/Area2D/Phage"

func _on_phage_detection_body_entered(body: Node2D) -> void:
	scanio.look_at(phage.global_position)
