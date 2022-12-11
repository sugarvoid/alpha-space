class_name LetterMaker
extends RefCounted

var letters: Array = []

func add_letter_to_list(l:String, amount: int) -> void:
	for i in range(amount):
		letters.append(l)

func get_letters(amount: int) -> Array:
	self.letters.shuffle()
	var output: Array
	for _n in range(amount):
		output.append(letters.pop_back())
	return output
	
func set_up() -> void:
	set_up_letter_array()

func set_up_letter_array() -> void:
	# vowels 
	add_letter_to_list('a', 15)
	add_letter_to_list('e', 15)
	add_letter_to_list('i', 15)
	add_letter_to_list('o', 15)
	add_letter_to_list('u', 15)
	add_letter_to_list('y', 10)


	add_letter_to_list('b', 7)
	add_letter_to_list('c', 10)
	add_letter_to_list('d', 10)
	add_letter_to_list('f', 10)
	add_letter_to_list('g', 10)
	add_letter_to_list('h', 10)
	add_letter_to_list('j', 8)
	add_letter_to_list('k', 8)
	add_letter_to_list('l', 10)
	add_letter_to_list('m', 10)
	add_letter_to_list('n', 10)
	add_letter_to_list('p', 10)
	add_letter_to_list('r', 10)
	add_letter_to_list('s', 10)
	add_letter_to_list('t', 10)
	add_letter_to_list('w', 8)

	# Others
	add_letter_to_list('z', 4)
	add_letter_to_list('v', 6)
	add_letter_to_list('x', 6)
	add_letter_to_list('q', 6)


