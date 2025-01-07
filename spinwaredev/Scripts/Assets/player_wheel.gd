extends Control

@onready var wheel: Control = $"."
@onready var area_2d: Area2D = $Area2D
@onready var grab_zone: CollisionShape2D = $Area2D/GrabZone

var is_dragging : bool = false
var mouse_click : bool = false
var dashing = false
var direction
var rotation_speed = 0.1

func _input(event : InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				is_dragging = true
			else:
				is_dragging = false
				mouse_click = false
				
	if is_dragging == true and mouse_click == true:
		area_2d.look_at(get_global_mouse_position())


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				mouse_click = true
