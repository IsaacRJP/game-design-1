extends Control



func _on_btn_calculate_pressed() -> void:
	var nmb1 = int($Nmb1.text)
	var nmb2 = int($Nmb2.text)
	var nmb3 = int($Nmb3.text)
	var nmb4 = int($Nmb4.text)
	var Sum = nmb1 + nmb2 + nmb3 + nmb4
	var Avg = Sum/4
	$lblSum.text = "Sum: " + str(Sum)
	$lblAvg.text = "Average: " + str(Avg)




func _on_btn_exit_pressed() -> void:
	get_tree().quit()
