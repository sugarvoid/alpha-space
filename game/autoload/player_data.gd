extends Node


var completed_daily_run: bool 
var _time_taken: float 
var time_string: String
var word_list: Array[WordObject]
var score_list: Array[int]
var bank_size: int


func _ready() -> void:
	pass # Replace with function body.


func set_time(time: float) -> void:
	self._time_taken = time


func get_time() -> float:
	return self._time_taken


func add_word_to_list(word: String, score: int) -> void:
	word_list


func add_score_to_list(score: int) -> void:
	score_list.append(score)
