extends Node2D

func _process(delta: float) -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		if $Area2D.overlaps_body(player):
			OS.alert("YOU WILL NEED MULTIPLE KEYS FOR THIS DOOR!")
			queue_free()
