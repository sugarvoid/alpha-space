extends Node


var seed_name: String


func set_seed(s: String) -> void:
	seed_name = s
	_make_seed()
	
func _make_seed() -> void:
	var seed_to_use : int
	
	if seed_name:
		seed_to_use = hash(seed_name)
	else:
		seed_to_use = randi()
	
	seed(seed_to_use)
	print(seed_to_use, " is the seed being used")
