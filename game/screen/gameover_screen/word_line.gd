class_name WordLine
extends HBoxContainer

@onready var lbl_word: Label = get_node("lbl_word")
@onready var lbl_score: Label = get_node("lbl_score")

var word: String
var score: int


func set_up_line(word: String, score: int) -> void:
	self.word = word
	self.score = score


func _ready():
	self.lbl_score.text = str(self.score)
	self.lbl_word.text = self.word


func _process(delta):
	pass
