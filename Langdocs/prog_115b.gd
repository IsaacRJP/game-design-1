extends Control



func _on_button_pressed() -> void:
	$ItemList.add_item("Number")
	for num in range(2, 36+1, 2):
		# range(stop)
		# range(start, stop)
		# range (start, stop, step)
		# the 'stop' number is excluded, so add 1 if needed
		var line = str(num)
		$ItemList.add_item(line)
		
		

func _on_button_2_pressed() -> void:
	$ItemList.clear()
	



func _on_button_3_pressed() -> void:
	get_tree().quit()
