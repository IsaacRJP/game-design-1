extends Control



func _on_btn_calc_pressed() -> void:
	var A = int($txtA.text)
	var B = int($txtB.text)
	var C = int($txtC.text)
	var Root = (-B+((B**2)-4*A*C)**0.5)/2*A
	$Output.text = str(Root)



func _on_btn_clear_pressed() -> void:
	$Output.text = "()"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
