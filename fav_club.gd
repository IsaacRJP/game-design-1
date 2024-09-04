extends Control



func _on_show_pressed() -> void:
	$Label.text = "Track"


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_clear_pressed() -> void:
	$Label.text = ""
