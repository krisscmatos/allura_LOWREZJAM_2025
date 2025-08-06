extends Node2D



func _on_startbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/fase_inicial.tscn")

func _on_exit_button_pressed() -> void:
	get_tree().quit()
