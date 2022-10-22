class_name WordManager
extends Node

@onready var word_display: Label = get_node("WordDisplay")

const LETTERS: Array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

var typed_word: Array

var test_var = "test string"

func get_letter_vaule(letter: String) -> int:
	match letter:
		'a','e','i','l','n','o','r','s','t','u':
			return 1
		'd','g':
			return 2
		'b','c','m','p':
			return 3
		'f','h','v','w','y':
			return 4
		'k':
			return 5
		'j','x':
			return 8
		_:
			return -99

func add_letter(letter: String) -> void:
	pass

func _update_word_label() -> void:
	pass
	
func _letter_array_to_string() -> String:
	return "filter"
