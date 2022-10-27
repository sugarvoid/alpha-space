class_name BankSlot
extends Node2D

signal on_letter_used

const DEFAULT_COLOR: Color = Color.WHITE_SMOKE
const HOVER_COLOR: Color = Color.GOLD

@onready var letter_holder: Node = get_node("LetterHolder")

const p_Letter_Square = preload("res://game/letter_bank/letter_square.tscn")

var is_open: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_letter(letter: String) -> void:
	print(str('ADDING Letter:', letter))
	var new_letter: LetterSquare = p_Letter_Square.instantiate()
	new_letter.set_letter_value(letter)
	new_letter.global_position = self.global_position
	self.letter_holder.add_child(new_letter)
	self.is_open = false

func remove_letter() -> void:
	var letter_square: LetterSquare = self.letter_holder.get_child(0)
	self.emit_signal("on_letter_used", letter_square.letter)
	letter_square.queue_free()
	self.is_open = true

func is_housing_letter_square() -> bool:
	return self.letter_holder.get_child_count() == 1

func _highlight_child() -> void:
	if is_housing_letter_square():
		self.letter_holder.get_child(0).change_font_color(HOVER_COLOR)
		
func _unhighlight_child() -> void:
	if is_housing_letter_square():
		self.letter_holder.get_child(0).change_font_color(DEFAULT_COLOR)

func _on_click_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == 1 && is_housing_letter_square():
			print(self.letter_holder.get_child(0).letter)
			self.remove_letter()
		else:
				## print("Left button was released")
				pass

func _on_click_area_mouse_entered():
	_highlight_child()


func _on_click_area_mouse_exited():
	_unhighlight_child()
