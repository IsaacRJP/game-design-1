extends Control


func _on_calculate_button_pressed() -> void:
	var Length = int($txtLength.text)
	var Width = int($txtWidth.text)
	var Area = Length * Width
	var Perim = 2 * Length + 2 * Width
	$lblArea.text = "Area: " + str(Area)
	$lblPerimeter.text = "Perimeter:" + str(Perim)
	# Operators: + - * / %     ** pow
	# str - String (text)
	# int - integer (whole number)
	# float - Floating-point number (w/ decimal)
	


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_clear_button_pressed() -> void:

	$txtLength.text = ""
	$txtWidth.text = ""
	$lblArea.text = "Area:"
	$lblPerimeter.text = "Perimeter:"
