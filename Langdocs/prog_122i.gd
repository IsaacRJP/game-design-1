extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number  Cube Root  Cube")
	for num in range(-25, 26):
		var cube = num**3
		var cuberoot = num**1/3
		var line = "%d %.4f %.4f" % [num, cuberoot, cube]
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
