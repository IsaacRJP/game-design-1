extends Control



func _on_btn_calc_pressed() -> void:
	var num1 = int($Nmb1.text)
	var num2 = int($Nmb2.text)
	
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Prod = num1 * num2
	var Avg = Sum/2
	
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0
	
	if num1 > num2:
		Max = num1
	else:
		Max = num2
	
	if Max == num1:
		Min = num2
	else:
		Min = num1
	
	$Label.text = "Sum: " + str(Sum) + \
				  "\nDifference: " + str(Diff) + \
				  "\nAbs. Distance: " + str(Abs) + \
				  "\nMin: " + str(Min) + \
				  "\nMax: " + str(Max) + \
				  "\nProduct: " + str(Prod) + \
				  "\nAverage: " + str(Avg)

	


func _on_btn_clr_pressed() -> void:
	$Label.text = ""
	$Nmb1.text = ""
	$Nmb2.text = ""



func _on_btn_ext_pressed() -> void:
	get_tree().exit()
