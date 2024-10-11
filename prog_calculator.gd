extends Control

func MyAdd(num1,num2):
	return num1 + num2
func MySub(num1,num2):
	return num1-num2
func MyMul(num1,num2):
	return num1*num2
func MyDiv(num1,num2):
	return num1/num2
func MyMod(num1,num2):
	return num1%num2
func MyPow(num1,num2):
	return num1**num2

var result = 0

func _on_btn_add_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MyAdd(n1,n2)
func _on_btn_mul_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MyMul(n1,n2)
func _on_btn_sub_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MySub(n1,n2)
func _on_btn_div_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MyDiv(n1,n2)
func _on_btn_mod_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MyMod(n1,n2)
func _on_btn_pow_pressed() -> void:
	var n1 = int($txtNum1.text)
	var n2 = int($txtNum2.text)
	result = MyPow(n1,n2)

func _on_btn_calc_pressed() -> void:
	$lblOut.text = str(result)

func _on_btn_clear_pressed() -> void:
	$lblOut.text = "()"
	$txtNum1.text = ""
	$txtNum2.text = ""

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
