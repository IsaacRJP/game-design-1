extends Control



func _on_btn_calc_pressed() -> void:
	for num in range(2, 11, 2):
		var clm2 = num+1
		var clm3 = num*2
		var clm4 = num**2
		var line = "%d %d %d %d" % [num, clm2, clm3, clm4]
		$ItemList1.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList1.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
