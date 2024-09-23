extends Control




func _on_btn_calc_pressed() -> void:
	var mySum = 0
	var lcv = 3 #Loop Control Variable
	while lcv <= 9669:  #run code WHILE condition is true
		mySum += lcv
		$ItemList.add_item(str(mySum))
		lcv += 3


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
