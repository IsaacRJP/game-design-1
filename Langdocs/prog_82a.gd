extends Control



func _on_btn_calc_pressed() -> void:
	var speedLimit = int($txtLimit.text)
	var carSpeed = int($txtSpeed.text)
	var milesOver = carSpeed - speedLimit
	var fine = 20.0 + (milesOver * 5.0)
	
	$OutMoney.text = "$ %2f" % fine



func _on_btn_clr_pressed() -> void:
	$OutMoney.text = "$ "



func _on_btn_ext_pressed() -> void:
	get_tree().quit()
