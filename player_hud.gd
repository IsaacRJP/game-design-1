extends CanvasLayer

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hearts = $PlayerHealth/Hearts

const HEART_ROW_SIZE = 10
const HEART_OFFSET = 16

func create_heart():
	var n_heart = Sprite2D.new()
	n_heart.texture = hearts.texture
	n_heart.hframes = hearts.hframes
	n_heart.vframes = hearts.vframes
	n_heart.frame = 8
	hearts.add_child(n_heart)
	
func draw_hearts():
	for heart in hearts.get_children():
		hearts.remove_child(heart)
	@warning_ignore("integer_division")
	for i in range(int(player.data.max_health) / 20):
		create_heart() # 1 heart per 20hp
	return


func _ready() -> void:
	draw_hearts()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var p_health = player.data.health
	var p_money = player.data.money
	var full_hearts = floor(p_health / 20)
	var remainder = int(p_health) % 20
	
	for heart in hearts.get_children():
		var index = heart.get_index()
		var x = (index % HEART_ROW_SIZE) * HEART_OFFSET
		var y = (index / HEART_ROW_SIZE) * HEART_OFFSET
		heart.position = Vector2(x, y)
		# Frame 8 empty, 7 1/4, 6 for 1/2, 5 for 3/4, 4 full
		if index > full_hearts:
			heart.frame = 8 # Empty
		elif index == full_hearts:
			heart.frame = 8 - int(remainder / 5) # 1/2, 1/4, and 3/4 Hearts
		elif index < full_hearts:
				heart.frame = 4 # full
				
		$Money/Coins.text = str(p_money)
	pass
		
