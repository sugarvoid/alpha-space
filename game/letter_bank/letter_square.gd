class_name LetterSquare
extends Node2D

@onready var lbl_letter: Label = get_node("Label")

const DEFAULT_COLOR: Color = Color.WHITE_SMOKE
const HOVER_COLOR: Color = Color.GOLD

var letter: String

func _ready() -> void:
	self.lbl_letter.text = self.letter.to_upper()

func change_font_color(color: Color) -> void:
	self.lbl_letter.set("theme_override_colors/font_color", color)

func set_letter_value(l: String) -> void:
	self.letter = l
