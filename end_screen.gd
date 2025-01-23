extends Control



func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_replay_button_pressed() -> void:
		var lvl = "res://" + "level_1" + ".tscn"
		get_tree().change_scene_to_file(lvl)
