class_name LetterBank
extends Node2D

signal on_valid_store

@onready var slot_0 : BankSlot = get_node("Slots/BankSlot0")
@onready var slot_1 : BankSlot = get_node("Slots/BankSlot1")
@onready var slot_2 : BankSlot = get_node("Slots/BankSlot2")

const p_Letter_Square = preload("res://game/letter_bank/letter_square.tscn")

var player_bank_size: int = 3
var banked_letters: Array[String]


#
#func add_letter_to_bank(letter: String) -> void:
#	for slot in $Slots.get_children():
#		if slot.is_open:
#			slot.add_letter(letter)
#			emit_signal("on_valid_store", letter)
#			return
			



