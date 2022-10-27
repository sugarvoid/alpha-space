class_name WordManager
extends Object

signal on_running_word_update
signal word_is_valid
signal word_is_not_valid


const LETTERS: Array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

var letter_bank: Array[LetterSquare]

var typed_word: Array[String]
var running_word: String
var _running_score: int
var VALID_WORDS: Array[String]


func get_running_score() -> int:
	return self._running_score


func load_words_from_file() -> void:
	var path = "res://game/manager/fixed_words.txt"
	if FileAccess.file_exists(path):
		var file = FileAccess.open(path, FileAccess.READ)
		while not file.eof_reached():
			var line = file.get_line()
			VALID_WORDS.append(line)


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
	# Rename to add_letter_to_running_word
	# add points based on letter
	self._running_score += self.get_letter_vaule(letter)
	self.typed_word.append(letter)
	
	self._update_running_word()
	
	# Let hud know to update word label
	self.emit_signal("on_running_word_update", self.running_word)


func _update_running_word() -> void:
	self.running_word = ""
	for letter in self.typed_word:
		self.running_word += letter


func check_if_word_is_vaild() -> bool:
	return self.VALID_WORDS.has(self.running_word)


func reset_values() -> void:
	self._running_score = 0
	self.typed_word.clear()
	self.running_word = ""
	self.emit_signal("on_running_word_update", self.running_word)
