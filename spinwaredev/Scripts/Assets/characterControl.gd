extends CharacterBody2D

signal shoot
signal health
signal dead

@export var Bullet: PackedScene
@export var speed: int
@export var gun_cooldown: float
@export var life: int

var can_shoot = true
var alive = true

	
func _input(_event: InputEvent):
	if Input.is_action_pressed("fire") and $ShootTimer.is_stopped():
		pew()
		
func pew():
	if can_shoot:
		var dir = Vector2(0, -1).rotated($".".global_rotation)
		emit_signal("shoot", Bullet, $Marker2D.global_position,dir)
		$ShootTimer.start()
