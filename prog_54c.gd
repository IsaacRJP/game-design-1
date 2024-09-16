extends Control

func _on_btn_calc_pressed() -> void:
	var Radius = float($txtRadius.text)
	var pi = 3.14159
	
	var Area = pi * Radius **2
	var Circ = 2 * pi * Radius
	
	$lblArea.text = "Area: " + str(Area)
	$lblCirc.text = "Circumference: " + str(Circ)


func _on_btn_exit_pressed() -> void:
	get_tree().quit()

func _on_btn_clear_pressed() -> void:
	$lblArea.text = "Area: "
	$lblCirc.text = "Circumference: "
