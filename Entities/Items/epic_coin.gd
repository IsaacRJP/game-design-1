extends BaseItem

func _init(): super._init(10000) # 1 coin = 5 units of money

func interact(player):
	player.pickup_money(value)
	remove()
