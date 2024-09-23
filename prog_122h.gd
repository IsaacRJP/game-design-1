extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number  Square Root  Cube  4th Root")
	for num in range(1, 25):
		var numsquared = num**2
		var numsquareroot = sqrt(num)
		var numcube = num**3
		var numfourroot = num **(0.25)
		var line = "%d %d %.4f %d %.4f" %[num, numsquared, numsquareroot, numcube, numfourroot]
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
