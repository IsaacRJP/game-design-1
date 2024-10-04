extends RigidBody2D

func _on_mouse_entered() -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		queue_free() #deletes self from world
