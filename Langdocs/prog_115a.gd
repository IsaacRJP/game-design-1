extends Control




func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number")
	
	for num in range(2, 36+1, 2):
		# range(stop)
		# range(start, stop)
		# range (start, stop, step)
		# the 'stop' number is excluded, so add 1 if needed
		var line = str(num)
		$ItemList.add_item(line)

func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	pass # Replace with function body.
