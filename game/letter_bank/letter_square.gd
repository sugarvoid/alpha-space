class_name LetterSquare
extends Node2D


#TODO: CHANGE TO RIGHT SHADE OF WHITE
const DEFAULT_COLOR: Color = Color.WHITE_SMOKE
const HOVER_COLOR: Color = Color.GOLD

@onready var lbl_letter: Label = get_node("Label")


var letter: String = "f"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.lbl_letter.text = self.letter.to_upper()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func change_font_color(color: Color) -> void:
	#self.lbl_letter.font_color = Color.REBECCA_PURPLE
	self.lbl_letter.set("theme_override_colors/font_color", color)

func set_letter_value(letter: String) -> void:
	self.letter = letter


