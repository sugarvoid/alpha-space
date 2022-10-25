class_name HUD
extends CanvasLayer

@onready var lbl_running_word: Label = get_node("lbl_running_word")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lbl_running_word.text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_word_label(word: String) -> void:
	print('in hud word fuc')
	lbl_running_word.text = word
