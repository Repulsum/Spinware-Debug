extends CharacterBody2D

func _process(delta):
	look_at(get_global_mouse_position())
	rotate(PI/2)
