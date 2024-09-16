extends Control



func _on_btn_calc_pressed() -> void:
	var KwUsed = int($txtKw.text)
	var Base = KwUsed * 4.75
	var Surcharge = Base + (Base * 0.1)
	var Tax = Base * 0.10
	var Total = Base + Surcharge + Tax
	var LateTotal = (Total * 0.04) + Total

	$lblReciept.text = "Base Amount: " + str(Base) + \
				  "\nSurcharge: " + str(Surcharge) + \
				  "\nTax: " + str(Tax) + \
				  "\n " + \
				  "\nTotal: " + str(Total) + \
				  "\nTotal After May 20th: " + str(LateTotal)
				




func _on_btn_clear_pressed() -> void:
		$txtKw.text = ""
		$lblReciept.text = ""
