class_name LetterBank
extends Node2D

@onready var slots: Node2D = get_node("Slots")

var letter_spawn_positions: Array[Vector2]
var player_bank_size: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _resize_arrays() -> void:
	self.current_meteors.resize(9)

func _add_pos_to_inner_array() -> void:
	var i = 0
	for pos in self.inner_node.get_children():
		self.inner_positions[i] = pos.global_position
		i += 1
