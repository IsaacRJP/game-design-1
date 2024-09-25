extends Control

func sayHi():
	print("Hello, world!")

func getArea(Length, Width):
	var Area = Length * Width
	return Area #Send Value back out of function

func getPerim(Length: int, Width: int):
	return 2 * Length + 2 * Width

func _on_btn_calc_pressed() -> void:
	sayHi()
	var l = int($txtLength.text)
	var w = int($txtWidth.text)
	var a = getArea(l, w)
	var p = getPerim(l, w)
	$Output.text = "Area: %d\nPerimeter: %d" % [a, p]
