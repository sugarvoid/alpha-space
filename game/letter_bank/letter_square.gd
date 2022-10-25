class_name LetterSquare
extends Node2D


#TODO: CHANGE TO RIGHT SHADE OF WHITE
const DEFAULT_COLOR: Color = Color.WHITE_SMOKE
const HOVER_COLOR: Color = Color.GOLD

@onready var lbl_letter: Label = get_node("Label")
@onready var a2d: Area2D = get_node("Area2D")

var letter: String = "f"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.lbl_letter.text = self.letter.to_upper()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _change_font_color(color: Color) -> void:
	#self.lbl_letter.font_color = Color.REBECCA_PURPLE
	self.lbl_letter.set("theme_override_colors/font_color", color)

func set_letter_value(letter: String) -> void:
	self.letter = letter

func _on_area_2d_mouse_entered() -> void:
	self._change_font_color(HOVER_COLOR)


func _on_area_2d_mouse_exited() -> void:
	self._change_font_color(DEFAULT_COLOR)


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print(event)
		if event.button_index == 1:
			print(self.letter)
		else:
				## print("Left button was released")
				pass
