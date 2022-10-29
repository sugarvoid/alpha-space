extends Node


var completed_daily_run: bool 
var _time_taken: float 
var time_string: String
var word_list: Array[WordObject]
var score_list: Array[int]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_time(time: float):
	self._time_taken = time

func get_time():
	return self._time_taken

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_word_to_list(word: String, score: int) -> void:
	word_list

func add_score_to_list(score: int) -> void:
	score_list.append(score)
