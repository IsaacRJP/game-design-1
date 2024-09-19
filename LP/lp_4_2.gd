extends Control

func _on_btn_calc_pressed() -> void:
	var kg = int($txtWeight.text)
	var Height = int($txtHeight.text)
	var Width = int($txtWidth.text)
	var Length = int($txtLength.text)
	var size = Height * Width * Length
	if kg >27 and size>100_000:
		$lblOut.text = "Too Heavy and Too Large"
	elif kg<28 and size>100_000:
		$lblOut.text = "Too Large"
	elif kg>27 and size<100_000:
		$lblOut.text = "Too Heavy"
	else:
		$lblOut.text = "Package is able to be shipped :D"
	


func _on_btn_clear_pressed() -> void:
	$lblOut.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
