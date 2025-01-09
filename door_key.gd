extends Node2D

var value 
var bounce = true
var KeyObtained = false

func remove():
	value = 0
	queue_free()

@warning_ignore("unused_parameter")
func interact(player):
	KeyObtained = true
	print("Key has been picked up by a player.")
	remove()

func _process(delta: float) -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		if $Key.overlaps_body(player):
			interact(player)
		if $DoorAlert.overlaps_body(player):
			OS.alert("YOU NEED A KEY TO OPEN THIS DOOR!")
	if KeyObtained == true:
		pass
