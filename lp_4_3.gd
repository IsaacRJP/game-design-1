extends Control



func _on_btn_calc_pressed() -> void:
	var eggs = int($txtEggs.text)
	var dozens = floor(eggs / 12)
	var remainder = eggs % 12
	var dozenprice = 0
	if dozens > 0 and dozens <= 3:
		dozenprice = 0.50
	elif dozens > 3 and dozens <= 5:
		dozenprice = 0.45
	elif dozens > 5 and dozens <= 10:
		dozenprice = 0.40
	elif dozens > 10 :
		dozenprice = 0.35
	elif dozens <= 0 :
		dozenprice = 0
	else:
		$lblOut.text = "Invalid # of Eggs"
		return
	var extraprice = (dozenprice/12) * remainder 
	var price = (dozenprice * dozens) + extraprice
	
	$lblOut.text = "Price: " + str(price)

func _on_btn_clear_pressed() -> void:
	$lblOut.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
