extends Control



func _on_clear_pressed() -> void:
	$Label.text = "Hello, World!"
	
	

func _on_show_pressed() -> void:
	$Label.text = ""
