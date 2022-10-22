class_name WordManager
extends Node

@onready var word_display: Label = get_node("WordDisplay")

const LETTERS: Array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

var typed_word: Array
var running_word: String
var running_score: int

var test_var = "test string"

func _ready() -> void:
	add_letter("d")
	add_letter("o")
	add_letter("n")
	add_letter("k")
	add_letter("e")
	add_letter("y")
	
	self._update_word_label()
	

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
	# add points based on letter
	typed_word.append(letter)
	
	self._update_running_word()
	self._update_word_label()
	

func _update_word_label() -> void:
	self.word_display.text = self.running_word
	
func _update_running_word() -> void:
	self.running_word = ""
	for letter in self.typed_word:
		
		self.running_word += letter


func check_if_word_is_vaild(word: String) -> bool:
	# Check if word is in vaild_word array
	return true

func _reset() -> void:
	self.running_score = 0
	self.typed_word.clear()
	self.word_to_display = ""
	self._update_word_label()
