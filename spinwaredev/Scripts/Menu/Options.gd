extends Control

func _on_volume_pressed() -> void:
	pass # Replace with function body.

func _on_controls_pressed() -> void:
	pass # Replace with function body.

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu/MainMenu.tscn")
