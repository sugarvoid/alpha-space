class_name HUD
extends CanvasLayer

@onready var lbl_running_word: Label = get_node("lbl_RunningWord")
@onready var lbl_distance_left: Label = get_node("Distance/lbl_DistanceLeft")



func _ready() -> void:
	lbl_running_word.text = ""


func _process(delta: float) -> void:
	pass


func update_word_label(word: String) -> void:
	print('in hud word fuc')
	lbl_running_word.text = word


func update_distance_letf_label(number: int) -> void:
	lbl_distance_left.text = str(number)
