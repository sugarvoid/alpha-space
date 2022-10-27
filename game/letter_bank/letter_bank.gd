class_name LetterBank
extends Node2D

@onready var slot_0 : BankSlot = get_node("Slots/BankSlot0")
@onready var slot_1 : BankSlot = get_node("Slots/BankSlot1")
@onready var slot_2 : BankSlot = get_node("Slots/BankSlot2")

const p_Letter_Square = preload("res://game/letter_bank/letter_square.tscn")

var player_bank_size: int = 3
var banked_letters: Array[String]


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _add_pos_to_spwan_point_array() -> void:
	var i = 0
	for pos in self.slots.get_children():
		self.letter_spawn_positions[i] = pos.global_position
		i += 1


func add_letter_to_bank(letter: String) -> void:
	for slot in $Slots.get_children():
		
		if slot.is_open:
			print("HEELOOOOOO!!!")
			slot.add_letter(letter)
			return


func _remove_pos_nodes() -> void:
	# Once the vectors have been put in the array, the nodes are no longer needed 
	self.slots.queue_free()
