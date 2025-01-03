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

func _init(default_value: int = 1):
	value = default_value

func _process(delta: float) -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		if $Area2D.overlaps_body(player):
			interact(player)
