extends Control


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Gameplay/GameScene.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu/OptionsMenu.tscn")

func _on_exit_pressed():
	get_tree().quit()
