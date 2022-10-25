class_name LetterBank
extends Node2D


@onready var slots: Node2D = get_node("Slots")


const p_Letter_Square = preload("res://game/letter_bank/letter_square.tscn")
const MAX_SLOTS: int = 8
var letter_spawn_positions: Array[Vector2]
var player_bank_size: int = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self._resize_arrays()
	self._add_pos_to_spwan_point_array()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _resize_arrays() -> void:
	self.letter_spawn_positions.resize(MAX_SLOTS)

func _add_pos_to_spwan_point_array() -> void:
	var i = 0
	for pos in self.slots.get_children():
		self.letter_spawn_positions[i] = pos.global_position
		i += 1

func add_letter_to_bank(letter: String) -> void:
	var new_letter: LetterSquare = p_Letter_Square.instantiate()
	new_letter.set_letter_value(letter)
	new_letter.global_position = letter_spawn_positions[0]
	self.add_child(new_letter)

func _remove_pos_nodes() -> void:
	# Once the vectors have been put in the array, the nodes are no longer needed 
	self.slots.queue_free()
